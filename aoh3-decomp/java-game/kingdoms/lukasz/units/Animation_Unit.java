package aoc.kingdoms.lukasz.units;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.ImageRegion;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Animation_Unit {
    public int ANIMATION_FRAME_TIME;
    private ImageRegion animation;
    protected Hitbox hitbox;
    private int iNumOfFrames;

    protected Animation_Unit(String str, int i, int i2, Hitbox hitbox, int i3) {
        this.iNumOfFrames = 0;
        this.ANIMATION_FRAME_TIME = 48;
        ImageRegion imageRegionLoadImageRegion = ImageManager.loadImageRegion(str, i, i2);
        this.animation = imageRegionLoadImageRegion;
        this.iNumOfFrames = imageRegionLoadImageRegion.getHeight() / this.animation.getRegionHeight();
        this.hitbox = hitbox;
        this.ANIMATION_FRAME_TIME = i3;
    }

    public final void drawFrame(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        this.animation.getTextureRegion().setRegion(i3 * this.animation.getRegionWidth(), i4 * this.animation.getRegionHeight(), this.animation.getRegionWidth(), this.animation.getRegionHeight());
        this.animation.drawRegion(spriteBatch, (i + Game.mapCoords.getPosX()) - (this.animation.getRegionWidth() / 2), (i2 + Game.mapCoords.getPosY()) - this.animation.getRegionHeight());
    }

    public final void drawFrameHitboxes(SpriteBatch spriteBatch, int i, int i2) {
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.4f));
        Renderer.drawRect(spriteBatch, ((i + Game.mapCoords.getPosX()) - (this.animation.getRegionWidth() / 2)) + this.hitbox.getPosX(), ((i2 + Game.mapCoords.getPosY()) - this.animation.getRegionHeight()) + this.hitbox.getPosY(), this.hitbox.getWidth(), this.hitbox.getHeight());
        spriteBatch.setColor(Color.WHITE);
    }

    protected int getNumOfFrames() {
        return this.iNumOfFrames;
    }
}
