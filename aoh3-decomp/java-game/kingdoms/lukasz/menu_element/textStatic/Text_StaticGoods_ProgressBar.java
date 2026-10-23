package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticGoods_ProgressBar extends Text_StaticGoods {
    public static Color progressBarBG = new Color(0.09803922f, 0.09803922f, 0.15686275f, 1.0f);
    public float fPerc;
    public Color progressBar;

    public Text_StaticGoods_ProgressBar(String str, int i, int i2, int i3, int i4, int i5, int i6, float f, int i7) {
        super(str, i, i2, i3, i4, i5, i6, i7);
        this.fPerc = 0.0f;
        this.progressBar = new Color(0.29411766f, 0.49019608f, 0.64705884f, 1.0f);
        this.fPerc = f;
        this.iCurrent = i7;
        if (f < 0.25f) {
            this.progressBar = new Color(0.8039216f, 0.19607843f, 0.003921569f, 1.0f);
            return;
        }
        if (f < 0.55f) {
            this.progressBar = new Color(1.0f, 0.52156866f, 0.20784314f, 1.0f);
            return;
        }
        if (f < 0.75f) {
            this.progressBar = new Color(1.0f, 0.78431374f, 0.003921569f, 1.0f);
        } else if (f < 0.98f) {
            this.progressBar = new Color(0.09803922f, 0.78431374f, 0.039215688f, 1.0f);
        } else {
            this.progressBar = new Color(0.09019608f, 0.5882353f, 0.023529412f, 1.0f);
        }
    }

    public Text_StaticGoods_ProgressBar(String str, int i, int i2, int i3, int i4, int i5, int i6, float f, int i7, boolean z) {
        super(str, i, i2, i3, i4, i5, i6, i7);
        this.fPerc = 0.0f;
        this.progressBar = new Color(0.29411766f, 0.49019608f, 0.64705884f, 1.0f);
        this.fPerc = f;
        this.iCurrent = i7;
        if (f < 0.05f) {
            this.progressBar = new Color(0.8039216f, 0.19607843f, 0.003921569f, 1.0f);
            return;
        }
        if (f < 0.125f) {
            this.progressBar = new Color(1.0f, 0.52156866f, 0.20784314f, 1.0f);
            return;
        }
        if (f < 0.2f) {
            this.progressBar = new Color(1.0f, 0.78431374f, 0.003921569f, 1.0f);
        } else if (f < 0.3f) {
            this.progressBar = new Color(0.09803922f, 0.78431374f, 0.039215688f, 1.0f);
        } else {
            this.progressBar = new Color(0.09019608f, 0.5882353f, 0.023529412f, 1.0f);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticGoods, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(progressBarBG);
        ImageManager.getImage(Images.progressBar).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBar).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (((this.iTextHeight + CFG.PADDING) + ImageManager.getImage(Images.progressBarOver).getHeight()) / 2)) + this.iTextHeight + CFG.PADDING + ((ImageManager.getImage(Images.progressBarOver).getHeight() - ImageManager.getImage(Images.progressBar).getHeight()) / 2) + i2);
        spriteBatch.setColor(this.progressBar);
        ImageManager.getImage(Images.progressBar).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBar).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (((this.iTextHeight + CFG.PADDING) + ImageManager.getImage(Images.progressBarOver).getHeight()) / 2)) + this.iTextHeight + CFG.PADDING + ((ImageManager.getImage(Images.progressBarOver).getHeight() - ImageManager.getImage(Images.progressBar).getHeight()) / 2) + i2, (int) (ImageManager.getImage(Images.progressBar).getWidth() * this.fPerc), ImageManager.getImage(Images.progressBar).getHeight());
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.progressBarOver).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.progressBarOver).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (((this.iTextHeight + CFG.PADDING) + ImageManager.getImage(Images.progressBarOver).getHeight()) / 2)) + this.iTextHeight + CFG.PADDING + i2);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, ((getPosY() + (getHeight() / 2)) - (((this.iTextHeight + CFG.PADDING) + ImageManager.getImage(Images.progressBarOver).getHeight()) / 2)) + i2, getIsHovered() ? getColor(z) : this.progressBar);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticGoods
    public void drawBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        super.drawBG(spriteBatch, i, i2, z);
    }
}
