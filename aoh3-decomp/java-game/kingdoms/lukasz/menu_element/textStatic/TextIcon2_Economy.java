package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextIcon2_Economy extends Button {
    protected static final int ANIMATION_T = 1000;
    protected static int animationState;
    protected static long lTimeAnimation;
    public float economyPercOfMax;
    public int iProvinceID;
    public int imageID;
    public float lastValue = -997654.3f;

    public TextIcon2_Economy(int i, String str, int i2, int i3, int i4, int i5, int i6) {
        this.iProvinceID = i;
        this.imageID = i2;
        this.economyPercOfMax = Math.max(0.05f, Math.min(1.0f, Game.getProvince(i).getEconomyWithBonuses() / Game.getMaxEconomy(this.iProvinceID)));
        init(str, CFG.FONT_REGULAR_SMALL, 0, i3, i4, i5, i6, true, true, false, false);
    }

    public static Color getColor_gradientFull() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.45f);
    }

    public static Color getColor_gradientXY() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.7f);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, (getIsHovered() || z) ? 0.6f : 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH(), 1.0f);
        if (Game.getProvince(this.iProvinceID).iProvinceInvestSize > 0) {
            spriteBatch.setColor(new Color(ProvinceDraw.progressBar.r, ProvinceDraw.progressBar.g, ProvinceDraw.progressBar.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH(), 1.0f);
        }
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.HOVER_POSITIVE.r, Colors.HOVER_POSITIVE.g, Colors.HOVER_POSITIVE.b, 0.25f));
        Renderer.drawBoxProgress(spriteBatch, Images.statsRectBG, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, (int) (getWidth() * this.economyPercOfMax), getTextH(), getWidth());
        spriteBatch.setColor(getColor_gradientXY());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), getTextH());
        spriteBatch.setColor(getColor_gradientFull());
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
        try {
            if (Game.getProvince(this.iProvinceID).iProvinceInvestSize > 0) {
                spriteBatch.setColor(new Color(ProvinceDraw.progressBar));
                Renderer.drawBoxProgress(spriteBatch, Images.statsRectBG, getPosX() + i, ((getPosY() + getHeight()) - getTextH()) + i2, (int) (getWidth() * (1.0f - (Game.getProvince(this.iProvinceID).provinceInvestDaysLeft.get(0).daysLeft / Game.getProvince(this.iProvinceID).provinceInvestDaysLeft.get(0).investTime))), getTextH(), getWidth());
                spriteBatch.setColor(Color.WHITE);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        if (getClickable() && getIsHovered() && (i3 = animationState) >= 0) {
            if (i3 == 0) {
                float fMin = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, getPosY() + 1 + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + getHeight()) - 2) + i2, (int) ((getWidth() - (CFG.PADDING * 2)) * fMin), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState++;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            } else {
                float fMin2 = Math.min(((CFG.currentTimeMillis - lTimeAnimation) * 1.0f) / 1000.0f, 1.0f);
                spriteBatch.setColor(ButtonGame.getColorLine());
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, getPosY() + 1 + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                Images.line_32_off1.draw(spriteBatch, getPosX() + CFG.PADDING + ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)) + i, ((getPosY() + getHeight()) - 2) + i2, (getWidth() - (CFG.PADDING * 2)) - ((int) ((getWidth() - (CFG.PADDING * 2)) * fMin2)), 1);
                if (lTimeAnimation < CFG.currentTimeMillis - 1000) {
                    animationState = 0;
                    lTimeAnimation = CFG.currentTimeMillis;
                }
            }
            spriteBatch.setColor(Color.WHITE);
        }
        if (getIsHovered() && (Game.getProvince(this.iProvinceID).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(this.iProvinceID).getCivID()).getPuppetOfCivID() == Game.player.iCivID)) {
            ImageManager.getImage(Game_Calendar.IMG_ECONOMY_UP).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Game_Calendar.IMG_ECONOMY_UP).getWidth() / 2)) + i, ((getPosY() + ((getHeight() - getTextH()) / 2)) - (ImageManager.getImage(Game_Calendar.IMG_ECONOMY_UP).getHeight() / 2)) + i2);
        } else {
            ImageManager.getImage(getImageID()).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(getImageID()).getWidth() / 2)) + i, ((getPosY() + ((getHeight() - getTextH()) / 2)) - (ImageManager.getImage(getImageID()).getHeight() / 2)) + i2);
        }
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, (((getPosY() + getHeight()) - CFG.PADDING) - getTextHeight()) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    public int getImageID() {
        return this.imageID;
    }

    public int getTextH() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (this.lastValue != Game.getProvince(this.iProvinceID).getEconomyWithBonuses()) {
            setText(TGqtTWl.xWAP + CFG.getPrecision2(Game.getProvince(this.iProvinceID).getEconomyWithBonuses(), 10));
            this.lastValue = Game.getProvince(this.iProvinceID).getEconomyWithBonuses();
        }
        return super.getTextToDraw();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }
}
