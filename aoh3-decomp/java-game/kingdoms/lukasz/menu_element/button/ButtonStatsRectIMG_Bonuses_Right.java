package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.GlyphLayout_Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonStatsRectIMG_Bonuses_Right extends Button {
    public int fontID2;
    public int iTextBonusW;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public int maxIconWidth;
    public String sText2;
    public String sText_Orginal;

    public ButtonStatsRectIMG_Bonuses_Right() {
    }

    public ButtonStatsRectIMG_Bonuses_Right(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.sText_Orginal = str;
        this.fontID2 = CFG.FONT_BOLD_SMALL;
        this.imageID = i;
        this.maxIconWidth = i6;
        float imageScale = getImageScale(i) * 1.2f;
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * imageScale);
        this.sText2 = str2;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID2), str2);
        this.iTextBonusW = (int) glyphLayout_Game.width;
        int i7 = 0;
        while (this.iTextWidth >= getWidth() - (((CFG.PADDING * 6) + i6) + this.iTextBonusW) && getText().length() > 5 && (i7 = i7 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
        }
    }

    public ButtonStatsRectIMG_Bonuses_Right(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        init(str, i7, 0, i2, i3, i4, i5, true, true, false, false);
        this.fontID2 = i8;
        this.imageID = i;
        this.maxIconWidth = i6;
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * 1.0f);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * 1.0f);
        this.sText2 = str2;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(i8), str2);
        this.iTextBonusW = (int) glyphLayout_Game.width;
        int i9 = 0;
        while (this.iTextWidth >= getWidth() - (((CFG.PADDING * 9) + i6) + this.iTextBonusW) && getText().length() > 5 && (i9 = i9 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
        }
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

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(this.sText_Orginal + ": ", this.sText2, this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, (getIsHovered() || z) ? 0.65f : 0.35f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.35f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), getHeight());
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.3f));
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), getHeight());
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.55f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.9f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + 1 + i2, this.maxIconWidth + (CFG.PADDING * 2), 1);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = ImageManager.getImage(this.imageID);
        int posX = (((getPosX() + CFG.PADDING) + (this.maxIconWidth / 2)) - (this.iconWidth / 2)) + i;
        int posY = getPosY();
        int height = getHeight();
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, posY + ((height - i3) / 2) + i2, this.iconWidth, i3);
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), getPosX() + (CFG.PADDING * 2) + this.maxIconWidth + (CFG.PADDING * 2) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
        Renderer.drawText(spriteBatch, this.fontID2, getText2(), (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - this.iTextBonusW) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColorBonus());
    }

    public Color getColorBonus() {
        return Colors.COLOR_TEXT_MODIFIER_POSITIVE;
    }

    public final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    public String getText2() {
        return this.sText2;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText2(String str) {
        this.sText2 = str;
        GlyphLayout_Game glyphLayout_Game = new GlyphLayout_Game();
        glyphLayout_Game.setText(Renderer.fontMain.get(this.fontID2), this.sText2);
        this.iTextBonusW = (int) glyphLayout_Game.width;
    }
}
