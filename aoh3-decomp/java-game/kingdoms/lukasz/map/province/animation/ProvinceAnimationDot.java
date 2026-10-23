package aoc.kingdoms.lukasz.map.province.animation;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceAnimationDot {
    public static final float ANIMATION_DURATION = 1250.0f;
    public long animationTime;
    public Color dotColor;
    public float fPerc = 1.0f;
    public int iProvinceID;
    public int posX;
    public int posY;

    public ProvinceAnimationDot(int i, Color color) {
        this.animationTime = 0L;
        this.iProvinceID = i;
        this.dotColor = color;
        this.animationTime = CFG.currentTimeMillis;
        if (Game.getProvince(i).getCitiesSize() > 0) {
            this.posX = Game.getProvince(i).getCity(0).getPosX();
            this.posY = -Game.getProvince(i).getCity(0).getPosY();
        } else {
            this.posX = Game.getProvince(i).getCenterX();
            this.posY = -Game.getProvince(i).getCenterY();
        }
    }

    public boolean draw(SpriteBatch spriteBatch, float f) {
        boolean z;
        this.fPerc -= (CFG.currentTimeMillis - this.animationTime) / 1250.0f;
        this.animationTime = CFG.currentTimeMillis;
        if (this.fPerc <= 0.0f) {
            this.fPerc = 0.0f;
            z = true;
        } else {
            z = false;
        }
        if (Game.getProvince(this.iProvinceID).getDrawProvince()) {
            Renderer.shapeDrawer.setColor(new Color(this.dotColor.r, this.dotColor.g, this.dotColor.b, this.fPerc * 0.15f));
            Renderer.shapeDrawer.filledCircle((this.posX + Game.getProvince(this.iProvinceID).getTranslateProvincePosX()) * f, (this.posY - Game.mapCoords.getPosY()) * f, 20.0f * f * this.fPerc);
            Renderer.shapeDrawer.setColor(new Color(this.dotColor.r, this.dotColor.g, this.dotColor.b, this.fPerc * 0.45f));
            Renderer.shapeDrawer.filledCircle((this.posX + Game.getProvince(this.iProvinceID).getTranslateProvincePosX()) * f, (this.posY - Game.mapCoords.getPosY()) * f, f * 14.0f * this.fPerc);
        }
        return z;
    }
}
