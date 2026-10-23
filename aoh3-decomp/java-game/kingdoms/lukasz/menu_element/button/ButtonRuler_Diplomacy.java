package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextIcon2;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonRuler_Diplomacy extends Button {
    public int iCivID;

    public ButtonRuler_Diplomacy(int i, int i2, int i3) {
        this.iCivID = i;
        init(Game.getCiv(i).ruler.Name, CFG.FONT_REGULAR_SMALL, this.iTextPositionX, i2, i3, getButtonWidth(), getButtonHeight(), true, true, false, false);
        int i4 = 0;
        while (this.iTextWidth > getWidth() && getText().length() > 5 && (i4 = i4 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + "..");
        }
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.rulerFrame).getHeight() + getTextHeightBG();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.rulerFrame).getWidth();
    }

    public static int getTextHeightBG() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 3);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        if (Game.menuManager.getVisibleInGame_Civ() && InGame_Civ.iActiveCivID == this.iCivID) {
            Game.menuManager.setVisibleInGame_Civ(false);
        } else if (Game.getCiv(this.iCivID).getCapitalProvinceID() >= 0) {
            Game.setActiveProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
            ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            Game.menuManager.rebuildInGame_Civ();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        if (Game.getCiv(this.iCivID).getCapitalProvinceID() >= 0) {
            Game.mapCoords.centerToProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(this.iCivID, Game.ideologiesManager.getIdeology(Game.getCiv(this.iCivID).getIdeologyID()).RulerTitle + ": " + Game.getCiv(this.iCivID).ruler.Name));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationRank") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(this.iCivID).iCivRankPosition, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(this.iCivID), CFG.PADDING, 0));
        arrayList2.add(new MenuElement_HoverElement_Type_Text(" / " + CivilizationRanking.rankingMaxCivs, CFG.FONT_BOLD_SMALL, Colors.HOVER_RIGHT3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Provinces") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(this.iCivID).getNumOfProvinces(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.rulerFrame).getWidth(), ImageManager.getImage(Images.rulerFrame).getHeight());
        }
        spriteBatch.setColor(new Color(Colors.COLOR_STATS_RECT_BG.r, Colors.COLOR_STATS_RECT_BG.g, Colors.COLOR_STATS_RECT_BG.b, 0.5f));
        Renderer.drawBox(spriteBatch, Images.statsRectBG, getPosX() + i, getPosY() + i2, getWidth(), getHeight(), 1.0f);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setColor(TextIcon2.getColor_gradientXY());
        Images.gradientXY.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextHeightBG()) + i2, getWidth(), getTextHeightBG());
        spriteBatch.setColor(TextIcon2.getColor_gradientFull());
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - getTextHeightBG()) + i2, getWidth(), 1);
        Images.gradientFull.draw(spriteBatch, getPosX() + i, ((getPosY() + getHeight()) - 1) + i2, getWidth(), 1);
        spriteBatch.setColor(Color.WHITE);
        try {
            if (getRulerImage() != null) {
                getRulerImage().draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(Images.rulerFrame).getWidth(), ImageManager.getImage(Images.rulerFrame).getHeight());
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        ImageManager.getImage(Images.rulerFrame).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawText(spriteBatch, this.fontID, getText(), ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, (((getPosY() + ImageManager.getImage(Images.rulerFrame).getHeight()) + (getTextHeightBG() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        return Colors.getColorButtonHover(z, getIsHovered());
    }

    public Image getRulerImage() {
        return RulersManager.rulerIMG_DiplomacyLeft;
    }
}
