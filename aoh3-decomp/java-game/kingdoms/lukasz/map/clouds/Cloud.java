package aoc.kingdoms.lukasz.map.clouds;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Cloud {
    public float fAlpha;
    public float fFinalAlpha;
    public float fScale;
    public int iCloudImageID;
    public float iPosX;
    public int iPosX_SecondSideOfMap;
    public float iPosY;
    public int iRotate;
    public int iShadowX;
    public int iShadowY;
    public boolean isInView;
    private long lTime;
    private boolean animationStart = true;
    public int iMax_WidthHeight = 0;
    public int iHeight_RemoveCloud = 0;

    public Cloud(int i, int i2, int i3, float f, int i4) {
        init(i, i2, i3, f, i4);
    }

    public final boolean inViewX() {
        if (Game.inViewX_CordsX_Width + this.iMax_WidthHeight >= this.iPosX) {
            int i = Game.inViewX_CordsX;
            int i2 = this.iMax_WidthHeight;
            if (i - i2 <= this.iPosX + i2) {
                return true;
            }
        }
        return false;
    }

    public final boolean inViewX2() {
        return ((float) (Game.inViewX_CordsX_Width + this.iMax_WidthHeight)) >= this.iPosX + ((float) Game.mapBG.getWidth()) && ((float) (Game.inViewX_CordsX - this.iMax_WidthHeight)) <= (this.iPosX + ((float) Game.mapBG.getWidth())) + ((float) this.iMax_WidthHeight);
    }

    public final boolean inViewY() {
        if (Game.inViewY_CordsY_Height + this.iMax_WidthHeight >= this.iPosY) {
            int i = Game.inViewY_CordsY;
            int i2 = this.iMax_WidthHeight;
            if (i - i2 <= this.iPosY + i2) {
                return true;
            }
        }
        return false;
    }

    public final void init(int i, int i2, int i3, float f, int i4) {
        this.iCloudImageID = i;
        this.iRotate = i4;
        this.iPosX = i2;
        this.iPosY = i3;
        this.fScale = f;
        this.fFinalAlpha = Game.cloudsAnimation.cloudsSettings.minAlpha + (Game.oR.nextInt(Math.max(1, (int) (Game.cloudsAnimation.cloudsSettings.randomAlpha * 1000.0f))) / 1000.0f);
        this.fAlpha = 0.0f;
        this.iShadowX = (int) (Game.cloudsAnimation.cloudsSettings.shadowX * Math.max(1.0f, f));
        this.iShadowY = (int) (Game.cloudsAnimation.cloudsSettings.shadowY * Math.max(1.0f, f));
        this.lTime = CFG.currentTimeMillis;
        this.iMax_WidthHeight = (int) (Game.cloudsAnimation.imageCloudMaxDimension.get(i).intValue() * f);
        this.iHeight_RemoveCloud = (int) ((-Game.cloudsAnimation.imageCloud.get(i).getHeight()) * f);
    }

    public final boolean removeCloud() {
        return this.iPosY < ((float) this.iHeight_RemoveCloud);
    }

    public final void update() {
        this.iPosX += Game.cloudsAnimation.cloudsSettings.moveSpeedX;
        this.iPosY -= Game.cloudsAnimation.cloudsSettings.moveSpeedY;
        if (this.iPosX + (Game.cloudsAnimation.imageCloud.get(this.iCloudImageID).getWidth() * this.fScale) > Game.mapBG.getWidth()) {
            this.iPosX -= Game.mapBG.getWidth();
        }
        if (this.animationStart) {
            this.fAlpha = Math.min(this.fFinalAlpha * ((CFG.currentTimeMillis - this.lTime) / Game.cloudsAnimation.cloudsSettings.spawnAnimationTime), this.fFinalAlpha);
            if (CFG.currentTimeMillis - this.lTime > Game.cloudsAnimation.cloudsSettings.spawnAnimationTime) {
                this.animationStart = false;
                this.fAlpha = this.fFinalAlpha;
            }
        }
    }

    public final void updateIsInView() {
        if (inViewY()) {
            if (inViewX()) {
                this.isInView = true;
                this.iPosX_SecondSideOfMap = 0;
                return;
            } else if (Game.mapCoords.getSecondSideOfMap() && inViewX2()) {
                this.isInView = true;
                this.iPosX_SecondSideOfMap = Game.mapBG.getWidth();
                return;
            }
        }
        this.isInView = false;
    }
}
