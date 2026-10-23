package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement_Type;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonFlagRect extends Button {
    public int iCivID;

    public ButtonFlagRect(int i, int i2, int i3, boolean z) {
        init("", this.fontID, this.iTextPositionX, i2, i3, ImageManager.getImage(Images.flagRect2).getWidth(), ImageManager.getImage(Images.flagRect2).getHeight(), z, true, false, false);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.iCivID = i;
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.flagRect2).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.flagRect2).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        int i = this.iCivID;
        if (i < 0 || i == InGame_Civ.iActiveCivID) {
            if (Game.getCiv(this.iCivID).getCapitalProvinceID() < 0 || Game.getProvince(Game.getCiv(this.iCivID).getCapitalProvinceID()).getCivID() != this.iCivID) {
                return;
            }
            Game.mapCoords.centerToProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
            Game.setActiveProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
            ProvinceBorderManager.action.setProvinceID(Game.getCiv(this.iCivID).getCapitalProvinceID());
            return;
        }
        InGame_Civ.iRebuildToCivID = this.iCivID;
        Game.menuManager.rebuildInGame_Civ();
        InGame_Civ.lTime = 0L;
        if (!Game.menuManager.getVisibleInGame_CivBonuses() || InGame_Civ.iActiveCivID == 0 || InGame_CivBonuses.iCivID == InGame_Civ.iActiveCivID) {
            return;
        }
        InGame_CivBonuses.iCivID = InGame_Civ.iActiveCivID;
        Game.menuManager.rebuildInGame_CivBonuses();
        Game.menuManager.setVisibleInGame_CivBonuses(true);
        InGame_CivBonuses.lTime = 0L;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        if (getCurrent() <= 0 || Game.getCiv(getCurrent()).getCapitalProvinceID() < 0 || getCurrent() != Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getCivID()) {
            return;
        }
        Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setShader(Renderer.shaderAlpha);
        if (getFlagCivID() >= 0) {
            Game.getCiv(getFlagCivID()).getFlag().getTexture().bind(1);
        } else {
            ImageManager.getImage(Images.randomCivilizationFlag).getTexture().bind(1);
        }
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.flagRect2Mask).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagRect2).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iCivID;
    }

    public int getFlagCivID() {
        return this.iCivID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void setIsHovered(boolean z) {
        super.setIsHovered(z);
        if (z) {
            ProvinceDraw.drawProvincesCiv_HoveredFlagID = this.iCivID;
        }
    }
}
