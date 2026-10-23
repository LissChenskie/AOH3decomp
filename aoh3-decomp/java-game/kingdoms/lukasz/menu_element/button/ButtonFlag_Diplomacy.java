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
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonFlag_Diplomacy extends Button {
    public boolean arrowFlipX;
    public boolean drawArrow;
    public boolean drawArrows;
    public int iCivID;

    public ButtonFlag_Diplomacy(int i, int i2, int i3, boolean z) {
        this.drawArrow = false;
        this.drawArrows = false;
        this.arrowFlipX = true;
        init("", this.fontID, this.iTextPositionX, i2, i3, ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), ImageManager.getImage(Images.flagDiplomacyOver).getHeight(), z, true, false, false);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.iCivID = i;
    }

    public ButtonFlag_Diplomacy(int i, int i2, int i3, boolean z, boolean z2) {
        this.drawArrow = false;
        this.drawArrows = false;
        this.arrowFlipX = true;
        init("", this.fontID, this.iTextPositionX, i2, i3, ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), ImageManager.getImage(Images.flagDiplomacyOver).getHeight(), z, true, false, false);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.iCivID = i;
        this.drawArrow = z2;
        this.drawArrows = z2;
    }

    public ButtonFlag_Diplomacy(int i, int i2, int i3, boolean z, boolean z2, boolean z3) {
        this.drawArrow = false;
        this.drawArrows = false;
        this.arrowFlipX = true;
        init("", this.fontID, this.iTextPositionX, i2, i3, ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), ImageManager.getImage(Images.flagDiplomacyOver).getHeight(), z, true, false, false);
        this.typeOfElement = MenuElement_Type.BUTTON_FLAG;
        this.iCivID = i;
        this.drawArrow = z2;
        this.arrowFlipX = !z3;
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.flagDiplomacyOver).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
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
        if (Game.getCiv(getCurrent()).getCapitalProvinceID() <= 0 || getCurrent() != Game.getProvince(Game.getCiv(getCurrent()).getCapitalProvinceID()).getCivID()) {
            return;
        }
        Game.mapCoords.centerToProvinceID(Game.getCiv(getCurrent()).getCapitalProvinceID());
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (getFlagCivID() < 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rebelsFlag, 0, CFG.PADDING));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Rebels"), Colors.HOVER_LEFT));
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(getFlagCivID()).getCivName(), "", getFlagCivID(), CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD, Colors.HOVER_GOLD));
        }
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setShader(Renderer.shaderAlpha);
        if (getFlagCivID() >= 0) {
            Game.getCiv(getFlagCivID()).getFlag().getTexture().bind(1);
        } else if (getFlagCivID() < 0) {
            ImageManager.getImage(Images.rebelsFlag).getTexture().bind(1);
        } else {
            ImageManager.getImage(Images.randomCivilizationFlag).getTexture().bind(1);
        }
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.flagDiplomacyMask).draw(spriteBatch, getPosX() + i + ((ImageManager.getImage(Images.flagDiplomacyOver).getWidth() - ImageManager.getImage(Images.flagDiplomacyMask).getWidth()) / 2), getPosY() + i2 + ((ImageManager.getImage(Images.flagDiplomacyOver).getHeight() - ImageManager.getImage(Images.flagDiplomacyMask).getHeight()) / 2), ImageManager.getImage(Images.flagDiplomacyMask).getWidth(), ImageManager.getImage(Images.flagDiplomacyMask).getHeight());
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagDiplomacyOver).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (this.drawArrow) {
            if (!this.drawArrows) {
                ImageManager.getImage(Images.flagDiplomacyArrow).draw(spriteBatch, (((getPosX() + ImageManager.getImage(Images.flagDiplomacyOver).getWidth()) - ImageManager.getImage(Images.flagDiplomacyArrow).getWidth()) - (CFG.PADDING / 2)) + i, getPosY() + (CFG.PADDING / 2) + i2, this.arrowFlipX, false);
            } else {
                ImageManager.getImage(Images.flagDiplomacyArrow).draw(spriteBatch, (((getPosX() + ImageManager.getImage(Images.flagDiplomacyOver).getWidth()) - ImageManager.getImage(Images.flagDiplomacyArrow).getWidth()) - (CFG.PADDING / 2)) + i, getPosY() + (CFG.PADDING / 2) + i2);
                ImageManager.getImage(Images.flagDiplomacyArrow).draw(spriteBatch, (((getPosX() + ImageManager.getImage(Images.flagDiplomacyOver).getWidth()) - ImageManager.getImage(Images.flagDiplomacyArrow).getWidth()) - (CFG.PADDING / 2)) + i, getPosY() + CFG.PADDING + ImageManager.getImage(Images.flagDiplomacyArrow).getHeight() + i2, true, false);
            }
        }
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
