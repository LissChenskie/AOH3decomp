package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Title implements MenuElement_HoverElement_Type {
    private static final int fontID = CFG.FONT_BOLD;
    private static final int fontID2 = CFG.FONT_REGULAR_SMALL;
    public int iTextHeight3;
    public int iTextWidth;
    public int iTextWidth2;
    public int iTextWidth3;
    public int iTextWidth4;
    private int iTextWidthMAX;
    public int iTextY;
    private int imageID;
    public int maxHeight;
    private String sText;
    private String sText2;
    private String sText3;
    private String sText4;
    public Color textColor;
    public Color textColor1;

    public MenuElement_HoverElement_Type_Title(int i, String str, String str2, Color color, String str3, String str4, Color color2) {
        this.iTextWidthMAX = 0;
        this.iTextWidth = 0;
        this.iTextWidth2 = 0;
        this.iTextWidth3 = 0;
        this.iTextWidth4 = 0;
        this.iTextHeight3 = 0;
        this.maxHeight = 0;
        this.iTextY = 0;
        this.imageID = i;
        this.sText = str;
        this.sText2 = str2;
        this.sText3 = str3;
        this.sText4 = str4;
        this.textColor = color2;
        this.textColor1 = color;
        GlyphLayout_Game glyphLayout_Game = Renderer.glyphLayout;
        List<BitmapFont> list = Renderer.fontMain;
        int i2 = fontID;
        glyphLayout_Game.setText(list.get(i2), this.sText);
        this.iTextWidth = (int) Renderer.glyphLayout.width;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(i2), this.sText2);
        this.iTextWidth2 = (int) Renderer.glyphLayout.width;
        GlyphLayout_Game glyphLayout_Game2 = Renderer.glyphLayout;
        List<BitmapFont> list2 = Renderer.fontMain;
        int i3 = fontID2;
        glyphLayout_Game2.setText(list2.get(i3), this.sText3);
        this.iTextWidth3 = (int) Renderer.glyphLayout.width;
        this.iTextHeight3 = (int) Renderer.glyphLayout.height;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(i3), this.sText4);
        this.iTextWidth4 = (int) Renderer.glyphLayout.width;
        this.maxHeight = Math.max((CFG.TEXT_HEIGHT * 2) + CFG.PADDING, ImageManager.getImage(i).getHeight());
        this.iTextWidthMAX = Math.max(this.iTextWidth + this.iTextWidth2, this.iTextWidth3 + this.iTextWidth4);
        this.iTextY = (getHeight2() / 2) - (((CFG.TEXT_HEIGHT * 2) + (CFG.PADDING * 2)) / 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public void draw(SpriteBatch spriteBatch, int i, int i2, float f, int i3) {
        int i4 = i2 - (CFG.PADDING * 2);
        float f2 = f * 1.0f;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, f2));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i - MenuElement_Hover.getDrawExtraXPos(), i4, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        float f3 = f * 0.35f;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, f3));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i - MenuElement_Hover.getDrawExtraXPos(), i4, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        float f4 = f * 0.3f;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f4));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f3));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2());
        float f5 = f * 0.7f;
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f5));
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4 + CFG.PADDING, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2() - (CFG.PADDING * 2));
        float f6 = f * 0.45f;
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f6));
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight2() + i4) - (CFG.PADDING * 2), i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING * 2);
        float f7 = f * 0.85f;
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f7));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, i - MenuElement_Hover.getDrawExtraXPos(), i4, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2(), 1.0f);
        float f8 = f * 0.5f;
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f8));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight2() + i4) - 1, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.85f));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight2() + i4) - 2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        int i5 = i4 + 1;
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i5, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        float f9 = f * 0.55f;
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f9));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight2() + i4) - 1, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight2() + i4) - 2, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i5, i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f6));
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4 + getHeight2(), i3 + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING, false, true);
        int width = ImageManager.getImage(this.imageID).getWidth() + (CFG.PADDING * 2);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, f2));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i - MenuElement_Hover.getDrawExtraXPos(), i4, width + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, f3));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, i - MenuElement_Hover.getDrawExtraXPos(), i4, width + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f4));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4, width + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f3));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4, width + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, f5));
        ImageManager.getImage(Images.gradientXYVertical).draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4 + CFG.PADDING, width + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2() - (CFG.PADDING * 2));
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f6));
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4, width + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING * 2, false, true);
        Images.gradientXY.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight2() + i4) - (CFG.PADDING * 2), width + (MenuElement_Hover.getDrawExtraXPos() * 2), CFG.PADDING * 2);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f7));
        Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, i - MenuElement_Hover.getDrawExtraXPos(), i4, width + (MenuElement_Hover.getDrawExtraXPos() * 2), getHeight2(), 1.0f);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f8));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight2() + i4) - 1, width + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4, width + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.85f));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight2() + i4) - 2, width + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i5, width + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, f9));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight2() + i4) - 1, width + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i4, width + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), (getHeight2() + i4) - 2, width + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        Images.gradientFull.draw(spriteBatch, i - MenuElement_Hover.getDrawExtraXPos(), i5, width + (MenuElement_Hover.getDrawExtraXPos() * 2), 1);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, f));
        ImageManager.getImage(this.imageID).draw(spriteBatch, i + CFG.PADDING, ((getHeight2() / 2) + i4) - (ImageManager.getImage(this.imageID).getHeight() / 2));
        int i6 = fontID;
        Renderer.drawText(spriteBatch, i6, this.sText, i + (CFG.PADDING * 7) + ImageManager.getImage(this.imageID).getWidth(), i4 + this.iTextY, new Color(Colors.COLOR_TOP_STATS.r, Colors.COLOR_TOP_STATS.g, Colors.COLOR_TOP_STATS.b, f));
        Renderer.drawText(spriteBatch, i6, this.sText2, i + (CFG.PADDING * 7) + this.iTextWidth + ImageManager.getImage(this.imageID).getWidth(), i4 + this.iTextY, new Color(this.textColor1.r, this.textColor1.g, this.textColor1.b, f));
        int i7 = fontID2;
        Renderer.drawText(spriteBatch, i7, this.sText3, i + (CFG.PADDING * 7) + ImageManager.getImage(this.imageID).getWidth(), ((((this.iTextY + i4) + CFG.TEXT_HEIGHT) + (CFG.PADDING * 2)) + (CFG.TEXT_HEIGHT / 2)) - (this.iTextHeight3 / 2), new Color(Colors.COLOR_TOP_STATS2.r, Colors.COLOR_TOP_STATS2.g, Colors.COLOR_TOP_STATS2.b, f));
        Renderer.drawText(spriteBatch, i7, this.sText4, i + (CFG.PADDING * 7) + this.iTextWidth3 + ImageManager.getImage(this.imageID).getWidth(), ((((i4 + this.iTextY) + CFG.TEXT_HEIGHT) + (CFG.PADDING * 2)) + (CFG.TEXT_HEIGHT / 2)) - (this.iTextHeight3 / 2), new Color(this.textColor.r, this.textColor.g, this.textColor.b, f));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getHeight() {
        return this.maxHeight + (CFG.PADDING * 5);
    }

    public int getHeight2() {
        return this.maxHeight + (CFG.PADDING * 7);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type
    public int getWidth() {
        return ImageManager.getImage(this.imageID).getWidth() + this.iTextWidthMAX + (CFG.PADDING * 8);
    }
}
