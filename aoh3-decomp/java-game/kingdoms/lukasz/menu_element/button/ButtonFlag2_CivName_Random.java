package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonFlag2_CivName_Random extends Button {
    public ButtonFlag2_CivName_Random(int i, int i2, boolean z) {
        init(Game.lang.get("Random"), CFG.FONT_REGULAR_SMALL, -1, i, i2, Math.max(CFG.BUTTON_WIDTH, ImageManager.getImage(Images.flagOverDefault).getHeight()), ImageManager.getImage(Images.flagOverDefault).getHeight() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2), z, true, false, false);
        int i3 = 0;
        while (true) {
            if (this.iTextWidth < (getWidth() - (this.iTextPositionX > 0 ? this.iTextPositionX : 0)) - CFG.PADDING || getText().length() <= 5 || (i3 = i3 + 1) >= 100) {
                return;
            } else {
                setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
            }
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
    public void actionElement() {
        int iIntValue;
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < Game.getCivsSize(); i++) {
                if (Game.getCiv(i).getNumOfProvinces() > 0) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            if (arrayList.isEmpty() || Game.player.iCivID == (iIntValue = ((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue())) {
                return;
            }
            Game.player.iCivID = iIntValue;
            Game.menuManager.rebuildNewGameCiv();
            if (Game.getCiv(Game.player.iCivID).getCapitalProvinceID() >= 0) {
                Game.mapCoords.centerToProvinceID(Game.getCiv(Game.player.iCivID).getCapitalProvinceID());
                Game.setActiveProvinceID(Game.getCiv(Game.player.iCivID).getCapitalProvinceID());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
                Game.menuManager.addToastGold(Game.getCiv(Game.player.iCivID).getCivName(), Images.dice);
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("RandomCivilization"), Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.dice, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int posY;
        int height;
        if (getIsHovered() || z) {
            posY = getPosY();
            height = getHeight();
        } else {
            posY = getPosY() + CFG.TEXT_HEIGHT + (CFG.PADDING * 2);
            height = (getHeight() - CFG.TEXT_HEIGHT) - (CFG.PADDING * 2);
        }
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, getBoxAlpha(getClickable(), getIsHovered(), z)));
        int i3 = posY + i2;
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, i3, getWidth(), height, 1.0f);
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.dice).draw(spriteBatch, getPosX() + i + ((getWidth() - ImageManager.getImage(Images.dice).getWidth()) / 2), i3 + ((ImageManager.getImage(Images.flagOverDefault).getHeight() - ImageManager.getImage(Images.dice).getHeight()) / 2));
        if (getIsHovered() || z) {
            Renderer.drawText(spriteBatch, this.fontID, this.sText, getPosX() + this.textPosition.getTextPosition() + i, (((getPosY() + ImageManager.getImage(Images.flagOverDefault).getHeight()) + ((CFG.TEXT_HEIGHT + (CFG.PADDING * 2)) / 2)) - (getTextHeight() / 2)) + i2, getColor(z));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
    }
}
