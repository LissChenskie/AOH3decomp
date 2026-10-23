package aoc.kingdoms.lukasz.map.province.animation;

import aoc.kingdoms.lukasz.jakowski.CFG;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceAnimation {
    public int iColorStepID;
    public final int START_PROVINCE_ALPHA = 30;
    public final int START_PROVINCE_BORDER_ALPHA = 255;
    public final int TIME_UPDATE = 45;
    public long lTime = 0;
    public float fAlpha = 30.0f;
    public int iStepID = 0;
    public boolean backAnimation = false;
    public long lTimeBorder = 0;
    public int iStepIDBorder = 0;
    public int iBorderAlpha = 255;
    public boolean backAnimationBorder = false;

    public final float getAlpha() {
        return this.fAlpha;
    }

    public final boolean getBackAnimation() {
        return this.backAnimation;
    }

    public final int getBorderAlpha() {
        return this.iBorderAlpha;
    }

    public final int getColorStepID() {
        return this.iColorStepID;
    }

    public final int getStepID() {
        return this.iStepID;
    }

    public final void resetAnimationData() {
        this.lTime = 0L;
        this.fAlpha = 30.0f;
        this.iStepID = 0;
        this.backAnimation = false;
        this.iColorStepID = 0;
        this.lTimeBorder = CFG.currentTimeMillis + 200;
        this.iStepIDBorder = 0;
        this.iBorderAlpha = 255;
        this.backAnimationBorder = false;
    }

    public final void update() {
        if (this.lTime < CFG.currentTimeMillis - 45) {
            this.iStepID++;
            if (this.backAnimation) {
                this.fAlpha += 1.25f;
                this.iBorderAlpha += 6;
                this.iColorStepID--;
            } else {
                this.fAlpha -= 1.25f;
                this.iBorderAlpha -= 6;
                this.iColorStepID++;
            }
            long j = CFG.currentTimeMillis;
            this.lTime = j;
            if (this.iStepID == 20) {
                boolean z = this.backAnimation;
                if (z) {
                    this.fAlpha = 30.0f;
                    this.iBorderAlpha = 255;
                }
                this.iStepID = 0;
                boolean z2 = !z;
                this.backAnimation = z2;
                this.backAnimationBorder = !this.backAnimationBorder;
                this.lTime = j + (z2 ? 450L : 600L);
            }
        }
    }
}
