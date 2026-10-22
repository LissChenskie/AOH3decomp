package aoc.kingdoms.lukasz.menu;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ClickAnimation {
    public static final float ANIMATION_DURATION = 400.0f;
    public long animationTime;
    public int clickXYSize;
    public int iHMax;
    public int iWMax;
    public int iX;
    public int iY;
    public float fPerc = 1.0f;
    public List<ClickXY> clickXY = new ArrayList();
    public float extraSpeed = (Game.oR.nextInt(50) / 100.0f) + 1.35f;

    public static class ClickXY {
        public float fX;
        public float fY;
        public float speedX;
        public float speedY;
        public float width = GameValues.clickAnim.CLICK_WIDTH;

        public ClickXY(float f, float f2, float f3, float f4) {
            this.fX = f;
            this.fY = f2;
            this.speedX = f3;
            this.speedY = f4;
            if (GameValues.clickAnim.CLICK_WIDTH_RANDOM >= 2.0f) {
                this.width += Game.oR.nextInt((int) GameValues.clickAnim.CLICK_WIDTH_RANDOM);
            }
        }
    }

    public ClickAnimation(int i, int i2, int i3, int i4) {
        this.animationTime = 0L;
        this.clickXYSize = 0;
        this.iX = i;
        this.iY = i2;
        this.iWMax = i3;
        this.iHMax = i4;
        this.animationTime = CFG.currentTimeMillis;
        for (int length = GameValues.clickAnim.CLICK_ANIM_X.length - 1; length >= 0; length--) {
            this.clickXY.add(new ClickXY(i3 * GameValues.clickAnim.CLICK_ANIM_X[length], i4 * GameValues.clickAnim.CLICK_ANIM_Y[length], GameValues.clickAnim.CLICK_ANIM_SPEED_X[length], GameValues.clickAnim.CLICK_ANIM_SPEED_Y[length]));
        }
        this.clickXYSize = this.clickXY.size();
    }

    public boolean draw(SpriteBatch spriteBatch) {
        boolean z;
        this.fPerc -= (CFG.currentTimeMillis - this.animationTime) / 400.0f;
        this.animationTime = CFG.currentTimeMillis;
        if (this.fPerc <= 0.0f) {
            this.fPerc = 0.0f;
            z = true;
        } else {
            z = false;
        }
        Renderer.shapeDrawer.setColor(new Color(getColor().r, getColor().g, getColor().b, this.fPerc * 0.65f));
        for (int i = 0; i < this.clickXYSize; i++) {
            Renderer.shapeDrawer.filledCircle(this.iX + ((int) this.clickXY.get(i).fX), (-this.iY) + ((int) this.clickXY.get(i).fY), this.clickXY.get(i).width * this.fPerc);
            this.clickXY.get(i).fX += this.clickXY.get(i).speedX * this.extraSpeed;
            this.clickXY.get(i).fY += this.clickXY.get(i).speedY * this.extraSpeed * ((this.fPerc * 0.25f) + 0.75f);
        }
        return z;
    }

    public Color getColor() {
        return ProvinceDraw.progressBar;
    }
}
