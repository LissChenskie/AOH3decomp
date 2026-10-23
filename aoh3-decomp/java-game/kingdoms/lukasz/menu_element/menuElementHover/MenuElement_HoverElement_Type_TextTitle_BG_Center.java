package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_TextTitle_BG_Center implements MenuElement_HoverElement_Type {
    private int fontID = 0;
    private int iTextWidth;
    private Color oColor;
    private String sText;

    public MenuElement_HoverElement_Type_TextTitle_BG_Center(String str) {
        init(str, 0, Colors.HOVER_LEFT);
    }

    public MenuElement_HoverElement_Type_TextTitle_BG_Center(String str, int i) {
        init(str, i, Colors.HOVER_LEFT);
    }

    public MenuElement_HoverElement_Type_TextTitle_BG_Center(String str, int i, Color color) {
        init(str, i, color);
    }

    public MenuElement_HoverElement_Type_TextTitle_BG_Center(String str, Color color) {
        init(str, 0, color);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.9f * f));
        Images.pix.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2() + (CFG.PADDING * 2));
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.75f * f));
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2() + (CFG.PADDING * 2));
        float f2 = f * 1.0f;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f2));
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2() + (CFG.PADDING * 2));
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f * f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f2));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2 + 1, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), ((getHeight2() + i2) + (CFG.PADDING * 2)) - 2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f2));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), ((getHeight2() + i2) + (CFG.PADDING * 2)) - 1, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.15f * f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (CFG.PADDING * 2) + getHeight2() + i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING);
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (CFG.PADDING * 2) + getHeight2() + i2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING, false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2 - CFG.PADDING, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING, false, true);
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i2 - CFG.PADDING, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING, false, true);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, this.fontID, this.sText, ((i3 / 2) + i) - (this.iTextWidth / 2), (CFG.PADDING / 2) + (CFG.PADDING * 2) + i2, new Color(this.oColor.r, this.oColor.g, this.oColor.b, f));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 5);
    }

    public int getHeight2() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 3);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.iTextWidth;
    }

    public final void init(String str, int i, Color color) {
        this.sText = str;
        this.oColor = color;
        this.fontID = i;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str);
        this.iTextWidth = (int) Renderer.glyphLayout.width;
    }
}
