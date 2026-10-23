package aoc.kingdoms.lukasz.jakowski.Renderer;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class SparksAnimation {
    public int currentIMG = 0;
    public long ANIMATION_TIME = 0;

    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        Images.sparks.get(this.currentIMG).draw(spriteBatch, i, i2, i3, i4);
        updateAnimation();
    }

    public void draw(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        Images.sparks.get(this.currentIMG).draw(spriteBatch, i, i2, i3, i4, z, z2);
        updateAnimation();
    }

    public void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4) {
        Images.sparks.get(this.currentIMG).draw2(spriteBatch, i, i2, i3, i4);
        updateAnimation();
    }

    public void draw2(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, boolean z, boolean z2) {
        Images.sparks.get(this.currentIMG).draw2(spriteBatch, i, i2, i3, i4, z, z2);
        updateAnimation();
    }

    public void updateAnimation() {
        if (CFG.currentTimeMillis - this.ANIMATION_TIME > 45) {
            this.ANIMATION_TIME = CFG.currentTimeMillis;
            int i = this.currentIMG + 1;
            this.currentIMG = i;
            if (i >= Images.SPARKS_SIZE) {
                this.currentIMG = 0;
            }
        }
    }
}
