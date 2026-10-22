package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextIcon2_HorizontalSplit extends Button {
    public int iLineSize;
    public int iY;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public int maxIconWidth;
    public int maxWidth;
    public List<String> sLines = new ArrayList();

    public TextIcon2_HorizontalSplit(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.iLineSize = 0;
        this.iY = 0;
        this.maxWidth = 0;
        init(str, CFG.FONT_REGULAR_SMALL, 0, i2, i3, i4, i5, true, true, false, false);
        this.imageID = i;
        this.maxIconWidth = i6;
        this.maxWidth = i7;
        this.iconWidth = ImageManager.getImage(i).getWidth();
        this.iconHeight = ImageManager.getImage(i).getHeight();
        String[] strArrSplit = str.split(" ");
        int iconBGWidth = (i4 - getIconBGWidth()) - (CFG.PADDING * 2);
        int length = strArrSplit.length;
        String str2 = "";
        int i8 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), strArrSplit[i9] + " ");
            this.iTextWidth = (int) Renderer.glyphLayout.width;
            i8 += this.iTextWidth;
            if (i8 < iconBGWidth) {
                str2 = str2 + strArrSplit[i9] + " ";
            } else {
                this.sLines.add(str2);
                str2 = strArrSplit[i9] + " ";
                i8 = this.iTextWidth;
            }
        }
        if (str2.length() > 0) {
            this.sLines.add(str2);
        }
        if (this.sLines.size() > 0 && this.sLines.get(0).length() > 0) {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), this.sLines.get(0));
            this.iTextHeight = (int) Renderer.glyphLayout.height;
        }
        this.iLineSize = Math.min(3, this.sLines.size());
        setHeight(Math.max(getHeight(), (CFG.PADDING * 3) + (this.iTextHeight * this.iLineSize) + (CFG.PADDING * 2 * (this.iLineSize - 1))));
        this.iY = (getHeight() / 2) - (((this.iTextHeight * this.iLineSize) + ((CFG.PADDING * 2) * (this.iLineSize - 1))) / 2);
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

    public static Color getColor_gradientXY() {
        return new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.85f);
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String str = "";
        for (int i = 0; i < this.sLines.size(); i++) {
            str = str + this.sLines.get(i);
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, ATsAGKCnv.uCuR, this.imageID, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, (getIsHovered() || z) ? 0.6f : 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, this.maxWidth, getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.3f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getIconBGWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(getColor_gradientXY());
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, this.maxWidth, 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 2) + i2, this.maxWidth, 1);
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
        for (int i4 = 0; i4 < this.iLineSize; i4++) {
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sLines.get(i4), getPosX() + getIconBGWidth() + (CFG.PADDING * 2) + i, getPosY() + this.iY + ((this.iTextHeight + (CFG.PADDING * 2)) * i4) + i2, getColor(z));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    public int getIconBGWidth() {
        return this.maxIconWidth + (CFG.PADDING * 2);
    }
}
