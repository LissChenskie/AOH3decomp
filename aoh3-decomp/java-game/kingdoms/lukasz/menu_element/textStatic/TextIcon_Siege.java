package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextIcon_Siege extends Button {
    private int iFortHeight;
    private int iFortWidth;
    public int iProvinceID;
    private int iSiegeHeight;
    private int iSiegeWidth;
    public int iTextHeight3;
    public int iTextWidth2;
    public int iTextWidth3;
    public int imageID;
    public long lTimeAnimation;
    public int maxWidth;
    public String sText2;
    public int animationState = 0;
    public final int ANIMATION_T = ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED;
    public float lastValue = -989566.75f;
    public String sText3 = "";

    public TextIcon_Siege(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.lTimeAnimation = 0L;
        init(null, CFG.FONT_REGULAR, 0, i3, i4, i5, i6, true, true, false, false);
        this.iProvinceID = i;
        this.imageID = i2;
        this.maxWidth = i7;
        this.lTimeAnimation = CFG.currentTimeMillis;
        this.sText2 = str;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str);
        this.iTextWidth2 = (int) Renderer.glyphLayout.width;
        this.iSiegeWidth = (int) (ImageManager.getImage(Images.siege).getWidth() * getImageScale(Images.siege));
        this.iSiegeHeight = (int) (ImageManager.getImage(Images.siege).getHeight() * getImageScale(Images.siege));
        this.iFortWidth = (int) (ImageManager.getImage(Game_Calendar.IMG_FORT_DEFENSE).getWidth() * getImageScale(Game_Calendar.IMG_FORT_DEFENSE));
        this.iFortHeight = (int) (ImageManager.getImage(Game_Calendar.IMG_FORT_DEFENSE).getHeight() * getImageScale(Game_Calendar.IMG_FORT_DEFENSE));
        getTextToDraw();
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT_SMALL / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int posX = getPosX();
        int width = getWidth();
        if (DiplomacyManager.inAnimation) {
            width = (int) (getWidth() * DiplomacyManager.fAnimationPerc);
            posX = (posX + (getWidth() / 2)) - (width / 2);
        }
        int i3 = width;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.25f));
        int i4 = posX + i;
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i4, getPosY() + i2, i3, getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 0.65f : 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i4, getPosY() + i2, i3, getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.2f));
        Images.gradientFull.draw(spriteBatch, i4, getPosY() + i2, i3, getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.25f));
        Images.gradientXY.draw(spriteBatch, i4, getPosY() + i2, i3, getHeight());
        int iMax = (int) Math.max(1.0f, i3 * Game.getProvince(this.iProvinceID).getSiegeProgress());
        spriteBatch.setColor(Color.WHITE);
        if (DiplomacyManager.inAnimation) {
            spriteBatch.setColor(new Color(getColorBar().r, getColorBar().g, getColorBar().b, (1.0f - DiplomacyManager.fAnimationPerc) * 0.65f));
            Images.gradientFull.draw(spriteBatch, i4, getPosY() + i2, iMax, getHeight());
            spriteBatch.setColor(new Color(getColorBar().r, getColorBar().g, getColorBar().b, ((1.0f - DiplomacyManager.fAnimationPerc) * 0.6f) + 0.45f));
        } else {
            spriteBatch.setColor(new Color(getColorBar().r, getColorBar().g, getColorBar().b, 0.45f));
        }
        Images.gradientXY.draw(spriteBatch, i4, getPosY() + i2, iMax, getHeight());
        int i5 = this.animationState;
        if (i5 >= 0) {
            if (i5 == 0) {
                spriteBatch.setColor(new Color(getColorBar().r, getColorBar().g, getColorBar().b, (1.0f - Math.min(((CFG.currentTimeMillis - this.lTimeAnimation) * 1.0f) / 1500.0f, 1.0f)) * 0.55f));
                Images.gradientXY.draw(spriteBatch, i4, getPosY() + (getHeight() / 2) + i2, iMax, getHeight() / 2);
                if (this.lTimeAnimation < CFG.currentTimeMillis - 1500) {
                    this.animationState++;
                    this.lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                spriteBatch.setColor(new Color(getColorBar().r, getColorBar().g, getColorBar().b, Math.min(((CFG.currentTimeMillis - this.lTimeAnimation) * 1.0f) / 1500.0f, 1.0f) * 0.55f));
                Images.gradientXY.draw(spriteBatch, i4, getPosY() + (getHeight() / 2) + i2, iMax, getHeight() / 2);
                if (this.lTimeAnimation < CFG.currentTimeMillis - 1500) {
                    this.animationState = 0;
                    this.lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Images.gradientXY.draw(spriteBatch, i4, getPosY() + i2, i3, CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, i4, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, i3, CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.25f));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, i4, getPosY() + i2, i3, getHeight(), 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, i4, ((getPosY() + getHeight()) - 1) + i2, i3, 1);
        Images.gradientFull.draw(spriteBatch, i4, getPosY() + i2, i3, 1);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        ImageManager.getImage(this.imageID).draw(spriteBatch, ((((getPosX() + (getWidth() / 2)) - (this.iTextWidth3 / 2)) - CFG.PADDING) - this.iSiegeWidth) + i, ((getPosY() + (getHeight() / 2)) - (((this.iTextHeight + this.iTextHeight3) + CFG.PADDING) / 2)) + CFG.PADDING + this.iTextHeight + i2, this.iSiegeWidth, this.iSiegeHeight);
        ImageManager.getImage(Game_Calendar.IMG_FORT_DEFENSE).draw(spriteBatch, getPosX() + (getWidth() / 2) + (this.iTextWidth3 / 2) + CFG.PADDING + i, ((getPosY() + (getHeight() / 2)) - (((this.iTextHeight + this.iTextHeight3) + CFG.PADDING) / 2)) + CFG.PADDING + this.iTextHeight + i2, this.iFortWidth, this.iFortHeight);
        Renderer.drawText(spriteBatch, this.fontID, this.sText2, ((getPosX() + (getWidth() / 2)) - ((this.iTextWidth + this.iTextWidth2) / 2)) + i, ((getPosY() + (getHeight() / 2)) - (((this.iTextHeight + this.iTextHeight3) + CFG.PADDING) / 2)) + i2, getColor(z));
        int i3 = this.fontID;
        String textToDraw = getTextToDraw();
        int posX = getPosX() + (getWidth() / 2);
        int i4 = this.iTextWidth;
        int i5 = this.iTextWidth2;
        Renderer.drawText(spriteBatch, i3, textToDraw, (posX - ((i4 + i5) / 2)) + i5 + i, ((getPosY() + (getHeight() / 2)) - (((this.iTextHeight + this.iTextHeight3) + CFG.PADDING) / 2)) + i2, Colors.HOVER_GOLD);
        Renderer.drawText(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sText3, ((getPosX() + (getWidth() / 2)) - (this.iTextWidth3 / 2)) + i, ((getPosY() + (getHeight() / 2)) - (((this.iTextHeight + this.iTextHeight3) + CFG.PADDING) / 2)) + CFG.PADDING + this.iTextHeight + i2, getColor(z));
    }

    public Color getColorBar() {
        return DiplomacyManager.COLOR_RED;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        int i = this.iProvinceID;
        if (i >= 0 && Game.getProvinceData4(i).getSiegeProgress() != this.lastValue) {
            this.lastValue = Game.getProvinceData4(this.iProvinceID).getSiegeProgress();
            setText("" + CFG.getPrecision2(Game.getProvince(this.iProvinceID).getSiegeProgress() * 100.0f, 1) + "%");
            this.sText3 = "" + CFG.getPrecision2(Game.getProvinceData4(this.iProvinceID).getSiegeProgress(), 1) + " / " + Game.getProvince(this.iProvinceID).getFortDefense();
            Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sText3);
            this.iTextWidth3 = (int) Renderer.glyphLayout.width;
            this.iTextHeight3 = (int) Renderer.glyphLayout.height;
        }
        return this.sText;
    }
}
