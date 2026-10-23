package aoc.kingdoms.lukasz.menu_element.menuElementHover;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class MenuElement_HoverElement_Type_Button_Unit implements MenuElement_HoverElement_Type {
    private int fontID = 0;
    private int iAttackHeight;
    private int iAttackWidth;
    private int iDefenseHeight;
    private int iDefenseWidth;
    private int iTextHeight;
    private int iTextWidth;
    public int iconAttackHeight;
    public int iconAttackWidth;
    public int iconDefenseHeight;
    public int iconDefenseWidth;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public int maxIconWidth;
    private Color oColor;
    private String sAttack;
    private String sDefense;
    private String sText;

    public MenuElement_HoverElement_Type_Button_Unit(String str, int i, int i2, String str2, String str3) {
        init(str, i, i2, Colors.BUTTON_TEXT_BRIGHT);
        this.sAttack = str2;
        this.sDefense = str3;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(i2), str2);
        this.iAttackWidth = (int) Renderer.glyphLayout.width;
        this.iAttackHeight = (int) Renderer.glyphLayout.height;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(i2), str3);
        this.iDefenseWidth = (int) Renderer.glyphLayout.width;
        this.iDefenseHeight = (int) Renderer.glyphLayout.height;
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
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
        Image image = ImageManager.getImage(this.imageID);
        int i4 = (i + ((this.maxIconWidth + (CFG.PADDING * 2)) / 2)) - (this.iconWidth / 2);
        int height2 = getHeight2();
        int i5 = this.iconHeight;
        image.draw(spriteBatch, i4, paddingY + ((height2 - i5) / 2), this.iconWidth, i5);
        Renderer.drawText(spriteBatch, this.fontID, this.sText, (CFG.PADDING * 4) + i + this.maxIconWidth, paddingY + ((getHeight2() - this.iTextHeight) / 2), new Color(this.oColor.r, this.oColor.g, this.oColor.b, f));
        Image image2 = ImageManager.getImage(Images.attack);
        int i6 = (CFG.PADDING * 5) + i + this.maxIconWidth + this.iTextWidth;
        int height3 = getHeight2();
        int i7 = this.iconAttackHeight;
        image2.draw(spriteBatch, i6, paddingY + ((height3 - i7) / 2), this.iconAttackWidth, i7);
        Renderer.drawText(spriteBatch, this.fontID, this.sAttack, this.iconAttackWidth + i + this.maxIconWidth + this.iTextWidth + (CFG.PADDING * 6), paddingY + ((getHeight2() - this.iAttackHeight) / 2), new Color(Colors.BUTTON_TEXT.r, Colors.BUTTON_TEXT.g, Colors.BUTTON_TEXT.b, f));
        Image image3 = ImageManager.getImage(Images.defense);
        int i8 = this.iconAttackWidth + i + this.maxIconWidth + this.iTextWidth + (CFG.PADDING * 7) + this.iAttackWidth;
        int height4 = getHeight2();
        int i9 = this.iconDefenseHeight;
        image3.draw(spriteBatch, i8, paddingY + ((height4 - i9) / 2), this.iconDefenseWidth, i9);
        Renderer.drawText(spriteBatch, this.fontID, this.sAttack, this.iconAttackWidth + i + this.maxIconWidth + this.iTextWidth + (CFG.PADDING * 8) + this.iconDefenseWidth + this.iAttackWidth, paddingY + ((getHeight2() - this.iDefenseHeight) / 2), new Color(Colors.BUTTON_TEXT.r, Colors.BUTTON_TEXT.g, Colors.BUTTON_TEXT.b, f));
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
        return this.iTextWidth + this.maxIconWidth + (CFG.PADDING * 6) + (CFG.PADDING * 4) + this.iconDefenseWidth + this.iDefenseWidth + this.iAttackWidth + this.iconAttackWidth;
    }

    public final void init(String str, int i, int i2, Color color) {
        this.sText = str;
        this.imageID = i;
        this.oColor = color;
        this.fontID = i2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str);
        this.iTextWidth = (int) Renderer.glyphLayout.width;
        this.iTextHeight = (int) Renderer.glyphLayout.height;
        this.maxIconWidth = ImageManager.getImage(Images.gold).getWidth();
        float imageScale = getImageScale(i) * 1.1f;
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * imageScale);
        this.iconAttackWidth = (int) (ImageManager.getImage(Images.attack).getWidth() * imageScale);
        this.iconAttackHeight = (int) (ImageManager.getImage(Images.attack).getHeight() * imageScale);
        this.iconDefenseWidth = (int) (ImageManager.getImage(Images.defense).getWidth() * imageScale);
        this.iconDefenseHeight = (int) (ImageManager.getImage(Images.defense).getHeight() * imageScale);
    }
}
