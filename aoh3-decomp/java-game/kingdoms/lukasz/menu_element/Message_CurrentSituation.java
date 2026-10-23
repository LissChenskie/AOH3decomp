package aoc.kingdoms.lukasz.menu_element;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.button.Button;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Message_CurrentSituation extends Button {
    public int lastValue = -997654;

    public Message_CurrentSituation(int i, int i2) {
        init("", CFG.FONT_REGULAR, this.iTextPositionX, i, i2, ImageManager.getImage(Images.currentSituationBG).getWidth(), ImageManager.getImage(Images.currentSituationBG).getHeight(), true, true, false, false);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CurrentSituation"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Messages") + ": ", CFG.FONT_REGULAR_SMALL));
        arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.player.currSituation.currentSituationNum, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.player.currSituation.currentSituationNum > 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.player.currSituation.noActiveResearch) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NoActiveResearch"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.maxAmountOfGold) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("MaximumAmountOfGold") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fGold, 1) + " / " + CFG.getPrecision2(Game.getMaxAmountOfGold(Game.player.iCivID), 1), CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.missionCanBeUnlocked) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Missions") + ": " + Game.lang.get("Available"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.missions, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.chooseRivals) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ChooseYourRivals"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rivals, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.newLawAvailable) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Law") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.lang.get("Unlocked"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.law, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.availableAdvantage) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AdvantagePoints") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.player.iCivID).getAdvantagePoints(), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.advantages, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.highInflation) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(gpVDKipRURuzw.JRokfpATExR) + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getCiv(Game.player.iCivID).getInflation() * 100.0f, 100) + "%", CFG.FONT_BOLD_SMALL, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.inflation, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.nonCoreProvinces) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NonCoreProvince"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.core, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.differentReligionProvinces) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("DifferentReligion"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.religion, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.availableCivilizationLegacy) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AvailableCivilizationLegacy"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.noAdvisor > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NoAdvisor"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skill, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.promoteAdvisor > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("PromoteAdvisor"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.skill, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.lackOfGeneral) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LackOfGeneral"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.upgradeCapitalCity) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UpgradeCapitalCity"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.capital, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.upgradeSupremeCourt) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UpgradeSupremeCourt"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.stability, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.militaryAcademyCanBeUpgraded) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UpgradeMilitaryAcademy"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.militaryAcademyForGeneralsCanBeUpgraded) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UpgradeMilitaryAcademyForGenerals"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.general, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.upgradeNuclearReactor) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("UpgradeNuclearReactor"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.nuke, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            if (Game.player.currSituation.wonderCanBeBuilt) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AWonderCanBeBuilt"), CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.mapModesWonders, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        ImageManager.getImage(Images.currentSituationBG).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (getIsHovered()) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.2f));
            spriteBatch.setShader(Renderer.shaderAlpha);
            Images.gradientXY.getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.currentSituationBG).draw(spriteBatch, getPosX() + i, getPosY() + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        Renderer.drawText(spriteBatch, this.fontID, getTextToDraw(), ((getPosX() + (getWidth() / 2)) - (this.iTextWidth / 2)) + i, ((getPosY() + (getHeight() / 2)) - (this.iTextHeight / 2)) + i2, getColor(z));
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected Color getColor(boolean z) {
        if (z) {
            return Colors.TEXT_CURRENT_SITUATION_ACTIVE;
        }
        return getIsHovered() ? Colors.TEXT_CURRENT_SITUATION_HOVER : Colors.TEXT_CURRENT_SITUATION;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
    public String getTextToDraw() {
        if (this.lastValue != Game.player.currSituation.currentSituationNum) {
            setText("" + Game.player.currSituation.currentSituationNum);
            this.lastValue = Game.player.currSituation.currentSituationNum;
        }
        return super.getTextToDraw();
    }
}
