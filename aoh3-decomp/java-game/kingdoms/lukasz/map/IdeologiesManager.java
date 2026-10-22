package aoc.kingdoms.lukasz.map;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Right_Color;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Empty;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class IdeologiesManager {
    private List<Ideology> lIdeologies = null;
    private int iIdeologiesSize = 0;
    public List<Image> ideologiesImages = new ArrayList();
    public int maxWidth = 0;
    public int maxHeight = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.IdeologiesManager$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            IdeologiesManager.this.updateCivBonuses(this.id, Game.getCiv(this.id).getIdeologyID(), -1, true);
            Game.updateCivilizationIdeology_InGame(this.id, Game.ideologiesManager.getRealTag(Game.getCiv(this.id).getCivTag()) + Game.ideologiesManager.getIdeology(this.id2).Extra_Tag);
            IdeologiesManager.this.updateCivBonuses(this.id, Game.getCiv(this.id).getIdeologyID(), 1, false);
            RulersManager.loadRuler(this.id, Game.getCiv(this.id).getCivTag(), false);
            Game.getCiv(this.id).fGold -= GameValues.government.CHANGE_GOVERNMENT_COST;
            Game.getCiv(this.id).fLegacy -= GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY;
            Game.getCiv(this.id).updateTotalIncomePerMonth();
        }
    }

    public static class ConfigIdeologiesData {
        protected String Age_of_History;
        protected ArrayList Government;
    }

    public static class Ideology {
        public float AdministrationBuildingsCost;
        public float AdvisorCost;
        public float ArmyMaintenance;
        public int BuildingSlot;
        public float[] Color;
        public float ConstructionCost;
        public float ConstructionTime;
        public float CoreCost;
        public float DevelopInfrastructureCost;
        public float EconomyBuildingsCost;
        public String Extra_Tag;
        public int GOV_GROUP_ID;
        public int GeneralAttack;
        public float GeneralCost;
        public int GeneralDefense;
        public float IncreaseManpowerCost;
        public float IncreaseTaxEfficiencyCost;
        public float InvestInEconomyCost;
        public float MaxManpower;
        public int MaxNumberOfLoans;
        public float MilitaryBuildingsCost;
        public float MonthlyIncome;
        public float MonthlyLegacy;
        public String Name;
        public float ProductionEfficiency;
        public float ProvinceMaintenance;
        public int REQUIRED_TECHNOLOGY;
        public float RecruitArmyCost;
        public float RecruitmentTime;
        public float ReligionCost;
        public boolean RulerRoman;
        public float STARTING_ARMY;
        public float TaxEfficiency;
        public int UnitsAttack;
        public int UnitsDefense;
        public String RulerTitle = "";
        public boolean KingsImages = true;
        public boolean REVOLUTIONISTS = false;
        public boolean MUST_BE_CHANGED = false;
        public boolean TRIBAL = false;
        public boolean CITY_STATE = false;
        public int AI_PEACE_ORDER_CHANCE = 50;
        public int AI_PEACE_ORDER_CHANCE2 = 50;
        public int[] AI_PEACE_ORDER = {0, 1, 2, 3, 4, 5, 6, 7, 8};
        public int[] AI_PEACE_ORDER2 = {0, 1, 2, 3, 4, 5, 6, 7, 8};
        public int[] AI_BUILD_SCORE = {70, 50, 40, 60, 40, 65, 60, 30, 40, 55, 50, 45, 30, 50, 40};
        public int AI_BUILD_SCORE_TOTAL = 0;
        public int AI_BUILD_INVEST_IN_ECONOMY = 25;
        public int AI_BUILD_INCREASE_TAX_EFFICIENCY = 40;
        public int AI_BUILD_INCREASE_MANPOWER = 50;
        public int AI_BUILD_INCREASE_GROWTH_RATE = 60;
        public int AI_BUILD_DEVELOP_INFRASTRUCTURE = 67;
        public int AI_BUILD_BUILDING = 100;
        public int AI_EXTRA_AGGRESSIVENESS = 0;
    }

    protected boolean canBeAdded(int i, int i2) {
        String str = Game.getCiv(i).realTag + this.lIdeologies.get(i2).Extra_Tag;
        for (int i3 = 0; i3 < Game.getCivsSize(); i3++) {
            if (Game.getCiv(i3).getCivTag().equals(str)) {
                return false;
            }
        }
        return true;
    }

    protected List<Boolean> canChangeToIdeology(int i) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < getIdeologiesSize(); i2++) {
            if (i2 == Game.getCiv(i).getIdeologyID()) {
                arrayList.add(false);
            } else if (this.lIdeologies.get(i2).REQUIRED_TECHNOLOGY >= 0 && !Game.getCiv(i).getTechResearched(this.lIdeologies.get(i2).REQUIRED_TECHNOLOGY)) {
                arrayList.add(false);
            } else if (!canBeAdded(i, i2)) {
                arrayList.add(false);
            } else if (this.lIdeologies.get(i2).REVOLUTIONISTS) {
                arrayList.add(false);
            } else {
                arrayList.add(true);
            }
        }
        return arrayList;
    }

    public final boolean changeGovernmentType(int i, int i2, boolean z) {
        if (Game.getCiv(i).getIdeologyID() == i2) {
            return false;
        }
        if (!z && Game.getCiv(i).fGold < GameValues.government.CHANGE_GOVERNMENT_COST) {
            return false;
        }
        if (!z && Game.getCiv(i).fLegacy < GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY) {
            return false;
        }
        if (!z && Game.ideologiesManager.getIdeology(i2).REQUIRED_TECHNOLOGY >= 0 && !Game.getCiv(i).getTechResearched(Game.ideologiesManager.getIdeology(i2).REQUIRED_TECHNOLOGY)) {
            return false;
        }
        Game.addSimpleTask(new AnonymousClass1("changeGovernment" + Game.getCiv(i).getCivName(), i, i2));
        return true;
    }

    public MenuElement_Hover getHoverIdeology(int i, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String str = CoLRpi.LayCVptEzm;
        if (z2) {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ChangeTypeOfGovernmentTo") + str, CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(this.lIdeologies.get(i).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (this.lIdeologies.get(i).REQUIRED_TECHNOLOGY >= 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RequiredTechnology") + str, CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(TechnologyTree.lTechnology.get(this.lIdeologies.get(i).REQUIRED_TECHNOLOGY).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_TECHNOLOGY, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST, 10), CFG.FONT_BOLD_SMALL, Game.getCiv(Game.player.iCivID).fGold > GameValues.government.CHANGE_GOVERNMENT_COST ? Colors.HOVER_RIGHT : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY, 10), CFG.FONT_BOLD_SMALL, Game.getCiv(Game.player.iCivID).fLegacy > GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY ? Colors.HOVER_RIGHT : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else {
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Government") + str, CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(this.lIdeologies.get(i).Name, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).MonthlyIncome != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyIncome") + str, (getIdeology(i).MonthlyIncome > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).MonthlyIncome, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).MonthlyIncome > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).MonthlyLegacy != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + str, (getIdeology(i).MonthlyLegacy > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).MonthlyLegacy, 100), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).MonthlyLegacy > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).TaxEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + str, (getIdeology(i).TaxEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).TaxEfficiency, 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).TaxEfficiency > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).ProductionEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProductionEfficiency") + str, (getIdeology(i).ProductionEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).ProductionEfficiency, 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).ProductionEfficiency > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).ProvinceMaintenance != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceMaintenance") + str, (getIdeology(i).ProvinceMaintenance > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).ProvinceMaintenance, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).ProvinceMaintenance < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).InvestInEconomyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("InvestInEconomyCost") + str, (getIdeology(i).InvestInEconomyCost > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).InvestInEconomyCost * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).InvestInEconomyCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).IncreaseTaxEfficiencyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseTaxEfficiencyCost") + str, (getIdeology(i).IncreaseTaxEfficiencyCost > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).IncreaseTaxEfficiencyCost * 100.0f, 100) + "%", Images.taxUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).IncreaseTaxEfficiencyCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).DevelopInfrastructureCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DevelopInfrastructureCost") + str, (getIdeology(i).DevelopInfrastructureCost > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).DevelopInfrastructureCost * 100.0f, 100) + "%", Images.infrastructureUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).DevelopInfrastructureCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).IncreaseManpowerCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseManpowerCost") + str, (getIdeology(i).IncreaseManpowerCost > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).IncreaseManpowerCost, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).IncreaseManpowerCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).ConstructionCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionCost") + str, (getIdeology(i).ConstructionCost > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).ConstructionCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).ConstructionCost * 100.0f < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).AdministrationBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdministrationBuildingsCost") + str, (getIdeology(i).AdministrationBuildingsCost * 100.0f > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).AdministrationBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).AdministrationBuildingsCost * 100.0f < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).EconomyBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("EconomyBuildingsCost") + str, (getIdeology(i).EconomyBuildingsCost * 100.0f > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).EconomyBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).EconomyBuildingsCost * 100.0f < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).MilitaryBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(ALZmnpZHj.SwbyCNfc) + str, (getIdeology(i).MilitaryBuildingsCost * 100.0f > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).MilitaryBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).MilitaryBuildingsCost * 100.0f < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).ConstructionTime != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionTime") + str, (getIdeology(i).ConstructionTime > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).ConstructionTime * 100.0f, 100) + "%", Images.buildTime, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).ConstructionTime < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).BuildingSlot != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BuildingSlot") + str, (getIdeology(i).BuildingSlot > 0 ? "+" : "") + CFG.getPrecision2(getIdeology(i).BuildingSlot, 100), Images.build, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).BuildingSlot > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).MaxManpower != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + str, (getIdeology(i).MaxManpower > 0.0f ? "+" : "") + ((int) getIdeology(i).MaxManpower), Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).MaxManpower > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).ArmyMaintenance != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMaintenance") + str, (getIdeology(i).ArmyMaintenance > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).ArmyMaintenance, 100) + "%", Images.armyMaintenance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).ArmyMaintenance < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).RecruitmentTime != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RecruitmentTime") + str, (getIdeology(i).RecruitmentTime > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).RecruitmentTime, 100) + "%", Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).RecruitmentTime < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).RecruitArmyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyRecruitmentCost") + str, (getIdeology(i).RecruitArmyCost > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).RecruitArmyCost, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).RecruitArmyCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).GeneralAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsAttack") + str, (getIdeology(i).GeneralAttack > 0 ? "+" : "") + CFG.getPrecision2(getIdeology(i).GeneralAttack, 1), Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).GeneralAttack > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).GeneralDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsDefense") + str, (getIdeology(i).GeneralDefense > 0 ? "+" : "") + CFG.getPrecision2(getIdeology(i).GeneralDefense, 1), Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).GeneralDefense > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).UnitsAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsAttack") + str, (getIdeology(i).UnitsAttack > 0 ? "+" : "") + CFG.getPrecision2(getIdeology(i).UnitsAttack, 1), Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).UnitsAttack > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).UnitsDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsDefense") + str, (getIdeology(i).UnitsDefense > 0 ? "+" : "") + CFG.getPrecision2(getIdeology(i).UnitsDefense, 1), Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).UnitsDefense > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).AdvisorCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorCost") + str, (getIdeology(i).AdvisorCost > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).AdvisorCost * 100.0f, 100) + "%", Images.council, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).AdvisorCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).GeneralCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralCost") + str, (getIdeology(i).GeneralCost > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).GeneralCost * 100.0f, 100) + "%", Images.general, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).GeneralCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).MaxNumberOfLoans != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumNumberOfLoans") + str, (getIdeology(i).MaxNumberOfLoans > 0 ? "+" : "") + CFG.getPrecision2(getIdeology(i).MaxNumberOfLoans, 1), Images.loan, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).MaxNumberOfLoans > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).CoreCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CoreConstruction") + str, (getIdeology(i).CoreCost > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).CoreCost, 100) + "%", Images.core, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).CoreCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getIdeology(i).ReligionCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ReligionConversionCost") + str, (getIdeology(i).ReligionCost <= 0.0f ? "" : "+") + CFG.getPrecision2(getIdeology(i).ReligionCost, 100) + "%", Images.religion, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getIdeology(i).ReligionCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (z) {
            arrayList2.add(new MenuElement_HoverElement_Type_Empty());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("ChangeTypeOfGovernment"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Cost") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST, 10), CFG.FONT_BOLD_SMALL, Game.getCiv(Game.player.iCivID).fGold > GameValues.government.CHANGE_GOVERNMENT_COST ? Colors.HOVER_RIGHT : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("LegacyPoints") + str, CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY, 10), CFG.FONT_BOLD_SMALL, Game.getCiv(Game.player.iCivID).fLegacy > GameValues.government.CHANGE_GOVERNMENT_COST_LEGACY ? Colors.HOVER_RIGHT : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        return new MenuElement_Hover(arrayList);
    }

    public final int getIdeologiesSize() {
        return this.iIdeologiesSize;
    }

    public final Ideology getIdeology(int i) {
        return this.lIdeologies.get(i);
    }

    public final int getIdeologyID(String str) {
        if (str.lastIndexOf(95) > 0) {
            String strSubstring = str.substring(0, str.lastIndexOf(95) + 2);
            for (int i = 0; i < this.iIdeologiesSize; i++) {
                try {
                    if (strSubstring.charAt(strSubstring.length() - 1) == this.lIdeologies.get(i).Extra_Tag.charAt(1) || strSubstring.charAt(strSubstring.indexOf(95) + 1) == this.lIdeologies.get(i).Extra_Tag.charAt(1)) {
                        return i;
                    }
                } catch (StringIndexOutOfBoundsException unused) {
                }
            }
        }
        return 0;
    }

    public final List<MenuElement> getMenuElements(int i, int i2, int i3, int i4, int i5) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        String str17;
        ArrayList arrayList = new ArrayList();
        int width = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 2);
        if (getIdeology(i).MonthlyIncome != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MonthlyIncome") + "", (getIdeology(i).MonthlyIncome > 0.0f ? "+" : "") + CFG.getPrecision2(getIdeology(i).MonthlyIncome, 100), Images.gold, i2, 0, i4, i5, width, getIdeology(i).MonthlyIncome == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).MonthlyIncome < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getIdeology(i).TaxEfficiency != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("TaxEfficiency") + r12, (getIdeology(i).TaxEfficiency > 0.0f ? "+" : r12) + CFG.getPrecision2(getIdeology(i).TaxEfficiency, 100) + "%", Images.tax, i2, 0, i4, i5, width, getIdeology(i).TaxEfficiency == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).TaxEfficiency < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getIdeology(i).ProvinceMaintenance != 0.0f) {
            str = "%";
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ProvinceMaintenance") + r12, (getIdeology(i).ProvinceMaintenance > 0.0f ? "+" : r12) + CFG.getPrecision2(getIdeology(i).ProvinceMaintenance, 100) + "%", Images.gold, i2, 0, i4, i5, width, getIdeology(i).ProvinceMaintenance == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).ProvinceMaintenance > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str = r12;
        }
        if (getIdeology(i).ProductionEfficiency != 0.0f) {
            String str18 = Game.lang.get("ProductionEfficiency") + r12;
            StringBuilder sbAppend = new StringBuilder().append(getIdeology(i).ProductionEfficiency > 0.0f ? "+" : r12).append(CFG.getPrecision2(getIdeology(i).ProductionEfficiency, 100));
            String str19 = str;
            str2 = str19;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str18, sbAppend.append(str19).toString(), Images.goods, i2, 0, i4, i5, width, getIdeology(i).ProductionEfficiency == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).ProductionEfficiency < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str2 = str;
        }
        if (getIdeology(i).MonthlyLegacy != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MonthlyLegacy") + r12, (getIdeology(i).MonthlyLegacy > 0.0f ? "+" : r12) + CFG.getPrecision2(getIdeology(i).MonthlyLegacy, 100), Images.legacy, i2, 0, i4, i5, width, getIdeology(i).MonthlyLegacy == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).MonthlyLegacy < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getIdeology(i).MaxManpower != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumManpower") + r12, (getIdeology(i).MaxManpower > 0.0f ? "+" : r12) + ((int) getIdeology(i).MaxManpower), Game_Calendar.IMG_MANPOWER_UP, i2, 0, i4, i5, width, getIdeology(i).MaxManpower == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).MaxManpower < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getIdeology(i).ArmyMaintenance != 0.0f) {
            String str20 = Game.lang.get("ArmyMaintenance") + r12;
            StringBuilder sbAppend2 = new StringBuilder().append(getIdeology(i).ArmyMaintenance > 0.0f ? "+" : r12).append(CFG.getPrecision2(getIdeology(i).ArmyMaintenance, 100));
            String str21 = str2;
            str3 = str21;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str20, sbAppend2.append(str21).toString(), Images.armyMaintenance, i2, 0, i4, i5, width, getIdeology(i).ArmyMaintenance == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).ArmyMaintenance > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str3 = str2;
        }
        if (getIdeology(i).RecruitmentTime != 0.0f) {
            String str22 = Game.lang.get("RecruitmentTime") + r12;
            StringBuilder sbAppend3 = new StringBuilder().append(getIdeology(i).RecruitmentTime > 0.0f ? "+" : r12).append(CFG.getPrecision2(getIdeology(i).RecruitmentTime, 100));
            String str23 = str3;
            str4 = str23;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str22, sbAppend3.append(str23).toString(), Game_Calendar.IMG_MANPOWER_TIME, i2, 0, i4, i5, width, getIdeology(i).RecruitmentTime == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).RecruitmentTime > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str4 = str3;
        }
        if (getIdeology(i).ConstructionCost != 0.0f) {
            String str24 = Game.lang.get("ConstructionCost") + r12;
            StringBuilder sbAppend4 = new StringBuilder().append(getIdeology(i).ConstructionCost > 0.0f ? "+" : r12).append(r12).append(CFG.getPrecision2(getIdeology(i).ConstructionCost * 100.0f, 100));
            String str25 = str4;
            str5 = str25;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str24, sbAppend4.append(str25).toString(), Images.construction, i2, 0, i4, i5, width, getIdeology(i).ConstructionCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).ConstructionCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str5 = str4;
        }
        if (getIdeology(i).AdministrationBuildingsCost != 0.0f) {
            String str26 = Game.lang.get("AdministrationBuildingsCost") + r12;
            StringBuilder sbAppend5 = new StringBuilder().append(getIdeology(i).AdministrationBuildingsCost > 0.0f ? "+" : r12).append(r12).append(CFG.getPrecision2(getIdeology(i).AdministrationBuildingsCost * 100.0f, 100));
            String str27 = str5;
            str6 = str27;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str26, sbAppend5.append(str27).toString(), Images.construction, i2, 0, i4, i5, width, getIdeology(i).AdministrationBuildingsCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).AdministrationBuildingsCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str6 = str5;
        }
        if (getIdeology(i).EconomyBuildingsCost != 0.0f) {
            String str28 = Game.lang.get("EconomyBuildingsCost") + r12;
            StringBuilder sbAppend6 = new StringBuilder().append(getIdeology(i).EconomyBuildingsCost > 0.0f ? "+" : r12).append(r12).append(CFG.getPrecision2(getIdeology(i).EconomyBuildingsCost * 100.0f, 100));
            String str29 = str6;
            str7 = str29;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str28, sbAppend6.append(str29).toString(), Images.construction, i2, 0, i4, i5, width, getIdeology(i).EconomyBuildingsCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).EconomyBuildingsCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str7 = str6;
        }
        if (getIdeology(i).MilitaryBuildingsCost != 0.0f) {
            String str30 = Game.lang.get("MilitaryBuildingsCost") + r12;
            StringBuilder sbAppend7 = new StringBuilder().append(getIdeology(i).MilitaryBuildingsCost > 0.0f ? "+" : r12).append(r12).append(CFG.getPrecision2(getIdeology(i).MilitaryBuildingsCost * 100.0f, 100));
            String str31 = str7;
            str8 = str31;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str30, sbAppend7.append(str31).toString(), Images.construction, i2, 0, i4, i5, width, getIdeology(i).MilitaryBuildingsCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).MilitaryBuildingsCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str8 = str7;
        }
        if (getIdeology(i).ConstructionTime != 0.0f) {
            String str32 = Game.lang.get("ConstructionTime") + r12;
            StringBuilder sbAppend8 = new StringBuilder().append(getIdeology(i).ConstructionTime > 0.0f ? "+" : r12).append(CFG.getPrecision2(getIdeology(i).ConstructionTime * 100.0f, 100));
            String str33 = str8;
            str9 = str33;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str32, sbAppend8.append(str33).toString(), Images.buildTime, i2, 0, i4, i5, width, getIdeology(i).ConstructionTime == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).ConstructionTime > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str9 = str8;
        }
        if (getIdeology(i).BuildingSlot != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("BuildingSlot") + r12, (getIdeology(i).BuildingSlot > 0 ? "+" : r12) + CFG.getPrecision2(getIdeology(i).BuildingSlot, 100), Images.build, i2, 0, i4, i5, width, getIdeology(i).BuildingSlot == 0 ? Colors.HOVER_NEUTRAL : getIdeology(i).BuildingSlot < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getIdeology(i).InvestInEconomyCost != 0.0f) {
            String str34 = Game.lang.get("InvestInEconomyCost") + r12;
            StringBuilder sbAppend9 = new StringBuilder(r12).append(CFG.getPrecision2(getIdeology(i).InvestInEconomyCost * 100.0f, 100));
            String str35 = str9;
            str10 = str35;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str34, sbAppend9.append(str35).toString(), Game_Calendar.IMG_ECONOMY_UP, i2, 0, i4, i5, width, getIdeology(i).InvestInEconomyCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).InvestInEconomyCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str10 = str9;
        }
        if (getIdeology(i).IncreaseTaxEfficiencyCost != 0.0f) {
            String str36 = Game.lang.get("IncreaseTaxEfficiencyCost") + r12;
            StringBuilder sbAppend10 = new StringBuilder(r12).append(CFG.getPrecision2(getIdeology(i).IncreaseTaxEfficiencyCost * 100.0f, 100));
            String str37 = str10;
            str11 = str37;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str36, sbAppend10.append(str37).toString(), Images.taxUp, i2, 0, i4, i5, width, getIdeology(i).IncreaseTaxEfficiencyCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).IncreaseTaxEfficiencyCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str11 = str10;
        }
        if (getIdeology(i).DevelopInfrastructureCost != 0.0f) {
            String str38 = Game.lang.get("DevelopInfrastructureCost") + r12;
            StringBuilder sbAppend11 = new StringBuilder(r12).append(CFG.getPrecision2(getIdeology(i).DevelopInfrastructureCost * 100.0f, 100));
            String str39 = str11;
            str12 = str39;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str38, sbAppend11.append(str39).toString(), Images.infrastructureUp, i2, 0, i4, i5, width, getIdeology(i).DevelopInfrastructureCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).DevelopInfrastructureCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str12 = str11;
        }
        if (getIdeology(i).IncreaseManpowerCost != 0.0f) {
            String str40 = Game.lang.get("IncreaseManpowerCost") + r12;
            StringBuilder sbAppend12 = new StringBuilder(r12).append(CFG.getPrecision2(getIdeology(i).IncreaseManpowerCost, 100));
            String str41 = str12;
            str13 = str41;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str40, sbAppend12.append(str41).toString(), Game_Calendar.IMG_MANPOWER, i2, 0, i4, i5, width, getIdeology(i).IncreaseManpowerCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).IncreaseManpowerCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str13 = str12;
        }
        if (getIdeology(i).RecruitArmyCost != 0.0f) {
            String str42 = Game.lang.get("ArmyRecruitmentCost") + r12;
            String str43 = str13;
            str14 = str43;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str42, "" + CFG.getPrecision2(getIdeology(i).RecruitArmyCost, 100) + str43, Images.gold, i2, 0, i4, i5, width, getIdeology(i).RecruitArmyCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).RecruitArmyCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str14 = str13;
        }
        if (getIdeology(i).GeneralAttack != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("GeneralsAttack") + r12, (getIdeology(i).GeneralAttack > 0 ? "+" : r12) + CFG.getPrecision2(getIdeology(i).GeneralAttack, 100), Images.attack, i2, 0, i4, i5, width, getIdeology(i).GeneralAttack == 0 ? Colors.HOVER_NEUTRAL : getIdeology(i).GeneralAttack < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getIdeology(i).GeneralDefense != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("GeneralsDefense") + r12, (getIdeology(i).GeneralDefense > 0 ? "+" : r12) + CFG.getPrecision2(getIdeology(i).GeneralDefense, 100), Images.defense, i2, 0, i4, i5, width, getIdeology(i).GeneralDefense == 0 ? Colors.HOVER_NEUTRAL : getIdeology(i).GeneralDefense < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getIdeology(i).UnitsAttack != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("UnitsAttack") + r12, (getIdeology(i).UnitsAttack > 0 ? "+" : r12) + CFG.getPrecision2(getIdeology(i).UnitsAttack, 100), Images.attack, i2, 0, i4, i5, width, getIdeology(i).UnitsAttack == 0 ? Colors.HOVER_NEUTRAL : getIdeology(i).UnitsAttack < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getIdeology(i).UnitsDefense != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("UnitsDefense") + r12, (getIdeology(i).UnitsDefense > 0 ? "+" : r12) + CFG.getPrecision2(getIdeology(i).UnitsDefense, 100), Images.defense, i2, 0, i4, i5, width, getIdeology(i).UnitsDefense == 0 ? Colors.HOVER_NEUTRAL : getIdeology(i).UnitsDefense < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getIdeology(i).AdvisorCost != 0.0f) {
            String str44 = Game.lang.get("AdvisorCost") + r12;
            StringBuilder sbAppend13 = new StringBuilder().append(getIdeology(i).AdvisorCost > 0.0f ? "+" : r12).append(CFG.getPrecision2(getIdeology(i).AdvisorCost * 100.0f, 100));
            String str45 = str14;
            str15 = str45;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str44, sbAppend13.append(str45).toString(), Images.council, i2, 0, i4, i5, width, getIdeology(i).AdvisorCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).AdvisorCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str15 = str14;
        }
        if (getIdeology(i).GeneralCost != 0.0f) {
            String str46 = Game.lang.get("GeneralCost") + r12;
            StringBuilder sbAppend14 = new StringBuilder().append(getIdeology(i).GeneralCost > 0.0f ? "+" : r12).append(CFG.getPrecision2(getIdeology(i).GeneralCost * 100.0f, 100));
            String str47 = str15;
            str16 = str47;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str46, sbAppend14.append(str47).toString(), Images.general, i2, 0, i4, i5, width, getIdeology(i).GeneralCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).GeneralCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str16 = str15;
        }
        if (getIdeology(i).MaxNumberOfLoans != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumNumberOfLoans") + r12, (getIdeology(i).MaxNumberOfLoans > 0 ? "+" : r12) + getIdeology(i).MaxNumberOfLoans, Images.loan, i2, 0, i4, i5, width, getIdeology(i).MaxNumberOfLoans == 0 ? Colors.HOVER_NEUTRAL : getIdeology(i).MaxNumberOfLoans < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getIdeology(i).CoreCost != 0.0f) {
            String str48 = Game.lang.get("CoreConstruction") + r12;
            StringBuilder sbAppend15 = new StringBuilder().append(getIdeology(i).CoreCost > 0.0f ? "+" : r12).append(CFG.getPrecision2(getIdeology(i).CoreCost, 100));
            String str49 = str16;
            str17 = str49;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str48, sbAppend15.append(str49).toString(), Images.core, i2, 0, i4, i5, width, getIdeology(i).CoreCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).CoreCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str17 = str16;
        }
        if (getIdeology(i).ReligionCost != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ReligionConversionCost") + r12, (getIdeology(i).ReligionCost <= 0.0f ? r12 : "+") + CFG.getPrecision2(getIdeology(i).ReligionCost, 100) + str17, Images.religion, i2, 0, i4, i5, width, getIdeology(i).ReligionCost == 0.0f ? Colors.HOVER_NEUTRAL : getIdeology(i).ReligionCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        ArrayList arrayList2 = new ArrayList();
        int height = i3;
        while (arrayList.size() > 0) {
            int size = arrayList.size();
            int i6 = 0;
            for (int i7 = 1; i7 < size; i7++) {
                if (CFG.compareAlphabetic_TwoString(((MenuElement) arrayList.get(i6)).getText(), ((MenuElement) arrayList.get(i7)).getText())) {
                    i6 = i7;
                }
            }
            arrayList2.add((MenuElement) arrayList.get(i6));
            ((MenuElement) arrayList2.get(arrayList2.size() - 1)).setPosY(height);
            height += ((MenuElement) arrayList2.get(arrayList2.size() - 1)).getHeight() + CFG.PADDING;
            arrayList.remove(i6);
        }
        return arrayList2;
    }

    public final String getRealTag(String str) {
        return str.contains("_") ? str.substring(0, str.indexOf(95)) : str;
    }

    public final void loadIdeologies() {
        List<Ideology> list = this.lIdeologies;
        if (list != null) {
            list.clear();
        }
        this.lIdeologies = new ArrayList();
        try {
            String string = FileManager.loadFile("game/Governments.json").readString();
            Json json = new Json();
            json.setElementType(ConfigIdeologiesData.class, "Government", Ideology.class);
            new ConfigIdeologiesData();
            for (Ideology ideology : ((ConfigIdeologiesData) json.fromJson(ConfigIdeologiesData.class, string)).Government) {
                ideology.Name = Game.lang.get(ideology.Name);
                ideology.RulerTitle = Game.lang.get(ideology.RulerTitle);
                ideology.Extra_Tag = ideology.Extra_Tag.length() > 0 ? "_" + ideology.Extra_Tag : "";
                for (int length = ideology.AI_BUILD_SCORE.length - 1; length >= 0; length--) {
                    ideology.AI_BUILD_SCORE_TOTAL += ideology.AI_BUILD_SCORE[length];
                }
                this.lIdeologies.add(ideology);
            }
            this.iIdeologiesSize = this.lIdeologies.size();
            for (int i = 0; i < this.iIdeologiesSize; i++) {
                this.lIdeologies.get(i).Color[0] = this.lIdeologies.get(i).Color[0] / 255.0f;
                this.lIdeologies.get(i).Color[1] = this.lIdeologies.get(i).Color[1] / 255.0f;
                this.lIdeologies.get(i).Color[2] = this.lIdeologies.get(i).Color[2] / 255.0f;
            }
        } catch (GdxRuntimeException unused) {
        }
        for (int i2 = 0; i2 < this.iIdeologiesSize; i2++) {
            try {
                if (FileManager.loadFile("gfx/government/" + CFG.getRescouresPath_Short() + "gov" + this.lIdeologies.get(i2).Extra_Tag + ".png").exists()) {
                    this.ideologiesImages.add(new Image(ImageManager.loadTexture("gfx/government/" + CFG.getRescouresPath_Short() + "gov" + this.lIdeologies.get(i2).Extra_Tag + ".png")));
                } else {
                    this.ideologiesImages.add(new Image(ImageManager.loadTexture("gfx/government/" + CFG.getRescouresPath_Short_H() + "gov" + this.lIdeologies.get(i2).Extra_Tag + ".png")));
                }
            } catch (GdxRuntimeException unused2) {
                this.ideologiesImages.add(new Image(ImageManager.loadTexture("gfx/government/" + CFG.getRescouresPath_Short() + "gov.png")));
            }
        }
        for (int i3 = 0; i3 < this.iIdeologiesSize; i3++) {
            if (this.ideologiesImages.get(i3).getWidth() > this.maxWidth) {
                this.maxWidth = this.ideologiesImages.get(i3).getWidth();
            }
            if (this.ideologiesImages.get(i3).getHeight() > this.maxHeight) {
                this.maxHeight = this.ideologiesImages.get(i3).getHeight();
            }
        }
    }

    public final void updateCivBonuses(int i, int i2, int i3, boolean z) {
        float f = i3;
        Game.getCiv(i).civBonuses.MonthlyIncome += getIdeology(i2).MonthlyIncome * f;
        Game.getCiv(i).civBonuses.TaxEfficiency += getIdeology(i2).TaxEfficiency * f;
        Game.getCiv(i).civBonuses.ProductionEfficiency += getIdeology(i2).ProductionEfficiency * f;
        Game.getCiv(i).civBonuses.ProvinceMaintenance += getIdeology(i2).ProvinceMaintenance * f;
        if (getIdeology(i2).MonthlyLegacy != 0.0f) {
            Game.gameThread.addCivUpdateLegacyPerMonth(i);
        }
        Game.getCiv(i).civBonuses.MonthlyLegacy += getIdeology(i2).MonthlyLegacy * f;
        if (getIdeology(i2).MaxManpower != 0.0f) {
            Game.gameThreadTurns.addCivUpdateMaxManpower(i);
        }
        Game.getCiv(i).civBonuses.MaxManpower += getIdeology(i2).MaxManpower * f;
        if (getIdeology(i2).ArmyMaintenance != 0.0f) {
            Game.getCiv(i).civBonuses.ArmyMaintenance += getIdeology(i2).ArmyMaintenance * f;
            Game.gameThread.addCivUpdateArmyMaintenance(i);
        }
        Game.getCiv(i).civBonuses.RecruitmentTime += getIdeology(i2).RecruitmentTime * f;
        Game.getCiv(i).civBonuses.RecruitArmyCost += getIdeology(i2).RecruitArmyCost * f;
        Game.getCiv(i).civBonuses.ConstructionCost += getIdeology(i2).ConstructionCost * f;
        Game.getCiv(i).civBonuses.AdministrationBuildingsCost += getIdeology(i2).AdministrationBuildingsCost * f;
        Game.getCiv(i).civBonuses.EconomyBuildingsCost += getIdeology(i2).EconomyBuildingsCost * f;
        Game.getCiv(i).civBonuses.MilitaryBuildingsCost += getIdeology(i2).MilitaryBuildingsCost * f;
        Game.getCiv(i).civBonuses.ConstructionTime += getIdeology(i2).ConstructionTime * f;
        Game.getCiv(i).civBonuses.InvestInEconomyCost += getIdeology(i2).InvestInEconomyCost * f;
        Game.getCiv(i).civBonuses.IncreaseTaxEfficiencyCost += getIdeology(i2).IncreaseTaxEfficiencyCost * f;
        Game.getCiv(i).civBonuses.DevelopInfrastructureCost += getIdeology(i2).DevelopInfrastructureCost * f;
        Game.getCiv(i).civBonuses.IncreaseManpowerCost += getIdeology(i2).IncreaseManpowerCost * f;
        Game.getCiv(i).civBonuses.GeneralAttack += getIdeology(i2).GeneralAttack * i3;
        Game.getCiv(i).civBonuses.GeneralDefense += getIdeology(i2).GeneralDefense * i3;
        Game.getCiv(i).civBonuses.UnitsAttack += getIdeology(i2).UnitsAttack * i3;
        Game.getCiv(i).civBonuses.UnitsDefense += getIdeology(i2).UnitsDefense * i3;
        Game.getCiv(i).civBonuses.MaxNumberOfLoans += getIdeology(i2).MaxNumberOfLoans * i3;
        Game.getCiv(i).civBonuses.BuildingSlot += getIdeology(i2).BuildingSlot * i3;
        Game.getCiv(i).civBonuses.AdvisorCost += getIdeology(i2).AdvisorCost * f;
        Game.getCiv(i).civBonuses.GeneralCost += getIdeology(i2).GeneralCost * f;
        Game.getCiv(i).civBonuses.ReligionCost += getIdeology(i2).ReligionCost * f;
        Game.getCiv(i).civBonuses.CoreCost += getIdeology(i2).CoreCost * f;
        if (z) {
            return;
        }
        Game.getCiv(i).updateProvincesIncomeAndExpenses();
    }
}
