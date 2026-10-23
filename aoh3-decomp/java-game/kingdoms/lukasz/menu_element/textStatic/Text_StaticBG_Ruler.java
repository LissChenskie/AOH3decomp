package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Text_StaticBG_Ruler extends Text_Static {
    public int iText2Width;
    public String sText2;

    public Text_StaticBG_Ruler(String str, String str2, int i, int i2, int i3, int i4) {
        this.typeOfElement = MenuElement_Type.TEXT;
        this.fontID = CFG.FONT_REGULAR_SMALL;
        this.iTextPositionX = CFG.PADDING * 2;
        setPosX(i);
        setPosY(i2);
        setWidth(i3);
        setHeight(i4);
        this.sText2 = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str2);
        this.iText2Width = (int) Renderer.glyphLayout.width;
        setText(str);
        updateTextPosition();
        int i5 = 0;
        while (this.iTextWidth > (getWidth() - this.iText2Width) - CFG.PADDING && getText().length() > 5 && (i5 = i5 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(this.sText2, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, (((getPosX() + getWidth()) - (CFG.PADDING * 4)) - this.iText2Width) + i, getPosY() + i2, this.iText2Width + (CFG.PADDING * 4), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.4f));
        Images.gradientXY.draw(spriteBatch, (((getPosX() + getWidth()) - (CFG.PADDING * 4)) - this.iText2Width) + i, getPosY() + i2, this.iText2Width + (CFG.PADDING * 4), getHeight() / 2, false, true);
        Images.gradientXY.draw(spriteBatch, (((getPosX() + getWidth()) - (CFG.PADDING * 4)) - this.iText2Width) + i, getPosY() + (getHeight() / 2) + i2, this.iText2Width + (CFG.PADDING * 4), getHeight() / 2, false, false);
        Images.gradientFull.draw(spriteBatch, (((getPosX() + getWidth()) - (CFG.PADDING * 4)) - this.iText2Width) + i, ((getPosY() + getHeight()) - 2) + i2, this.iText2Width + (CFG.PADDING * 4), 1);
        Images.gradientFull.draw(spriteBatch, (((getPosX() + getWidth()) - (CFG.PADDING * 4)) - this.iText2Width) + i, getPosY() + 1 + i2, this.iText2Width + (CFG.PADDING * 4), 1);
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.2f));
        Images.gradientFull.draw(spriteBatch, (((getPosX() + getWidth()) - (CFG.PADDING * 4)) - this.iText2Width) + i, getPosY() + i2, this.iText2Width + (CFG.PADDING * 4), 1);
        Images.gradientFull.draw(spriteBatch, (((getPosX() + getWidth()) - (CFG.PADDING * 4)) - this.iText2Width) + i, ((getPosY() + getHeight()) - 1) + i2, this.iText2Width + (CFG.PADDING * 4), 1);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText, getPosX() + (CFG.PADDING * 2) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sText2, (((getPosX() + getWidth()) - (CFG.PADDING * 2)) - this.iText2Width) + i, ((getPosY() + (getHeight() / 2)) - (getTextHeight() / 2)) + i2, getColor2(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    protected Color getColor2(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setText(String str) {
        this.sText = str;
        try {
            Renderer.glyphLayout.setText(Renderer.fontMain.get(this.fontID), str);
            this.iTextWidth = (int) Renderer.glyphLayout.width;
            this.iTextHeight = (int) Renderer.glyphLayout.height;
            if (getHeight() < this.iTextHeight) {
                setHeight(this.iTextHeight);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
