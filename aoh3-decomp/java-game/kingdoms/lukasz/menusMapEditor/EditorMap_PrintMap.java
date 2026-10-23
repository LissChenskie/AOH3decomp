package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.textures.Image;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.utils.ScissorStack;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMap_PrintMap extends Menu {
    public static View goBack = View.EDITOR_MAPS_EDIT;
    public static float scale;
    public boolean error;
    public int iMapPosX;
    public int iMapPosY;
    public Pixmap pixBIG;
    public int id = 0;
    public int prepare = 0;

    public EditorMap_PrintMap() {
        this.iMapPosX = 0;
        this.iMapPosY = 0;
        this.error = false;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Empty(1, 1, 1, 1));
        this.iMapPosX = 0;
        this.iMapPosY = 0;
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
        try {
            this.pixBIG = new Pixmap((int) (Game.mapBG.getWidth() / scale), (int) (Game.mapBG.getHeight() / scale), Pixmap.Format.RGBA8888);
        } catch (Exception e) {
            this.error = true;
            CFG.exceptionStack(e);
            Game.menuManager.addToast_Error("MAP SIZE TOO BIG");
        }
        Game.mapScale.setCurrentScale(1.0f / scale);
        Game.mapCoords.setNewPosX(this.iMapPosX);
        Game.mapCoords.setNewPosY(this.iMapPosY);
    }

    public static Pixmap flipPixmap(Pixmap pixmap) {
        int width = pixmap.getWidth();
        int height = pixmap.getHeight();
        Pixmap pixmap2 = new Pixmap(width, height, pixmap.getFormat());
        for (int i = 0; i < width; i++) {
            for (int i2 = 0; i2 < height; i2++) {
                pixmap2.drawPixel(i, i2, pixmap.getPixel(i, (height - i2) - 1));
            }
        }
        return pixmap2;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = this.prepare;
        this.prepare = i3 + 1;
        if (i3 < 13) {
            return;
        }
        if (this.error) {
            Game.menuManager.setViewIDWithoutAnimation(goBack);
            return;
        }
        saveScenarioMinimapPreviewTexture(spriteBatch);
        int i4 = (int) (this.iMapPosX - (CFG.GAME_WIDTH * scale));
        this.iMapPosX = i4;
        if ((-i4) >= Game.mapBG.getWidth()) {
            this.iMapPosX = 0;
            int i5 = (int) (this.iMapPosY - (CFG.GAME_HEIGHT * scale));
            this.iMapPosY = i5;
            if ((-i5) >= Game.mapBG.getHeight()) {
                try {
                    Image image = new Image(new Texture(this.pixBIG));
                    PixmapIO.writePNG(FileManager.getSaveType("PRINTED_MAP/out" + (Game.oR.nextInt(1000) + 1000) + ".png"), image.getTexture().getTextureData().consumePixmap());
                    image.dispose();
                    this.pixBIG.dispose();
                    this.pixBIG = null;
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                    Game.menuManager.addToast_Error("ERROR");
                }
                Game.menuManager.addToast(Game.lang.get("Saved"));
                Game.menuManager.setViewIDWithoutAnimation(goBack);
            }
        }
        Game.mapCoords.setNewPosX(this.iMapPosX);
        Game.mapCoords.setNewPosY(this.iMapPosY);
    }

    public void drawPixmapBIG(Pixmap pixmap) {
        int width = pixmap.getWidth();
        int height = pixmap.getHeight();
        for (int i = 0; i < width; i++) {
            try {
                if (i + Math.abs(this.iMapPosX / scale) >= Game.mapBG.getWidth() / scale) {
                    return;
                }
                for (int i2 = 0; i2 < height && i2 + Math.abs(this.iMapPosY / scale) < Game.mapBG.getHeight() / scale; i2++) {
                    Color color = new Color(pixmap.getPixel(i, (height - i2) - 1));
                    this.pixBIG.drawPixel(((int) Math.abs(this.iMapPosX / scale)) + i, ((int) Math.abs(this.iMapPosY / scale)) + i2, new Color(1.0f, color.b, color.g, color.r).toIntBits());
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
                return;
            }
        }
    }

    protected final void saveScenarioMinimapPreviewTexture(SpriteBatch spriteBatch) {
        try {
            spriteBatch.flush();
            ScissorStack.popScissors();
        } catch (IllegalStateException unused) {
        }
        drawPixmapBIG(Pixmap.createFromFrameBuffer(0, CFG.GAME_HEIGHT - CFG.GAME_HEIGHT, CFG.GAME_WIDTH, CFG.GAME_HEIGHT));
    }
}
