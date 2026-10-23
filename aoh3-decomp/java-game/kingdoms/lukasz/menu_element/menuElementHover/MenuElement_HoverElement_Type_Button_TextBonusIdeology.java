package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Button_TextBonusIdeology implements MenuElement_HoverElement_Type {
    private int fontID = 0;
    private int fontID2 = 0;
    private int iTextHeight;
    private int iTextHeight2;
    private int iTextWidth;
    private int iTextWidth2;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public int maxIconWidth;
    private Color oColor;
    private Color oColorBonus;
    private String sText;
    private String sText2;

    public MenuElement_HoverElement_Type_Button_TextBonusIdeology(String str, String str2, int i, int i2, int i3, Color color) {
        init(str, str2, i, i2, i3, Colors.BUTTON_TEXT_BRIGHT, color);
    }

    public MenuElement_HoverElement_Type_Button_TextBonusIdeology(String str, String str2, int i, int i2, int i3, Color color, Color color2) {
        init(str, str2, i, i2, i3, color, color2);
    }

    public MenuElement_HoverElement_Type_Button_TextBonusIdeology(String str, String str2, int i, int i2, Color color) {
        init(str, str2, i, i2, CFG.FONT_BOLD_SMALL, Colors.BUTTON_TEXT_BRIGHT, color);
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / Game.ideologiesManager.ideologiesImages.get(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        int paddingY = i2 + getPaddingY();
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f * f));
        float f2 = f * 1.0f;
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i, paddingY, i3, getHeight2(), f2);
        spriteBatch.setColor(Color.WHITE);
        float f3 = f * 0.35f;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, f3));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i, paddingY, (CFG.PADDING * 2) + this.maxIconWidth, getHeight2(), f2);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f3));
        Images.gradientFull.draw(spriteBatch, i, paddingY, (CFG.PADDING * 2) + this.maxIconWidth, getHeight2());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f * f));
        Images.gradientXY.draw(spriteBatch, i, paddingY, (CFG.PADDING * 2) + this.maxIconWidth, getHeight2());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, i, (getHeight2() + paddingY) - 1, (CFG.PADDING * 2) + this.maxIconWidth, 1);
        Images.gradientFull.draw(spriteBatch, i, paddingY, (CFG.PADDING * 2) + this.maxIconWidth, 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f * f));
        Images.gradientFull.draw(spriteBatch, i, (getHeight2() + paddingY) - 2, (CFG.PADDING * 2) + this.maxIconWidth, 1);
        Images.gradientFull.draw(spriteBatch, i, paddingY + 1, (CFG.PADDING * 2) + this.maxIconWidth, 1);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        Image image = Game.ideologiesManager.ideologiesImages.get(this.imageID);
        int i4 = (i + ((this.maxIconWidth + (CFG.PADDING * 2)) / 2)) - (this.iconWidth / 2);
        int height2 = getHeight2();
        int i5 = this.iconHeight;
        image.draw(spriteBatch, i4, paddingY + ((height2 - i5) / 2), this.iconWidth, i5);
        Renderer.drawText(spriteBatch, this.fontID, this.sText, (CFG.PADDING * 4) + i + this.maxIconWidth, paddingY + ((getHeight2() - this.iTextHeight) / 2), new Color(this.oColor.r, this.oColor.g, this.oColor.b, f));
        Renderer.drawText(spriteBatch, this.fontID2, this.sText2, (CFG.PADDING * 4) + i + this.maxIconWidth + this.iTextWidth, paddingY + ((getHeight2() - this.iTextHeight) / 2), new Color(this.oColorBonus.r, this.oColorBonus.g, this.oColorBonus.b, f));
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
    }

    public int getHeight2() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
    }

    public int getPaddingY() {
        return CFG.PADDING;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return this.iTextWidth + this.iTextWidth2 + this.maxIconWidth + (CFG.PADDING * 6);
    }

    public final void init(String str, String str2, int i, int i2, int i3, Color color, Color color2) {
        this.sText = str;
        this.sText2 = str2;
        this.imageID = i;
        this.oColor = color;
        this.oColorBonus = color2;
        this.fontID = i2;
        this.fontID2 = i3;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str);
        this.iTextWidth = (int) Renderer.glyphLayout.width;
        this.iTextHeight = (int) Renderer.glyphLayout.height;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(i3), str2);
        this.iTextWidth2 = (int) Renderer.glyphLayout.width;
        this.iTextHeight2 = (int) Renderer.glyphLayout.height;
        this.maxIconWidth = ImageManager.getImage(Images.gold).getWidth();
        float imageScale = getImageScale(i) * 1.1f;
        this.iconWidth = (int) (Game.ideologiesManager.ideologiesImages.get(i).getWidth() * imageScale);
        this.iconHeight = (int) (Game.ideologiesManager.ideologiesImages.get(i).getHeight() * imageScale);
    }
}
