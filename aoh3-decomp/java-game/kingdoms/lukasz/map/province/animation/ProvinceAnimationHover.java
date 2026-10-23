package aoc.kingdoms.lukasz.map.province.animation;

import aoc.kingdoms.lukasz.jakowski.CFG;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceAnimationHover {
    public int iColorStepID;
    public final int START_ALPHA = 255;
    public final int TIME_UPDATE = 40;
    public long lTime = 0;
    public float fAlpha = 255.0f;
    public int iStepID = 0;
    public boolean backAnimation = false;

    public final float getAlpha() {
        return this.fAlpha;
    }

    public final boolean getBackAnimation() {
        return this.backAnimation;
    }

    public final int getColorStepID() {
        return this.iColorStepID;
    }

    public final int getStepID() {
        return this.iStepID;
    }

    public final void resetAnimationData() {
        this.lTime = 0L;
        this.fAlpha = 255.0f;
        this.iStepID = 0;
        this.backAnimation = false;
        this.iColorStepID = 0;
    }

    public final void update() {
        if (this.lTime < CFG.currentTimeMillis - 40) {
            this.iStepID++;
            if (this.backAnimation) {
                this.fAlpha += 6.5f;
                this.iColorStepID--;
            } else {
                this.fAlpha -= 6.5f;
                this.iColorStepID++;
            }
            this.lTime = CFG.currentTimeMillis;
            if (this.iStepID == 12) {
                boolean z = this.backAnimation;
                if (z) {
                    this.fAlpha = 255.0f;
                }
                this.iStepID = 0;
                this.backAnimation = !z;
            }
        }
    }
}
