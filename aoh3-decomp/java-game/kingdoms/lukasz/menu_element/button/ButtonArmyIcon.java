package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonArmyIcon extends Button {
    public static int maxWidth = 1;
    public String armyKey;
    public boolean checkbox;
    public int imageID;

    public ButtonArmyIcon(int i, int i2, int i3) {
        this.checkbox = false;
        init("", CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, 20, getButtonHeight(), true, true, false, false);
        this.imageID = i;
        setWidth(getButtonWidth());
    }

    public ButtonArmyIcon(int i, int i2, int i3, boolean z) {
        this.checkbox = false;
        init("", CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, 20, getButtonHeight(), true, true, false, false);
        this.imageID = i;
        this.checkbox = z;
        setWidth(getButtonWidth());
    }

    public ButtonArmyIcon(int i, int i2, int i3, boolean z, String str) {
        this.checkbox = false;
        init("", CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, 20, getButtonHeight(), true, true, false, false);
        this.imageID = i;
        this.checkbox = z;
        this.armyKey = str;
        setWidth(getButtonWidth());
    }

    public ButtonArmyIcon(int i, int i2, int i3, boolean z, String str, int i4) {
        this.checkbox = false;
        init(IlLkpaQxs.LHHsRHuQZJ, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, 20, i4, true, true, false, false);
        this.imageID = i;
        this.checkbox = z;
        this.armyKey = str;
        setWidth(getButtonWidth());
    }

    public static int getButtonHeight() {
        return (CFG.BUTTON_HEIGHT / 2) + CFG.PADDING;
    }

    public static int getButtonWidth() {
        return maxWidth + (CFG.PADDING * 5);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, ButtonArmyID.getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        ImageManager.getImage(getImageID()).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(getImageID()).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(getImageID()).getHeight() / 2)) + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public boolean getCheckboxState() {
        return this.checkbox;
    }

    public int getImageID() {
        return this.imageID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setCheckboxState(boolean z) {
        this.checkbox = z;
    }
}
