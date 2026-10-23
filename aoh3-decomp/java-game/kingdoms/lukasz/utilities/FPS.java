package aoc.kingdoms.lukasz.utilities;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class FPS {
    public static final int MIN_NUM_OF_FPS = 22;
    public static boolean drawFPS;
    public int iFPS_Counter = 0;
    public int iNumOfFPS = 60;
    public long lTimeFPS;

    public void countFPS() {
        this.iFPS_Counter++;
        if (CFG.currentTimeMillis > this.lTimeFPS + 1000) {
            this.lTimeFPS = CFG.currentTimeMillis;
            this.iNumOfFPS = this.iFPS_Counter;
            this.iFPS_Counter = 0;
        }
    }

    public final void drawFPS(SpriteBatch spriteBatch) {
        if (drawFPS || Game.menuManager.getInSettingsMenu()) {
            Renderer.drawText(spriteBatch, "" + this.iNumOfFPS, CFG.PADDING, CFG.PADDING, new Color(1.0f, 1.0f, 1.0f, 0.3f));
        }
    }
}
