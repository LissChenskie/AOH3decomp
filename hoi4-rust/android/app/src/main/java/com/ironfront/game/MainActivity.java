package com.ironfront.game;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.WindowManager;

public class MainActivity extends Activity implements SurfaceHolder.Callback {
    static { System.loadLibrary("ironfront"); }

    private native void rust_init(byte[] mapBytes);
    private native void rust_resize(int w, int h);
    private native byte[] rust_get_pixels(); // RGB565 little-endian
    private native void rust_touch(int action, int x, int y);
    private native void rust_zoom(float factor);
    private native void rust_swipe(int dir);
    private native int  rust_back();
    private native int  rust_state();

    private SurfaceView sv;
    private Bitmap bmp;
    private Canvas canvas;
    private volatile boolean running = true;
    private Thread renderThread;
    private float lastDist = 0f;

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        setContentView(sv = new SurfaceView(this));
        sv.getHolder().addCallback(this);

        try {
            byte[] map = loadAsset("world.mapbin");
            if (map == null || map.length == 0) map = new byte[0];
            rust_init(map);
        } catch (Throwable t) { /* без карты приложение всё равно стартует: меню покажет NO MAP */ }

        renderThread = new Thread(new Runnable() { public void run() { loop(); } });
        renderThread.start();
    }

    private byte[] loadAsset(String name) {
        try (java.io.InputStream is = getAssets().open(name);
             java.io.ByteArrayOutputStream os = new java.io.ByteArrayOutputStream()) {
            byte[] buf = new byte[65536]; int n;
            while ((n = is.read(buf)) > 0) os.write(buf, 0, n);
            return os.toByteArray();
        } catch (Exception e) { return null; }
    }

    private void loop() {
        Paint p = new Paint();
        while (running) {
            int w, h;
            synchronized (this) {
                if (sv == null || !sv.isShown()) { sleep(16); continue; }
                w = sv.getWidth(); h = sv.getHeight();
            }
            if (w < 2 || h < 2) { sleep(16); continue; }
            if (bmp == null || bmp.getWidth() != w || bmp.getHeight() != h) {
                bmp = Bitmap.createBitmap(w, h, Bitmap.Config.RGB_565);
                canvas = new Canvas(bmp);
                rust_resize(w, h);
            }
            if (rust_state() == 1) { finish(); return; }
            byte[] px;
            try { px = rust_get_pixels(); } catch (Throwable t) { sleep(500); continue; }
            if (px != null && px.length >= w * h * 2) {
                bmp.setPixels(toArgb(px, w * h), 0, w, 0, 0, w, h);
                Canvas screen = sv.getHolder().lockCanvas();
                if (screen != null) {
                    screen.drawBitmap(bmp, 0, 0, p);
                    sv.getHolder().unlockCanvasAndPost(screen);
                }
            }
            sleep(16);
        }
    }

    private static int[] toArgb(byte[] rgb565, int count) {
        int[] out = new int[count];
        for (int i = 0; i < count; i++) {
            int v = (rgb565[i*2] & 0xFF) | ((rgb565[i*2+1] & 0xFF) << 8);
            int r = (v >> 11) & 0x1F, g = (v >> 5) & 0x3F, b = v & 0x1F;
            out[i] = Color.rgb((r * 255 + 15) / 31, (g * 255 + 31) / 63, (b * 255 + 15) / 31);
        }
        return out;
    }

    private static void sleep(long ms) { try { Thread.sleep(ms); } catch (InterruptedException ignored) {} }

    @Override public void surfaceCreated(SurfaceHolder h) {}
    @Override public void surfaceChanged(SurfaceHolder h, int f, int w, int hh) {}
    @Override public void surfaceDestroyed(SurfaceHolder h) {}

    @Override
    public boolean onTouchEvent(MotionEvent e) {
        int action;
        switch (e.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:  action = 0; break;
            case MotionEvent.ACTION_MOVE:  action = 1; break;
            case MotionEvent.ACTION_UP:    action = 2; break;
            default:                       action = -1; break;
        }
        if (action >= 0) rust_touch(action, (int) e.getX(), (int) e.getY());

        // pinch-zoom
        if (e.getPointerCount() == 2) {
            float dx = e.getX(0) - e.getX(1), dy = e.getY(0) - e.getY(1);
            float dist = (float) Math.hypot(dx, dy);
            if (lastDist > 0) rust_zoom(dist / lastDist);
            lastDist = dist;
        } else lastDist = 0f;

        return true;
    }

    @Override
    public void onBackPressed() {
        if (rust_back() == 0) super.onBackPressed();
    }

    @Override
    protected void onDestroy() {
        running = false;
        try { renderThread.join(); } catch (InterruptedException ignored) {}
        super.onDestroy();
    }
}
