package aoc.kingdoms.lukasz.jakowski;

import aoc.kingdoms.lukasz.animation.AnimationData_Images;
import aoc.kingdoms.lukasz.animation.AnimationOnce_Images;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class AnimationManager {
    public static final String IMAGE_REPLACE = "%03u";
    public AnimationData_Images animationMove;
    private List<AnimationOnce_Images> animationOnceImages = new ArrayList();
    private int animationOnceImagesSize = 0;
    public List<ClickAnimation> clickAnimations = new ArrayList();
    public int clickAnimationDuration = 425;

    public class ClickAnimation {
        public int clickPosX;
        public int clickPosY;
        public long clickTime;

        public ClickAnimation(int i, int i2) {
            this.clickTime = 0L;
            this.clickPosX = 0;
            this.clickPosY = 0;
            this.clickTime = CFG.currentTimeMillis;
            this.clickPosX = (Game.mapCoords.getPosX() - ((int) (i / Game.mapScale.getCurrentScale()))) + (ImageManager.getImage(Images.click).getWidth() / 2);
            this.clickPosY = (Game.mapCoords.getPosY() - ((int) (i2 / Game.mapScale.getCurrentScale()))) + (ImageManager.getImage(Images.click).getHeight() / 2);
        }
    }

    public final void addAnimationOnce(AnimationOnce_Images animationOnce_Images) {
        this.animationOnceImages.add(animationOnce_Images);
        this.animationOnceImagesSize = this.animationOnceImages.size();
    }

    public void clickAnimation(int i, int i2) {
        this.clickAnimations.add(new ClickAnimation(i, i2));
    }

    public final void draw(SpriteBatch spriteBatch) {
        for (int i = 0; i < this.animationOnceImagesSize; i++) {
            this.animationOnceImages.get(i).draw(spriteBatch);
        }
    }

    public final void drawScaled(SpriteBatch spriteBatch) {
        for (int size = this.clickAnimations.size() - 1; size >= 0; size--) {
            if (CFG.currentTimeMillis < this.clickAnimations.get(size).clickTime + ((long) this.clickAnimationDuration)) {
                spriteBatch.setColor(new Color(Colors.HOVER_GOLD.r, Colors.HOVER_GOLD.g, Colors.HOVER_GOLD.b, (1.0f - ((CFG.currentTimeMillis - this.clickAnimations.get(size).clickTime) / this.clickAnimationDuration)) * 0.5f));
                ImageManager.getImage(Images.click).draw(spriteBatch, (int) ((Game.mapCoords.getPosX() - this.clickAnimations.get(size).clickPosX) * Game.mapScale.getCurrentScale()), (int) ((Game.mapCoords.getPosY() - this.clickAnimations.get(size).clickPosY) * Game.mapScale.getCurrentScale()));
                spriteBatch.setColor(Color.WHITE);
            } else {
                this.clickAnimations.remove(size);
            }
        }
    }

    protected final void loadAnimations() {
    }

    public final void update() {
        for (int size = this.animationOnceImages.size() - 1; size >= 0; size--) {
            this.animationOnceImages.get(size).update();
            if (this.animationOnceImages.get(size).getAnimationFinished()) {
                this.animationOnceImages.remove(size);
            }
        }
        this.animationOnceImagesSize = this.animationOnceImages.size();
    }
}
