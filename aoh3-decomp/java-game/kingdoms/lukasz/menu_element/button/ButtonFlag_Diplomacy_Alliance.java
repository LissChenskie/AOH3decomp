package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menusInGame.AllianceSpecial.InGame_AllianceSpecial;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonFlag_Diplomacy_Alliance extends Button {
    public int allianceID;

    public ButtonFlag_Diplomacy_Alliance(int i, int i2, int i3, boolean z) {
        init("", this.fontID, this.iTextPositionX, i2, i3, ImageManager.getImage(Images.flagDiplomacyOver).getWidth(), ImageManager.getImage(Images.flagDiplomacyOver).getHeight(), z, true, false, false);
        this.allianceID = i;
    }

    public static int getButtonHeight() {
        return ImageManager.getImage(Images.flagDiplomacyOver).getHeight();
    }

    public static int getButtonWidth() {
        return ImageManager.getImage(Images.flagDiplomacyOver).getWidth();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 35 && InGame_AllianceSpecial.allianceID == getCurrent()) {
            Game.menuManager.setVisibleInGame_PopUp(false);
        } else {
            Game.menuManager.hideCourtCiv();
            Game.menuManager.rebuildInGame_AllianceSpecial(getCurrent());
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElementPPM() {
        try {
            if (this.allianceID < 0 || Game.alliancesSpecial.get(this.allianceID).iLeaderCivID < 0 || Game.getCiv(Game.alliancesSpecial.get(this.allianceID).iLeaderCivID).getCapitalProvinceID() < 0 || Game.alliancesSpecial.get(this.allianceID).iLeaderCivID != Game.getProvince(Game.getCiv(Game.alliancesSpecial.get(this.allianceID).iLeaderCivID).getCapitalProvinceID()).getCivID()) {
                return;
            }
            Game.mapCoords.centerToProvinceID(Game.getCiv(Game.alliancesSpecial.get(this.allianceID).iLeaderCivID).getCapitalProvinceID());
        } catch (Exception unused) {
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title_AllianceSpecial(this.allianceID, Game.getCiv(Game.alliancesSpecial.get(this.allianceID).iLeaderCivID).getCivName()));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Civilizations") + ": ", CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getAllianceSpecialNumOfCivs(this.allianceID), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        spriteBatch.setShader(Renderer.shaderAlpha);
        if (getFlagCivID() >= 0) {
            Game.alliancesSpecial_Flag.get(this.allianceID).getTexture().bind(1);
        } else {
            ImageManager.getImage(Images.randomCivilizationFlag).getTexture().bind(1);
        }
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.flagDiplomacyMask).draw(spriteBatch, getPosX() + i + ((ImageManager.getImage(Images.flagDiplomacyOver).getWidth() - ImageManager.getImage(Images.flagDiplomacyMask).getWidth()) / 2), getPosY() + i2 + ((ImageManager.getImage(Images.flagDiplomacyOver).getHeight() - ImageManager.getImage(Images.flagDiplomacyMask).getHeight()) / 2), ImageManager.getImage(Images.flagDiplomacyMask).getWidth(), ImageManager.getImage(Images.flagDiplomacyMask).getHeight());
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        ImageManager.getImage(Images.flagDiplomacyOver).draw(spriteBatch, getPosX() + i, getPosY() + i2);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.allianceID;
    }

    public int getFlagCivID() {
        return this.allianceID;
    }
}
