package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsBudget_Icon extends Button {
    protected static final int ANIMATION_T = 1000;
    protected static int animationState;
    protected static long lTimeAnimation;
    public int iLevel;
    public int iconHeight;
    public int iconWidth;
    public int imageID;

    public ButtonStatsBudget_Icon(int i, int i2, int i3, int i4, int i5, int i6) {
        float f;
        init(this.sText, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.imageID = i;
        this.iLevel = i6;
        float fMin = Math.min(1.0f, getImageScale(i));
        if (i6 != 0) {
            f = i6 == 1 ? 0.75f : 0.5f;
            this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * fMin);
            this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * fMin);
        }
        fMin *= f;
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * fMin);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * fMin);
    }

    public static final float getBoxAlpha(boolean z, boolean z2, boolean z3) {
        if (!z) {
            return 0.2f;
        }
        if (z3) {
            return 0.85f;
        }
        return z2 ? 0.7f : 0.5f;
    }

    private final float getImageScale(int i) {
        return (getHeight() - (CFG.PADDING * 2)) / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = this.iLevel;
        if (i == 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("LowTaxation"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_EFFICIENCY[0] * 100.0f, 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncomeEconomy") + ": ", CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_INCOME_ECONOMY[0] * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Research") + ": ", "+" + CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_RESEARCH[0] * 100.0f, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", "+" + CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_LEGACY[0] * 100.0f, 100) + "%", Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Unrest") + ": ", "" + Game.lang.get("XPerMonth", CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_UNREST_PER_MONTH[0], 100)), Images.revolutionRisk, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (i == 1) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DefaultTaxation"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_EFFICIENCY[1] * 100.0f, 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncomeEconomy") + ": ", CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_INCOME_ECONOMY[1] * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Unrest") + ": ", "" + Game.lang.get("XPerMonth", CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_UNREST_PER_MONTH[1], 100)), Images.revolutionRisk, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEUTRAL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SevereTaxation"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", "+" + CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_EFFICIENCY[2] * 100.0f, 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncomeEconomy") + ": ", "+" + CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_INCOME_ECONOMY[2] * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Research") + ": ", "" + CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_RESEARCH[2] * 100.0f, 100) + "%", Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", "" + CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_LEGACY[2] * 100.0f, 100) + "%", Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Unrest") + ": ", "" + Game.lang.get("XPerMonth", CFG.getPrecision2(GameValues.budget.TAXATION_LEVEL_UNREST_PER_MONTH[2], 100)), Images.revolutionRisk, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered()) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 1.0f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.25f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.25f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.65f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - (CFG.PADDING * 2)) + i2, getWidth(), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.65f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, getWidth(), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.65f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
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
        if (isLeveLActive()) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.175f));
            ImageManager.getImage(Images.activeSort).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.activeSort).getWidth() / 2)) + i, ((getPosY() + getHeight()) - ((ImageManager.getImage(Images.activeSort).getHeight() * 3) / 4)) + i2, false, true);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        float f;
        if (isLeveLActive()) {
            f = 1.0f;
        } else {
            f = getIsHovered() ? 0.65f : 0.15f;
        }
        spriteBatch.setColor(1.0f, 1.0f, 1.0f, f);
        Image image = ImageManager.getImage(this.imageID);
        int posX = ((getPosX() + (getWidth() / 2)) - (this.iconWidth / 2)) + i;
        int posY = getPosY();
        int height = getHeight();
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, posY + ((height - i3) / 2) + i2, this.iconWidth, i3);
        spriteBatch.setColor(Color.WHITE);
    }

    public boolean isLeveLActive() {
        return false;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        lTimeAnimation = CFG.currentTimeMillis;
        animationState = 0;
    }
}
