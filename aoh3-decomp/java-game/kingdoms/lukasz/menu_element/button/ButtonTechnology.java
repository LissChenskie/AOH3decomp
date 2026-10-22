package aoc.kingdoms.lukasz.menu_element.button;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.AdvantagesManager;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.LawsManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusIdeology;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_Unit;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Title;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyChoose;
import aoc.kingdoms.lukasz.menusInGame.Technology.InGame_TechnologyTree;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.ia.uNBYrZVGzy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ButtonTechnology extends Button {
    public static int techIconHeight;
    public static int techIconWidth;
    public List<Integer> advantages;
    public int btnIMG;
    public int iCivID;
    public int iCostHeight;
    public int iCostWidth;
    public int iImageID;
    public int iQueueHeight;
    public int iQueueWidth;
    public int iTechnologyID;
    public List<Integer> ideologies;
    public boolean inTechTree;
    public String sCost;
    public String sQueue;

    public ButtonTechnology(int i, int i2, int i3, int i4, boolean z, int i5) {
        this.sQueue = null;
        this.ideologies = new ArrayList();
        this.advantages = new ArrayList();
        this.iCivID = Game.player.iCivID;
        init(i, i2, i3, i4, z, i5);
    }

    public ButtonTechnology(int i, int i2, int i3, int i4, boolean z, int i5, int i6) {
        this.sQueue = null;
        this.ideologies = new ArrayList();
        this.advantages = new ArrayList();
        this.iCivID = i6;
        init(i, i2, i3, i4, z, i5);
    }

    private final float getImageScale(int i) {
        return CFG.TEXT_HEIGHT / ImageManager.getImage(i).getHeight();
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void actionElement() {
        if (this.btnIMG == Images.techAvailable) {
            Game.player.playerData.techQueue.lTechQueue.clear();
            Game.getCiv(Game.player.iCivID).setActiveTechResearch(this.iTechnologyID);
            if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                Game.menuManager.rebuildInGame_TechnologyTree(true, false);
                InGame_TechnologyTree.lTime = 0L;
            }
            if (Game.menuManager.getVisibleInGame_TechnologyChoose() && InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE) {
                Game.menuManager.rebuildInGame_TechnologyChoose(true, false);
                InGame_TechnologyChoose.lTime = 0L;
            }
            Game.player.currSituation.updateCurrentSituation();
            return;
        }
        if (this.btnIMG == Images.techBlue) {
            Game.player.playerData.techQueue.lTechQueue.clear();
            if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                Game.menuManager.rebuildInGame_TechnologyTree(true, false);
                InGame_TechnologyTree.lTime = 0L;
            }
            if (Game.menuManager.getVisibleInGame_TechnologyChoose() && InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE) {
                Game.menuManager.rebuildInGame_TechnologyChoose(true, false);
                InGame_TechnologyChoose.lTime = 0L;
                return;
            }
            return;
        }
        if (this.btnIMG == Images.techGray) {
            Game.player.playerData.techQueue.buildTechQueue(this.iTechnologyID);
            int techQueue = Game.player.playerData.techQueue.getTechQueue();
            if (techQueue >= 0) {
                Game.getCiv(Game.player.iCivID).setActiveTechResearch(techQueue);
            }
            if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                Game.menuManager.rebuildInGame_TechnologyTree(true, false);
                InGame_TechnologyTree.lTime = 0L;
            }
            if (Game.menuManager.getVisibleInGame_TechnologyChoose() && InGame_TechnologyChoose.IN_TECHNOLOGY_CHOOSE) {
                Game.menuManager.rebuildInGame_TechnologyChoose(true, false);
                InGame_TechnologyChoose.lTime = 0L;
            }
            Game.player.currSituation.updateCurrentSituation();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public void buildElementHover() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Title(Game_Calendar.IMG_TECHNOLOGY, "", TechnologyTree.lTechnology.get(this.iTechnologyID).Name, Colors.HOVER_GOLD, Game.lang.get("Unlocks"), "", Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        boolean z2 = true;
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).RequiredTech < 0 || Game.getCiv(this.iCivID).getTechResearched(TechnologyTree.lTechnology.get(this.iTechnologyID).RequiredTech)) {
            z = false;
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RequiredTechnology") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(TechnologyTree.lTechnology.get(TechnologyTree.lTechnology.get(this.iTechnologyID).RequiredTech).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            z = true;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).RequiredTech2 < 0 || Game.getCiv(this.iCivID).getTechResearched(TechnologyTree.lTechnology.get(this.iTechnologyID).RequiredTech2)) {
            z2 = z;
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RequiredTechnology") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(TechnologyTree.lTechnology.get(TechnologyTree.lTechnology.get(this.iTechnologyID).RequiredTech2).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (z2) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).UnlocksNukes) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button(Game.lang.get("NuclearWeapons"), Images.nuke, CFG.FONT_REGULAR_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).UnlocksAccessToTheSea) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button(Game.lang.get("AllowsYourArmyGoToTheSea"), Images.ship, CFG.FONT_REGULAR_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).UnlocksColonization) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button(Game.lang.get("Colonization"), Images.population, CFG.FONT_REGULAR_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        for (int i = 0; i < LawsManager.iLawsSize; i++) {
            for (int i2 = 0; i2 < LawsManager.laws.get(i).RequiredTechID.length; i2++) {
                if (LawsManager.laws.get(i).RequiredTechID[i2] == this.iTechnologyID) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Button(Game.lang.get(LawsManager.laws.get(i).Law[i2]), Images.law, CFG.FONT_REGULAR_SMALL));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
        }
        if (TechnologyTree.lTechUnlocksBuildings.get(this.iTechnologyID).size() > 0) {
            for (int i3 = 0; i3 < TechnologyTree.lTechUnlocksBuildings.get(this.iTechnologyID).size(); i3++) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button(BuildingsManager.buildings.get(TechnologyTree.lTechUnlocksBuildings.get(this.iTechnologyID).get(i3).building).Name[TechnologyTree.lTechUnlocksBuildings.get(this.iTechnologyID).get(i3).buildingID], Images.build, CFG.FONT_REGULAR_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        for (int i4 = 0; i4 < ArmyManager.iUnitsTypesSize; i4++) {
            for (int i5 = 0; i5 < ArmyManager.lArmySize.get(i4).intValue(); i5++) {
                if (ArmyManager.lArmy.get(i4).get(i5).RequiredTechID == this.iTechnologyID) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_Unit(ArmyManager.lArmy.get(i4).get(i5).Name, Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, "" + ArmyManager.lArmy.get(i4).get(i5).getAttack(this.iCivID), "" + ArmyManager.lArmy.get(i4).get(i5).getDefense(this.iCivID)));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).BattleWidth != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BattleWidth") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).BattleWidth > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).BattleWidth, Images.battleWidth, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).UnitsAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsAttack") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).UnitsAttack > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).UnitsAttack, Images.attack, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).UnitsDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsDefense") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).UnitsDefense > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).UnitsDefense, Images.defense, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).GeneralAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsAttack") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).GeneralAttack > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).GeneralAttack, Images.attack, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).GeneralDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsDefense") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).GeneralDefense > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).GeneralDefense, Images.defense, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).MaxMorale != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaxMorale") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).MaxMorale > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).MaxMorale, Images.morale, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).Discipline != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Discipline") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).Discipline > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).Discipline, Images.discipline, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfCapitalCity != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumLevelOfCapitalCity") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfCapitalCity > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfCapitalCity, Images.capital, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfTheMilitaryAcademy != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumLevelOfTheMilitaryAcademy") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfTheMilitaryAcademy > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfTheMilitaryAcademy, Game_Calendar.IMG_MANPOWER, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfTheMilitaryAcademyForGenerals != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumLevelOfTheMilitaryAcademyForGenerals") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfTheMilitaryAcademyForGenerals > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfTheMilitaryAcademyForGenerals, Images.general, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).Legacy != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(uNBYrZVGzy.zWdHa) + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).Legacy > 0 ? "+" : "") + TechnologyTree.lTechnology.get(this.iTechnologyID).Legacy, Images.legacy, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).Gold != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Gold") + ": ", (TechnologyTree.lTechnology.get(this.iTechnologyID).Gold <= 0 ? "" : "+") + TechnologyTree.lTechnology.get(this.iTechnologyID).Gold, Images.gold, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        for (int i6 = 0; i6 < Game.ideologiesManager.getIdeologiesSize(); i6++) {
            if (Game.ideologiesManager.getIdeology(i6).REQUIRED_TECHNOLOGY == this.iTechnologyID) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusIdeology(Game.lang.get("Government") + ": ", Game.ideologiesManager.getIdeology(i6).Name, i6, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        for (int i7 = 0; i7 < this.advantages.size(); i7++) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(AdvantagesManager.getAdvantageName(this.advantages.get(i7).intValue()), "", Images.advantages, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (CFG.debugMode) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("ID: ", "" + this.iTechnologyID, Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (this.iCivID == Game.player.iCivID && !Game.getCiv(this.iCivID).getTechResearched(this.iTechnologyID)) {
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ClickToStartResearching"), CFG.FONT_BOLD_SMALL, Colors.HOVER_POSITIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        this.menuElementHover = new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawButtonBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        if (getIsHovered() || z) {
            Renderer.drawBoxCorner(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), getHeight());
        }
        ImageManager.getImage(this.btnIMG).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (this.btnIMG == Images.techBlue || this.btnIMG == Images.techAvailable) {
            float researchProgress = Game.getCiv(this.iCivID).getResearchProgress(this.iTechnologyID);
            if (researchProgress > 0.0f) {
                ImageManager.getImage(Images.techResearched).draw2(spriteBatch, getPosX() + i, getPosY() + i2, (int) (ImageManager.getImage(Images.techResearched).getWidth() * researchProgress), ImageManager.getImage(Images.techResearched).getHeight());
            }
        }
        TechnologyTree.technologyImages.get(this.iImageID).draw(spriteBatch, getPosX() + i, getPosY() + i2);
        if (getIsHovered()) {
            spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.05f));
            ImageManager.getImage(Images.gradientFull2).draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(this.btnIMG).getWidth(), ImageManager.getImage(this.btnIMG).getHeight());
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, ImageManager.getImage(this.btnIMG).getWidth(), ImageManager.getImage(this.btnIMG).getHeight());
            spriteBatch.setColor(Color.WHITE);
        }
        if (this.btnIMG == Images.techResearched) {
            spriteBatch.setColor(new Color(Colors.TECH_RESEARCHED.r, Colors.TECH_RESEARCHED.g, Colors.TECH_RESEARCHED.b, 0.8f));
            ImageManager.getImage(Images.techCorner).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth() - ImageManager.getImage(Images.techCorner).getWidth(), titleH());
            ImageManager.getImage(Images.techCorner).draw2(spriteBatch, ((getPosX() + getWidth()) - ImageManager.getImage(Images.techCorner).getWidth()) + i, getPosY() + i2, ImageManager.getImage(Images.techCorner).getWidth(), titleH(), true, false);
            spriteBatch.setColor(new Color(Colors.TECH_RESEARCHED.r, Colors.TECH_RESEARCHED.g, Colors.TECH_RESEARCHED.b, 0.25f));
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.35f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
            spriteBatch.setColor(new Color(Colors.TECH_RESEARCHED2.r, Colors.TECH_RESEARCHED2.g, Colors.TECH_RESEARCHED2.b, 1.0f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
            spriteBatch.setColor(new Color(Colors.TECH_RESEARCHED3.r, Colors.TECH_RESEARCHED3.g, Colors.TECH_RESEARCHED3.b, 0.8f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), CFG.PADDING, false, true);
            spriteBatch.setColor(new Color(Colors.TECH_RESEARCHED.r, Colors.TECH_RESEARCHED.g, Colors.TECH_RESEARCHED.b, 1.0f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), 1);
        } else if (this.btnIMG == Images.techGray) {
            spriteBatch.setColor(new Color(Colors.TECH_GRAY.r, Colors.TECH_GRAY.g, Colors.TECH_GRAY.b, 0.8f));
            ImageManager.getImage(Images.techCorner).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth() - ImageManager.getImage(Images.techCorner).getWidth(), titleH());
            ImageManager.getImage(Images.techCorner).draw2(spriteBatch, ((getPosX() + getWidth()) - ImageManager.getImage(Images.techCorner).getWidth()) + i, getPosY() + i2, ImageManager.getImage(Images.techCorner).getWidth(), titleH(), true, false);
            spriteBatch.setColor(new Color(Colors.TECH_GRAY.r, Colors.TECH_GRAY.g, Colors.TECH_GRAY.b, 0.25f));
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.35f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
            spriteBatch.setColor(new Color(Colors.TECH_GRAY2.r, Colors.TECH_GRAY2.g, Colors.TECH_GRAY2.b, 1.0f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
            spriteBatch.setColor(new Color(Colors.TECH_GRAY3.r, Colors.TECH_GRAY3.g, Colors.TECH_GRAY3.b, 0.8f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), CFG.PADDING, false, true);
            spriteBatch.setColor(new Color(Colors.TECH_GRAY.r, Colors.TECH_GRAY.g, Colors.TECH_GRAY.b, 1.0f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), 1);
        } else if (this.btnIMG == Images.techBlue) {
            float researchProgress2 = Game.getCiv(this.iCivID).getResearchProgress(this.iTechnologyID);
            if (researchProgress2 >= 0.0f) {
                float fMax = Math.max(researchProgress2, 0.01f);
                Renderer.clipView_Start(spriteBatch, getPosX() + ((int) (getWidth() * fMax)) + i, CFG.GAME_HEIGHT - (getPosY() + i2), (int) (getWidth() - (getWidth() * fMax)), -getHeight());
                spriteBatch.setColor(new Color(Colors.TECH_BLUE.r, Colors.TECH_BLUE.g, Colors.TECH_BLUE.b, 0.8f));
                ImageManager.getImage(Images.techCorner).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth() - ImageManager.getImage(Images.techCorner).getWidth(), titleH());
                ImageManager.getImage(Images.techCorner).draw2(spriteBatch, ((getPosX() + getWidth()) - ImageManager.getImage(Images.techCorner).getWidth()) + i, getPosY() + i2, ImageManager.getImage(Images.techCorner).getWidth(), titleH(), true, false);
                spriteBatch.setColor(new Color(Colors.TECH_BLUE.r, Colors.TECH_BLUE.g, Colors.TECH_BLUE.b, 0.25f));
                spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.35f));
                Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
                spriteBatch.setColor(new Color(Colors.TECH_BLUE2.r, Colors.TECH_BLUE2.g, Colors.TECH_BLUE2.b, 1.0f));
                Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
                spriteBatch.setColor(new Color(Colors.TECH_BLUE3.r, Colors.TECH_BLUE3.g, Colors.TECH_BLUE3.b, 0.8f));
                Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), CFG.PADDING, false, true);
                spriteBatch.setColor(new Color(Colors.TECH_BLUE.r, Colors.TECH_BLUE.g, Colors.TECH_BLUE.b, 1.0f));
                Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), 1);
                Renderer.clipView_End(spriteBatch);
                Renderer.clipView_Start(spriteBatch, getPosX() + i, CFG.GAME_HEIGHT - (getPosY() + i2), (int) (getWidth() * fMax), -getHeight());
                spriteBatch.setColor(new Color(Colors.TECH_RESEARCHED.r, Colors.TECH_RESEARCHED.g, Colors.TECH_RESEARCHED.b, 0.8f));
                ImageManager.getImage(Images.techCorner).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth() - ImageManager.getImage(Images.techCorner).getWidth(), titleH());
                ImageManager.getImage(Images.techCorner).draw2(spriteBatch, ((getPosX() + getWidth()) - ImageManager.getImage(Images.techCorner).getWidth()) + i, getPosY() + i2, ImageManager.getImage(Images.techCorner).getWidth(), titleH(), true, false);
                spriteBatch.setColor(new Color(Colors.TECH_RESEARCHED.r, Colors.TECH_RESEARCHED.g, Colors.TECH_RESEARCHED.b, 0.25f));
                spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.35f));
                Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
                spriteBatch.setColor(new Color(Colors.TECH_RESEARCHED2.r, Colors.TECH_RESEARCHED2.g, Colors.TECH_RESEARCHED2.b, 1.0f));
                Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
                spriteBatch.setColor(new Color(Colors.TECH_RESEARCHED3.r, Colors.TECH_RESEARCHED3.g, Colors.TECH_RESEARCHED3.b, 0.8f));
                Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), CFG.PADDING, false, true);
                spriteBatch.setColor(new Color(Colors.TECH_RESEARCHED.r, Colors.TECH_RESEARCHED.g, Colors.TECH_RESEARCHED.b, 1.0f));
                Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), 1);
                Renderer.clipView_End(spriteBatch);
            } else {
                spriteBatch.setColor(new Color(Colors.TECH_BLUE.r, Colors.TECH_BLUE.g, Colors.TECH_BLUE.b, 0.8f));
                ImageManager.getImage(Images.techCorner).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth() - ImageManager.getImage(Images.techCorner).getWidth(), titleH());
                ImageManager.getImage(Images.techCorner).draw2(spriteBatch, ((getPosX() + getWidth()) - ImageManager.getImage(Images.techCorner).getWidth()) + i, getPosY() + i2, ImageManager.getImage(Images.techCorner).getWidth(), titleH(), true, false);
                spriteBatch.setColor(new Color(Colors.TECH_BLUE.r, Colors.TECH_BLUE.g, Colors.TECH_BLUE.b, 0.25f));
                spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.35f));
                Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
                spriteBatch.setColor(new Color(Colors.TECH_BLUE2.r, Colors.TECH_BLUE2.g, Colors.TECH_BLUE2.b, 1.0f));
                Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
                spriteBatch.setColor(new Color(Colors.TECH_BLUE3.r, Colors.TECH_BLUE3.g, Colors.TECH_BLUE3.b, 0.8f));
                Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), CFG.PADDING, false, true);
                spriteBatch.setColor(new Color(Colors.TECH_BLUE.r, Colors.TECH_BLUE.g, Colors.TECH_BLUE.b, 1.0f));
                Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), 1);
            }
        } else {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.8f));
            ImageManager.getImage(Images.techCorner).draw2(spriteBatch, getPosX() + i, getPosY() + i2, getWidth() - ImageManager.getImage(Images.techCorner).getWidth(), titleH());
            ImageManager.getImage(Images.techCorner).draw2(spriteBatch, ((getPosX() + getWidth()) - ImageManager.getImage(Images.techCorner).getWidth()) + i, getPosY() + i2, ImageManager.getImage(Images.techCorner).getWidth(), titleH(), true, false);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.25f));
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT.r, Colors.COLOR_GRADIENT.g, Colors.COLOR_GRADIENT.b, 0.35f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
            spriteBatch.setColor(Colors.COLOR_GRADIENT);
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), titleH());
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 1.0f));
            Images.gradientXY.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), CFG.PADDING, false, true);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 1.0f));
            Images.gradientFull.draw(spriteBatch, getPosX() + i, getPosY() + titleH() + i2, getWidth(), 1);
        }
        spriteBatch.setColor(Color.WHITE);
    }

    @Override // aoc.kingdoms.lukasz.menu_element.button.Button
    protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        int height = CFG.PADDING * 2;
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).UnlocksNukes && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.techNuke).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).UnlocksAccessToTheSea && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.techSea).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechUnlocksBuildings.get(this.iTechnologyID).size() > 0) {
            for (int i3 = 0; i3 < TechnologyTree.lTechUnlocksBuildings.get(this.iTechnologyID).size(); i3++) {
                spriteBatch.setShader(Renderer.shaderAlpha);
                BuildingsManager.buildingImages.get(BuildingsManager.buildings.get(TechnologyTree.lTechUnlocksBuildings.get(this.iTechnologyID).get(i3).building).ImageID[TechnologyTree.lTechUnlocksBuildings.get(this.iTechnologyID).get(i3).buildingID]).getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                ImageManager.getImage(Images.techMask).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techMask).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, getPosY() + titleH() + CFG.PADDING + i2);
                spriteBatch.flush();
                spriteBatch.setShader(Renderer.shaderDefault);
                ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
                height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
                if (ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING >= getWidth()) {
                    break;
                }
            }
        }
        if (TechnologyTree.lTechUnlocksUnits.get(this.iTechnologyID).size() > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            for (int i4 = 0; i4 < TechnologyTree.lTechUnlocksUnits.get(this.iTechnologyID).size(); i4++) {
                spriteBatch.setShader(Renderer.shaderAlpha);
                ArmyManager.armyImages.get(ArmyManager.lArmy.get(TechnologyTree.lTechUnlocksUnits.get(this.iTechnologyID).get(i4).unitID).get(TechnologyTree.lTechUnlocksUnits.get(this.iTechnologyID).get(i4).armyID).ImageID).getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                ImageManager.getImage(Images.techMask).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techMask).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, getPosY() + titleH() + CFG.PADDING + i2);
                spriteBatch.flush();
                spriteBatch.setShader(Renderer.shaderDefault);
                ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
                height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
                if (ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING >= getWidth()) {
                    break;
                }
            }
        }
        if (TechnologyTree.lTechUnlocksLaws.get(this.iTechnologyID).size() > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            for (int i5 = 0; i5 < TechnologyTree.lTechUnlocksLaws.get(this.iTechnologyID).size(); i5++) {
                spriteBatch.setShader(Renderer.shaderAlpha);
                LawsManager.lawsImages.get(LawsManager.laws.get(TechnologyTree.lTechUnlocksLaws.get(this.iTechnologyID).get(i5).law).ImageID[TechnologyTree.lTechUnlocksLaws.get(this.iTechnologyID).get(i5).lawID]).getTexture().bind(1);
                Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
                spriteBatch.flush();
                spriteBatch.setShader(Renderer.shaderDefault);
                ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
                height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
                if (ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING >= getWidth()) {
                    break;
                }
            }
        }
        if (this.ideologies.size() > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            for (int i6 = 0; i6 < this.ideologies.size(); i6++) {
                if (ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
                    spriteBatch.setShader(Renderer.shaderAlpha);
                    ImageManager.getImage(Images.techEmpty).getTexture().bind(1);
                    Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                    ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
                    spriteBatch.flush();
                    spriteBatch.setShader(Renderer.shaderDefault);
                    Game.ideologiesManager.ideologiesImages.get(this.ideologies.get(i6).intValue()).draw(spriteBatch, ((((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + (ImageManager.getImage(Images.techOver).getWidth() / 2)) - (Game.ideologiesManager.ideologiesImages.get(this.ideologies.get(i6).intValue()).getWidth() / 2)) + i, (((((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + (ImageManager.getImage(Images.techOver).getHeight() / 2)) - (Game.ideologiesManager.ideologiesImages.get(this.ideologies.get(i6).intValue()).getHeight() / 2)) + i2);
                    ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
                    height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
                }
            }
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfCapitalCity > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.buildingCapital.get(Math.min(Game.getCiv(this.iCivID).getCapitalLevel(), GameValues.capital.CAPITAL_IMAGES - 1)).intValue()).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfTheMilitaryAcademy > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.armyMilitaryAcademy).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).MaximumLevelOfTheMilitaryAcademyForGenerals > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.armyGeneralAcademy).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).BattleWidth > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.techBattleWidth).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).GeneralAttack > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.techGeneral).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).GeneralDefense > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.techGeneral).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).MaxMorale > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.techMorale).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).Discipline > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.techDiscipline).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).UnitsAttack > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.techAttack).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).UnitsDefense > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.techDefense).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (TechnologyTree.lTechnology.get(this.iTechnologyID).Legacy > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            spriteBatch.setShader(Renderer.shaderAlpha);
            ImageManager.getImage(Images.techLegacy).getTexture().bind(1);
            Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
            ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            spriteBatch.flush();
            spriteBatch.setShader(Renderer.shaderDefault);
            ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
            height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
        }
        if (this.advantages.size() > 0 && ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
            for (int i7 = 0; i7 < this.advantages.size(); i7++) {
                if (ImageManager.getImage(Images.techMask).getHeight() + height + CFG.PADDING <= getWidth()) {
                    spriteBatch.setShader(Renderer.shaderAlpha);
                    AdvantagesManager.advantagesImages.get(AdvantagesManager.advantages.get(this.advantages.get(i7).intValue()).ImageID[0]).getTexture().bind(1);
                    Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
                    ImageManager.getImage(Images.techMaskSquare).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
                    spriteBatch.flush();
                    spriteBatch.setShader(Renderer.shaderDefault);
                    ImageManager.getImage(Images.techOver).draw(spriteBatch, ((getPosX() + height) - ((ImageManager.getImage(Images.techOver).getWidth() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i, (((getPosY() + titleH()) + CFG.PADDING) - ((ImageManager.getImage(Images.techOver).getHeight() - ImageManager.getImage(Images.techMask).getHeight()) / 2)) + i2);
                    height += ImageManager.getImage(Images.techMask).getHeight() + CFG.PADDING;
                }
            }
        }
        Renderer.drawTextWithShadow(spriteBatch, this.fontID, getText(), getPosX() + (CFG.PADDING * 2) + i, getPosY() + CFG.PADDING + (CFG.PADDING / 2) + i2, Colors.getColorTopStats2(z, getIsHovered()));
        if (this.inTechTree && this.btnIMG != Images.techResearched) {
            ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).draw(spriteBatch, (((getPosX() + getWidth()) - techIconWidth) - (CFG.PADDING * 2)) + i, getPosY() + CFG.PADDING + (CFG.PADDING / 2) + i2, techIconWidth, techIconHeight);
            Renderer.drawTextWithShadow(spriteBatch, CFG.FONT_REGULAR_SMALL, this.sCost, ((((getPosX() + getWidth()) - (CFG.PADDING * 3)) - this.iCostWidth) - techIconWidth) + i, getPosY() + CFG.PADDING + (CFG.PADDING / 2) + i2, Colors.HOVER_RIGHT2);
        }
        if (this.sQueue != null) {
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_BG_BLUE.r, Colors.COLOR_GRADIENT_BG_BLUE.g, Colors.COLOR_GRADIENT_BG_BLUE.b, 0.5f));
            Renderer.drawBox(spriteBatch, Images.statsRectBG, (((getPosX() + getWidth()) - ((this.iQueueWidth * 3) / 4)) - (CFG.PADDING * 2)) + i, (((getPosY() + getHeight()) - ((this.iQueueHeight * 3) / 4)) - CFG.PADDING) + i2, (CFG.PADDING * 4) + this.iQueueWidth, (CFG.PADDING * 2) + this.iQueueHeight, 1.0f);
            spriteBatch.setColor(new Color(Colors.COLOR_GRADIENT_OVER_BLUE.r, Colors.COLOR_GRADIENT_OVER_BLUE.g, Colors.COLOR_GRADIENT_OVER_BLUE.b, 0.65f));
            Images.gradientFull.draw(spriteBatch, (((getPosX() + getWidth()) - ((this.iQueueWidth * 3) / 4)) - (CFG.PADDING * 2)) + i, (((getPosY() + getHeight()) - ((this.iQueueHeight * 3) / 4)) - CFG.PADDING) + i2, (CFG.PADDING * 4) + this.iQueueWidth, (CFG.PADDING * 2) + this.iQueueHeight);
            Images.gradientXY.draw(spriteBatch, (((getPosX() + getWidth()) - ((this.iQueueWidth * 3) / 4)) - (CFG.PADDING * 2)) + i, (((getPosY() + getHeight()) - ((this.iQueueHeight * 3) / 4)) - CFG.PADDING) + i2, (CFG.PADDING * 4) + this.iQueueWidth, (CFG.PADDING * 2) + this.iQueueHeight);
            spriteBatch.setColor(Color.WHITE);
            Renderer.drawTextWithShadow(spriteBatch, this.fontID, this.sQueue, ((getPosX() + getWidth()) - ((this.iQueueWidth * 3) / 4)) + i, ((getPosY() + getHeight()) - ((this.iQueueHeight * 3) / 4)) + i2, Colors.getColorTopStats2(z, getIsHovered()));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getCurrent() {
        return this.iTechnologyID;
    }

    @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
    public int getSFX() {
        return SoundsManager.SOUND_CLICK_TOP;
    }

    public void init(int i, int i2, int i3, int i4, boolean z, int i5) {
        this.iTechnologyID = i2;
        this.btnIMG = i;
        this.iImageID = TechnologyTree.lTechnology.get(i2).ImageID;
        this.inTechTree = z;
        if (i5 >= 0) {
            this.sQueue = "" + (i5 + 1);
            Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sQueue);
            this.iQueueWidth = (int) Renderer.glyphLayout.width;
            this.iQueueHeight = (int) Renderer.glyphLayout.height;
        }
        this.fontID = CFG.FONT_REGULAR;
        init(TechnologyTree.lTechnology.get(i2).Name, this.fontID, this.iTextPositionX, i3, i4, TechnologyTree.iTechnologyWidth, TechnologyTree.iTechnologyHeight, true, true, false, false);
        this.sCost = "" + CFG.getPrecision2(TechnologyTree.getResearchCost(i2, this.iCivID), 1);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(CFG.FONT_REGULAR_SMALL), this.sCost);
        this.iCostWidth = (int) Renderer.glyphLayout.width;
        this.iCostHeight = (int) Renderer.glyphLayout.height;
        float imageScale = getImageScale(Game_Calendar.IMG_TECHNOLOGY);
        techIconWidth = (int) (ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).getWidth() * imageScale);
        techIconHeight = (int) (ImageManager.getImage(Game_Calendar.IMG_TECHNOLOGY).getHeight() * imageScale);
        for (int i6 = 0; i6 < Game.ideologiesManager.getIdeologiesSize(); i6++) {
            if (Game.ideologiesManager.getIdeology(i6).REQUIRED_TECHNOLOGY == i2) {
                this.ideologies.add(Integer.valueOf(i6));
            }
        }
        for (int i7 = 0; i7 < AdvantagesManager.iAdvantagesSize; i7++) {
            if (AdvantagesManager.advantages.get(i7).RequiredTechID == i2) {
                this.advantages.add(Integer.valueOf(i7));
            }
        }
        if (z) {
            int i8 = 0;
            while (this.iTextWidth >= ((getWidth() - (CFG.PADDING * 5)) - this.iCostWidth) - techIconWidth && getText().length() > 5 && (i8 = i8 + 1) < 100) {
                setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
            }
            return;
        }
        int i9 = 0;
        while (this.iTextWidth >= getWidth() - (CFG.PADDING * 3) && getText().length() > 5 && (i9 = i9 + 1) < 100) {
            setText(getText().substring(0, Math.max(1, getText().length() - 3)) + ".");
        }
    }

    public int titleH() {
        return CFG.TEXT_HEIGHT + (CFG.PADDING * 3);
    }
}
