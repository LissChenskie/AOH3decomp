package aoc.kingdoms.lukasz.animation;

import aoc.kingdoms.lukasz.jakowski.AnimationManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AnimationData_Images {
    protected int ANIMATION_DURATION;
    protected int ANIMATION_FRAME_TIME;
    protected AnimationData_Type animationType;
    private int iNumOfFrames;
    protected List<Image> lAnimation = new ArrayList();

    public AnimationData_Images(String str, int i, AnimationData_Type animationData_Type, int i2, int i3) {
        this.iNumOfFrames = 0;
        this.ANIMATION_DURATION = 0;
        this.ANIMATION_FRAME_TIME = 0;
        for (int i4 = 0; i4 < i; i4++) {
            this.lAnimation.add(ImageManager.loadImage(str.replaceAll(AnimationManager.IMAGE_REPLACE, "" + i4), Texture.TextureFilter.Nearest));
        }
        this.iNumOfFrames = this.lAnimation.size();
        this.animationType = animationData_Type;
        this.ANIMATION_DURATION = i2;
        this.ANIMATION_FRAME_TIME = i3;
    }

    public final void drawFrame(SpriteBatch spriteBatch, int i, int i2, int i3) {
        this.lAnimation.get(i3).draw(spriteBatch, (Game.mapCoords.getPosX() + i) - (this.lAnimation.get(i3).getWidth() / 2), (Game.mapCoords.getPosY() + i2) - (this.lAnimation.get(i3).getHeight() / 2));
    }

    public final int getNumOfFrames() {
        return this.iNumOfFrames;
    }
}
