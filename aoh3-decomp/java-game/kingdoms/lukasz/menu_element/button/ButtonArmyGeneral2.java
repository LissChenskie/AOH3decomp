package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonArmyGeneral2 extends ButtonArmyGeneral {
    public ButtonArmyGeneral2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, String str2, int i10) {
        super(str, i, i2, i3, i4, i5, i6, i7, i8, i9, str2, i10);
        setWidth(ImageManager.getImage(Images.generalFrameBattle).getWidth());
        setHeight(ImageManager.getImage(Images.generalFrameBattle).getHeight());
        int i11 = 0;
        while (this.iTextWidth > getWidth() && getText().length() > 5 && (i11 = i11 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    public static int getStatsHeight() {
        return CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrameBattle).getWidth(), ImageManager.getImage(Images.generalFrameBattle).getHeight());
        }
        if (this.generalImage != null) {
            this.generalImage.draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrameBattle).getWidth(), ImageManager.getImage(Images.generalFrameBattle).getHeight());
        }
        ImageManager.getImage(Images.generalFrameBattle).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight() + i2, getWidth(), getStatsHeight());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight() + i2, getWidth(), getStatsHeight(), false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight() + i2, 1, getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + getWidth()) - 1) + i, getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight() + i2, 1, getStatsHeight());
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonArmyGeneral, aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getText(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight() + CFG.PADDING + i2, getColor(z));
        ImageManager.getImage(Images.attack).draw(spriteBatch, getPosX() + CFG.PADDING + i, (((getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight()) - CFG.PADDING) - attackIconHeight) + i2, attackIconWidth, attackIconHeight);
        ImageManager.getImage(Images.defense).draw(spriteBatch, (((getPosX() + getWidth()) - defenseIconWidth) - CFG.PADDING) + i, (((getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight()) - CFG.PADDING) - defenseIconHeight) + i2, defenseIconWidth, defenseIconHeight);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sAttack, getPosX() + attackIconWidth + CFG.PADDING + i, (((getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight()) - CFG.PADDING) - CFG.TEXT_HEIGHT_SMALL) + i2, Colors.BUTTON_TEXT_HOVERED);
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sDefense, ((((getPosX() + getWidth()) - (CFG.PADDING * 2)) - defenseIconWidth) - this.iDefenseWidth) + i, (((getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight()) - CFG.PADDING) - CFG.TEXT_HEIGHT_SMALL) + i2, Colors.BUTTON_TEXT_HOVERED);
    }
}
