package aoc.kingdoms.lukasz.menu_element.textStatic;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class TextIcon3 extends Button {
    public int iTextBonusH;
    public int iTextBonusW;
    public int iconHeight;
    public int iconWidth;
    public int imageID;
    public String sTextBonus;

    public TextIcon3(String str, String str2, int i, int i2, int i3, int i4, int i5) {
        init(str, CFG.FONT_REGULAR, 0, i2, i3, i4, i5, true, true, false, false);
        this.imageID = i;
        float imageScale = getImageScale(i);
        this.iconWidth = (int) (ImageManager.getImage(i).getWidth() * imageScale);
        this.iconHeight = (int) (ImageManager.getImage(i).getHeight() * imageScale);
        this.sTextBonus = str2;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_BOLD), str2);
        this.iTextBonusW = (int) Renderer.glyphLayout.width;
        this.iTextBonusH = (int) Renderer.glyphLayout.height;
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText()));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(this.sTextBonus, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(this.imageID, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Image image = ImageManager.getImage(this.imageID);
        int posX = ((getPosX() + (getWidth() / 2)) - ((((this.iconWidth + CFG.PADDING) + getTextWidth()) + this.iTextBonusW) / 2)) + CFG.PADDING + getTextWidth() + this.iTextBonusW + i;
        int posY = getPosY();
        int height = getHeight();
        int i3 = this.iconHeight;
        image.draw(spriteBatch, posX, posY + ((height - i3) / 2) + i2, this.iconWidth, i3);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - ((((this.iconWidth + CFG.PADDING) + getTextWidth()) + this.iTextBonusW) / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
        Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_BOLD, this.sTextBonus, ((getPosX() + (getWidth() / 2)) - ((((this.iconWidth + CFG.PADDING) + getTextWidth()) + this.iTextBonusW) / 2)) + this.iTextWidth + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, Colors.COLOR_TEXT_MODIFIER_POSITIVE);
    }
}
