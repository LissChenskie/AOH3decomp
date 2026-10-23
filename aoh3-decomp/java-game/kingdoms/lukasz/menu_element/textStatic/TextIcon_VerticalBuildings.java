package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextIcon_VerticalBuildings extends Button {
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public int lastValue = -997654;
    public int lastValue2 = -997654;
    public Color mainTextColor = Colors.BUTTON_TEXT;

    public TextIcon_VerticalBuildings(String str, int i, int i2, int i3, int i4, int i5) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.imageID = i;
        float imageScale = getImageScale(i) * 1.2f;
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * imageScale);
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
        return CFG.TEXT_HEIGHT_SMALL / ImageManager.getImage(i).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, getBoxAlpha(getClickable(), getIsHovered(), z) / 2.0f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, (((getPosY() + getHeight()) - this.iconHeight) - (CFG.PADDING * 2)) + i2, getWidth(), (CFG.PADDING * 2) + this.iconHeight, 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = ImageManager.getImage(this.imageID);
        int posX = getPosX() + CFG.PADDING + i;
        int posY = (getPosY() + getHeight()) - CFG.PADDING;
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, (posY - i3) + i2, this.iconWidth, i3);
        Renderer.drawTextWithShadowRotated(spriteBatch, this.fontID, getTextToDraw(), getPosX() + CFG.PADDING + i, getPosY() + (((getHeight() - (CFG.PADDING * 2)) - this.iconHeight) / 2) + (getTextWidth() / 2) + i2, getColor(z), 90.0f);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.BUTTON_TEXT_ACTIVE;
        }
        if (getIsHovered()) {
            return Colors.BUTTON_TEXT_HOVERED;
        }
        return getClickable() ? this.mainTextColor : Colors.BUTTON_TEXT_DISABLED;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (this.lastValue != Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsLimit || this.lastValue2 != Game.getProvince(InGame_ProvinceInfo.iProvinceID).getUsedBuildingsSlots()) {
            setText("" + Game.getProvince(InGame_ProvinceInfo.iProvinceID).getUsedBuildingsSlots() + " / " + Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsLimit);
            this.lastValue = Game.getProvince(InGame_ProvinceInfo.iProvinceID).iBuildingsLimit;
            int usedBuildingsSlots = Game.getProvince(InGame_ProvinceInfo.iProvinceID).getUsedBuildingsSlots();
            this.lastValue2 = usedBuildingsSlots;
            if (this.lastValue == usedBuildingsSlots) {
                this.mainTextColor = Colors.COLOR_TEXT_NEGATIVE;
            } else {
                this.mainTextColor = Colors.BUTTON_TEXT;
            }
        }
        return super.getTextToDraw();
    }
}
