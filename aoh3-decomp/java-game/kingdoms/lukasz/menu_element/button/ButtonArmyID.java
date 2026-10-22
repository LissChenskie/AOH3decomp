package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonArmyID extends Button {
    public int iCivID;
    public int iProvinceID;

    public ButtonArmyID(int i, int i2, String str, int i3, int i4, int i5) {
        this.iCivID = 0;
        this.iProvinceID = 0;
        init(str, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i3, i4, 75, getButtonHeight(), true, true, false, false);
        setCurrent(i5);
        this.iCivID = i;
        this.iProvinceID = i2;
        setWidth(ImageManager.getImage(Images.flag_rect).getWidth() + getTextWidth() + (CFG.PADDING * 3));
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

    public static int getButtonHeight() {
        return (CFG.BUTTON_HEIGHT / 2) + CFG.PADDING;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(this.iProvinceID).getProvinceName(), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(getText() + " ", CFG.FONT_BOLD, Colors.HOVER_IMPORTANT));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Units"), CFG.FONT_BOLD));
        if (this.iCivID < 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.rebelsFlag, CFG.PADDING, 0));
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(this.iCivID, CFG.PADDING, 0));
        }
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, isArmyActive() ? 1.0f : getBoxAlpha(getClickable(), getIsHovered(), z)));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int i3 = this.iCivID;
        if (i3 < 0) {
            ImageManager.getImage(Images.rebelsFlag).draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flag_rect).getHeight() / 2)) + i2, ImageManager.getImage(Images.flag_rect).getWidth(), ImageManager.getImage(Images.flag_rect).getHeight());
        } else {
            Game.getCiv(i3).getFlag().draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flag_rect).getHeight() / 2)) + i2, ImageManager.getImage(Images.flag_rect).getWidth(), ImageManager.getImage(Images.flag_rect).getHeight());
        }
        ImageManager.getImage(Images.flag_rect).draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.flag_rect).getHeight() / 2)) + i2);
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), getPosX() + ImageManager.getImage(Images.flag_rect).getWidth() + (CFG.PADDING * 2) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    public boolean isArmyActive() {
        return InGame_ProvinceArmy.iActiveID == getCurrent();
    }
}
