package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonArmyNoGeneral2 extends Button {
    public boolean canAssign;
    public int iCivID;

    public ButtonArmyNoGeneral2(String str, int i, int i2, int i3, boolean z) {
        init(str, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, ImageManager.getImage(Images.generalFrameBattle).getWidth(), getButtonHeight(), true, true, false, false);
        this.iCivID = i;
        this.canAssign = z;
        int i4 = 0;
        while (this.iTextWidth > getWidth() && getText().length() > 5 && (i4 = i4 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.generalFrameBattle).getHeight() + getStatsHeight();
    }

    public static int getStatsHeight() {
        return CFG.TEXT_HEIGHT_SMALL + (CFG.PADDING * 2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("NoGeneral"), CFG.FONT_BOLD));
        if (this.iCivID < 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.rebelsFlag, CFG.PADDING, 0));
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_FlagTitle(this.iCivID, CFG.PADDING, 0));
        }
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (!this.canAssign) {
            this.menuElementHover = new MenuElement_Hover(arrayList);
            return;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Empty());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SelectGeneralToRecruit"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.general, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrameBattle).getWidth(), ImageManager.getImage(Images.generalFrameBattle).getHeight());
        }
        Game.generalManager.noGeneral.draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrameBattle).getWidth(), ImageManager.getImage(Images.generalFrameBattle).getHeight());
        ImageManager.getImage(Images.generalFrameBattle).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (getIsHovered() || z) {
            spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 1.0f));
            Renderer.drawBox(spriteBatch, Images.statsRectBGBorder, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.generalFrameBattle).getWidth(), ImageManager.getImage(Images.generalFrameBattle).getHeight(), 1.0f);
            spriteBatch.setColor(Color.WHITE);
        }
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight() + i2, getWidth(), getStatsHeight());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight() + i2, getWidth(), getStatsHeight(), false, true);
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight() + i2, 1, getStatsHeight());
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, ((getPosX() + getWidth()) - 1) + i, getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight() + i2, 1, getStatsHeight());
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, getPosY() + ImageManager.getImage(Images.generalFrameBattle).getHeight() + CFG.PADDING + i2, getColor(z));
    }
}
