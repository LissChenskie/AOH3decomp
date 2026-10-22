package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRectIMG_Economy extends Button {
    protected static final int ANIMATION_T = 1000;
    protected static int animationState;
    protected static long lTimeAnimation;
    public int iProvinceID;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public float lastValue = -997654.3f;
    public int maxIconWidth;

    public ButtonStatsRectIMG_Economy(int i, String str, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.iProvinceID = i;
        init(str, CFG.FONT_REGULAR_SMALL, 0, i3, i4, i5, i6, true, true, false, false);
        this.imageID = i2;
        this.maxIconWidth = i7;
        float imageScale = getImageScale(i2) * 1.2f;
        this.iconWidth = (int) (ImageManager.getImage(i2).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i2).getHeight() * imageScale);
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
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3;
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        try {
            if (Game.getProvince(this.iProvinceID).iProvinceInvestSize > 0) {
                spriteBatch.setColor(new Color(ProvinceDraw.progressBar.r, ProvinceDraw.progressBar.g, ProvinceDraw.progressBar.b, 0.5f));
                Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
                spriteBatch.setColor(new Color(ProvinceDraw.progressBar));
                Renderer.drawBoxProgress(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, (int) (getWidth() * (1.0f - (Game.getProvince(this.iProvinceID).provinceInvestDaysLeft.get(0).daysLeft / Game.getProvince(this.iProvinceID).provinceInvestDaysLeft.get(0).investTime))), getHeight(), getWidth());
                spriteBatch.setColor(Color.WHITE);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, getBoxAlpha(getClickable(), getIsHovered(), z) / 2.0f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
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
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() && (Game.getProvince(this.iProvinceID).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(this.iProvinceID).getCivID()).getPuppetOfCivID() == Game.player.iCivID)) {
            Image image = ImageManager.getImage(Game_Calendar.IMG_ECONOMY_UP);
            int posX = (((getPosX() + CFG.PADDING) + (this.maxIconWidth / 2)) - (this.iconWidth / 2)) + i;
            int posY = getPosY();
            int height = getHeight();
            int i3 = this.iconHeight;
            image.draw(spriteBatch, posX, posY + ((height - i3) / 2) + i2, this.iconWidth, i3);
        } else {
            Image image2 = ImageManager.getImage(this.imageID);
            int posX2 = (((getPosX() + CFG.PADDING) + (this.maxIconWidth / 2)) - (this.iconWidth / 2)) + i;
            int posY2 = getPosY();
            int height2 = getHeight();
            int i4 = this.iconHeight;
            image2.draw(spriteBatch, posX2, posY2 + ((height2 - i4) / 2) + i2, this.iconWidth, i4);
        }
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((((getPosX() + (CFG.PADDING * 2)) + this.maxIconWidth) + ((getWidth() - ((CFG.PADDING * 2) + this.maxIconWidth)) / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (this.lastValue != Game.getProvince(this.iProvinceID).getEconomyWithBonuses()) {
            setText("" + CFG.getPrecision2(Game.getProvince(this.iProvinceID).getEconomyWithBonuses(), 10));
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
