package aoc.kingdoms.lukasz.jakowski.FBO;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.glutils.FrameBuffer;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class FBOProvincesBG {
    public static int fboNumToGenerate_PB = 0;
    public static int fboPosX = -1;
    public static int fboPosY = -1;
    public static FrameBuffer fboProvince_PBG = null;
    public static int lastPosX = -1;
    public static int lastPosY = -1;
    public static Texture textureProvince_PBG;

    public static final void disposeProvincesFBO() {
        FrameBuffer frameBuffer = fboProvince_PBG;
        if (frameBuffer != null) {
            frameBuffer.dispose();
            fboProvince_PBG = null;
        }
    }

    public static final void disposeProvincesTexture() {
        Texture texture = textureProvince_PBG;
        if (texture != null) {
            texture.dispose();
            textureProvince_PBG = null;
        }
    }

    public static final void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6, float f, float f2, float f3, int i7, int i8, int i9, int i10, boolean z, boolean z2) {
        spriteBatch.draw(textureProvince_PBG, i, (-i2) - CFG.GAME_HEIGHT, i3, i4, i5, i6, f, f2, f3, i7, i8, i9, i10, z, z2);
    }

    public static final void drawPBG(SpriteBatch spriteBatch, float f) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        draw(spriteBatch, 0, 0, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, 1.0f, 1.0f, 0.0f, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, false, true);
        spriteBatch.setColor(Color.WHITE);
    }

    public static final void redrawnProvinces() {
        lastPosX = -9194519;
    }

    public static final void updateFBO() {
        if (lastPosX == Game.mapCoords.getPosX() && lastPosY == Game.mapCoords.getPosY()) {
            fboNumToGenerate_PB++;
            return;
        }
        lastPosX = Game.mapCoords.getPosX();
        lastPosY = Game.mapCoords.getPosY();
        fboNumToGenerate_PB = 0;
    }
}
