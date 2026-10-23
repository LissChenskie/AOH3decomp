package aoc.kingdoms.lukasz.map;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadManager;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Right_Color;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusReligion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Religion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusInGame.Province.iOYW.ALZmnpZHj;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ReligionManager {
    private List<Religion> lReligions = null;
    public List<Image> religionImages = new ArrayList();
    private int iReligionsSize = 0;
    public int maxWidth = 0;
    public int maxHeight = 0;

    public static class Religion {
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
        public int GeneralAttack;
        public float GeneralCost;
        public int GeneralDefense;
        public String Icon;
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
        public float RecruitArmyCost;
        public float RecruitmentTime;
        public float ReligionCost;
        public int ReligionGroupID;
        public float TaxEfficiency;
        public boolean Tribal = false;
        public int UnitsAttack;
        public int UnitsDefense;
    }

    public MenuElement_Hover getHoverReligion(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusReligion(Game.lang.get("Religion") + ": ", getReligion(i).Name, i, CFG.FONT_BOLD, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        int size = arrayList.size();
        if (getReligion(i).MonthlyIncome != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(SwmJtrccN.TWsWMcxtM) + ": ", (getReligion(i).MonthlyIncome > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).MonthlyIncome, 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).MonthlyIncome > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).MonthlyLegacy != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyLegacy") + ": ", (getReligion(i).MonthlyLegacy > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).MonthlyLegacy, 100), Images.legacy, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).MonthlyLegacy > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).TaxEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("TaxEfficiency") + ": ", (getReligion(i).TaxEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).TaxEfficiency, 100) + "%", Images.tax, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).TaxEfficiency > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).ProductionEfficiency != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProductionEfficiency") + ": ", (getReligion(i).ProductionEfficiency > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).ProductionEfficiency, 100) + "%", Images.goods, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).ProductionEfficiency > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).ProvinceMaintenance != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ProvinceMaintenance") + ": ", (getReligion(i).ProvinceMaintenance > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).ProvinceMaintenance, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).ProvinceMaintenance < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).InvestInEconomyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("InvestInEconomyCost") + ": ", (getReligion(i).InvestInEconomyCost > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).InvestInEconomyCost * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).InvestInEconomyCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).IncreaseTaxEfficiencyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseTaxEfficiencyCost") + ": ", (getReligion(i).IncreaseTaxEfficiencyCost > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).IncreaseTaxEfficiencyCost * 100.0f, 100) + "%", Images.taxUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).IncreaseTaxEfficiencyCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).DevelopInfrastructureCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DevelopInfrastructureCost") + ": ", (getReligion(i).DevelopInfrastructureCost > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).DevelopInfrastructureCost * 100.0f, 100) + "%", Images.infrastructureUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).DevelopInfrastructureCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).IncreaseManpowerCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("IncreaseManpowerCost") + ": ", (getReligion(i).IncreaseManpowerCost > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).IncreaseManpowerCost, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).IncreaseManpowerCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).ConstructionCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionCost") + ": ", (getReligion(i).ConstructionCost > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).ConstructionCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).ConstructionCost * 100.0f < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).AdministrationBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdministrationBuildingsCost") + ": ", (getReligion(i).AdministrationBuildingsCost * 100.0f > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).AdministrationBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).AdministrationBuildingsCost * 100.0f < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).EconomyBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get(lJxd.Hbid) + ": ", (getReligion(i).EconomyBuildingsCost * 100.0f > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).EconomyBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).EconomyBuildingsCost * 100.0f < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).MilitaryBuildingsCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MilitaryBuildingsCost") + ": ", (getReligion(i).MilitaryBuildingsCost * 100.0f > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).MilitaryBuildingsCost * 100.0f, 100) + "%", Images.construction, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).MilitaryBuildingsCost * 100.0f < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).ConstructionTime != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ConstructionTime") + ": ", (getReligion(i).ConstructionTime > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).ConstructionTime * 100.0f, 100) + "%", Images.buildTime, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).ConstructionTime < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).BuildingSlot != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BuildingSlot") + ": ", (getReligion(i).BuildingSlot > 0 ? "+" : "") + CFG.getPrecision2(getReligion(i).BuildingSlot, 100), Images.build, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).BuildingSlot > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).MaxManpower != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumManpower") + ": ", (getReligion(i).MaxManpower > 0.0f ? "+" : "") + ((int) getReligion(i).MaxManpower), Game_Calendar.IMG_MANPOWER_UP, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).MaxManpower > 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).ArmyMaintenance != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyMaintenance") + ": ", (getReligion(i).ArmyMaintenance > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).ArmyMaintenance, 100) + "%", Images.armyMaintenance, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).ArmyMaintenance < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).RecruitmentTime != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("RecruitmentTime") + ": ", (getReligion(i).RecruitmentTime > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).RecruitmentTime, 100) + "%", Game_Calendar.IMG_MANPOWER_TIME, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).RecruitmentTime < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).RecruitArmyCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ArmyRecruitmentCost") + ": ", (getReligion(i).RecruitArmyCost > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).RecruitArmyCost, 100) + "%", Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).RecruitArmyCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).GeneralAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsAttack") + ": ", (getReligion(i).GeneralAttack > 0 ? "+" : "") + CFG.getPrecision2(getReligion(i).GeneralAttack, 1), Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).GeneralAttack > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).GeneralDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralsDefense") + ": ", (getReligion(i).GeneralDefense > 0 ? "+" : "") + CFG.getPrecision2(getReligion(i).GeneralDefense, 1), Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).GeneralDefense > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).UnitsAttack != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsAttack") + ": ", (getReligion(i).UnitsAttack > 0 ? "+" : "") + CFG.getPrecision2(getReligion(i).UnitsAttack, 1), Images.attack, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).UnitsAttack > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).UnitsDefense != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("UnitsDefense") + ": ", (getReligion(i).UnitsDefense > 0 ? "+" : "") + CFG.getPrecision2(getReligion(i).UnitsDefense, 1), Images.defense, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).UnitsDefense > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).AdvisorCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AdvisorCost") + ": ", (getReligion(i).AdvisorCost > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).AdvisorCost * 100.0f, 100) + "%", Images.council, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).AdvisorCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).GeneralCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GeneralCost") + ": ", (getReligion(i).GeneralCost > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).GeneralCost * 100.0f, 100) + "%", Images.general, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).GeneralCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).MaxNumberOfLoans != 0) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumNumberOfLoans") + ": ", (getReligion(i).MaxNumberOfLoans > 0 ? "+" : "") + CFG.getPrecision2(getReligion(i).MaxNumberOfLoans, 1), Images.loan, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).MaxNumberOfLoans > 0 ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).CoreCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CoreConstruction") + ": ", (getReligion(i).CoreCost > 0.0f ? "+" : "") + CFG.getPrecision2(getReligion(i).CoreCost, 100) + "%", Images.core, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).CoreCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (getReligion(i).ReligionCost != 0.0f) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ReligionConversionCost") + ": ", (getReligion(i).ReligionCost <= 0.0f ? "" : "+") + CFG.getPrecision2(getReligion(i).ReligionCost, 100) + "%", Images.religion, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, getReligion(i).ReligionCost < 0.0f ? Colors.COLOR_TEXT_MODIFIER_POSITIVE : Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (i2 > 0) {
            if (size != arrayList.size()) {
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Population") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.getCiv(i2).getPopulationTotal()), CFG.FONT_BOLD_SMALL, Colors.COLOR_POPULATION));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            try {
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                for (int i3 = 0; i3 < Game.religionManager.getReligionsSize(); i3++) {
                    arrayList3.add(Integer.valueOf(i3));
                    arrayList4.add(0);
                }
                for (int i4 = 0; i4 < Game.getCiv(i2).getNumOfProvinces(); i4++) {
                    arrayList4.set(Game.getProvince(Game.getCiv(i2).getProvinceID(i4)).getReligion(), Integer.valueOf(((Integer) arrayList4.get(Game.getProvince(Game.getCiv(i2).getProvinceID(i4)).getReligion())).intValue() + Game.getProvince(Game.getCiv(i2).getProvinceID(i4)).getPopulationTotal()));
                }
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                for (int size2 = arrayList4.size() - 1; size2 >= 0; size2--) {
                    if (((Integer) arrayList4.get(size2)).intValue() <= 0) {
                        arrayList4.remove(size2);
                        arrayList3.remove(size2);
                    }
                }
                while (arrayList4.size() > 0) {
                    int i5 = 0;
                    for (int i6 = 1; i6 < arrayList4.size(); i6++) {
                        if (((Integer) arrayList4.get(i5)).intValue() < ((Integer) arrayList4.get(i6)).intValue()) {
                            i5 = i6;
                        }
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(((Integer) arrayList3.get(i5)).intValue()).Name + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + arrayList4.get(i5)), CFG.FONT_BOLD_SMALL, Colors.COLOR_POPULATION));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.population, CFG.PADDING, 0));
                    arrayList2.add(new MenuElement_HoverElement_Type_Religion(((Integer) arrayList3.get(i5)).intValue(), CFG.PADDING, CFG.PADDING));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2((((long) ((Integer) arrayList4.get(i5)).intValue()) / Game.getCiv(i2).getPopulationTotal()) * 100.0f, 100) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList3.remove(i5);
                    arrayList4.remove(i5);
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        return new MenuElement_Hover(arrayList);
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
        float f = getReligion(i).MonthlyIncome;
        String str18 = ALZmnpZHj.vsEdSVPwWkT;
        if (f != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MonthlyIncome") + "", (getReligion(i).MonthlyIncome > 0.0f ? str18 : "") + CFG.getPrecision2(getReligion(i).MonthlyIncome, 100), Images.gold, i2, 0, i4, i5, width, getReligion(i).MonthlyIncome == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).MonthlyIncome < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getReligion(i).TaxEfficiency != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get(LBhZogys.HaympoynIJB) + r12, (getReligion(i).TaxEfficiency > 0.0f ? str18 : r12) + CFG.getPrecision2(getReligion(i).TaxEfficiency, 100) + "%", Images.tax, i2, 0, i4, i5, width, getReligion(i).TaxEfficiency == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).TaxEfficiency < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getReligion(i).ProvinceMaintenance != 0.0f) {
            str = "%";
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("ProvinceMaintenance") + r12, (getReligion(i).ProvinceMaintenance > 0.0f ? str18 : r12) + CFG.getPrecision2(getReligion(i).ProvinceMaintenance, 100) + "%", Images.gold, i2, 0, i4, i5, width, getReligion(i).ProvinceMaintenance == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).ProvinceMaintenance > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str = r12;
        }
        if (getReligion(i).ProductionEfficiency != 0.0f) {
            String str19 = Game.lang.get("ProductionEfficiency") + r12;
            StringBuilder sbAppend = new StringBuilder().append(getReligion(i).ProductionEfficiency > 0.0f ? str18 : r12).append(CFG.getPrecision2(getReligion(i).ProductionEfficiency, 100));
            String str20 = str;
            str2 = str20;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str19, sbAppend.append(str20).toString(), Images.goods, i2, 0, i4, i5, width, getReligion(i).ProductionEfficiency == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).ProductionEfficiency < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str2 = str;
        }
        if (getReligion(i).MonthlyLegacy != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MonthlyLegacy") + r12, (getReligion(i).MonthlyLegacy > 0.0f ? str18 : r12) + CFG.getPrecision2(getReligion(i).MonthlyLegacy, 100), Images.legacy, i2, 0, i4, i5, width, getReligion(i).MonthlyLegacy == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).MonthlyLegacy < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getReligion(i).MaxManpower != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumManpower") + r12, (getReligion(i).MaxManpower > 0.0f ? str18 : r12) + ((int) getReligion(i).MaxManpower), Game_Calendar.IMG_MANPOWER_UP, i2, 0, i4, i5, width, getReligion(i).MaxManpower == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).MaxManpower < 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getReligion(i).ArmyMaintenance != 0.0f) {
            String str21 = Game.lang.get("ArmyMaintenance") + r12;
            StringBuilder sbAppend2 = new StringBuilder().append(getReligion(i).ArmyMaintenance > 0.0f ? str18 : r12).append(CFG.getPrecision2(getReligion(i).ArmyMaintenance, 100));
            String str22 = str2;
            str3 = str22;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str21, sbAppend2.append(str22).toString(), Images.armyMaintenance, i2, 0, i4, i5, width, getReligion(i).ArmyMaintenance == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).ArmyMaintenance > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str3 = str2;
        }
        if (getReligion(i).RecruitmentTime != 0.0f) {
            String str23 = Game.lang.get("RecruitmentTime") + r12;
            StringBuilder sbAppend3 = new StringBuilder().append(getReligion(i).RecruitmentTime > 0.0f ? str18 : r12).append(CFG.getPrecision2(getReligion(i).RecruitmentTime, 100));
            String str24 = str3;
            str4 = str24;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str23, sbAppend3.append(str24).toString(), Game_Calendar.IMG_MANPOWER_TIME, i2, 0, i4, i5, width, getReligion(i).RecruitmentTime == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).RecruitmentTime > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str4 = str3;
        }
        if (getReligion(i).ConstructionCost != 0.0f) {
            String str25 = Game.lang.get("ConstructionCost") + r12;
            StringBuilder sbAppend4 = new StringBuilder().append(getReligion(i).ConstructionCost > 0.0f ? str18 : r12).append(r12).append(CFG.getPrecision2(getReligion(i).ConstructionCost * 100.0f, 100));
            String str26 = str4;
            str5 = str26;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str25, sbAppend4.append(str26).toString(), Images.construction, i2, 0, i4, i5, width, getReligion(i).ConstructionCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).ConstructionCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str5 = str4;
        }
        if (getReligion(i).AdministrationBuildingsCost != 0.0f) {
            String str27 = Game.lang.get("AdministrationBuildingsCost") + r12;
            StringBuilder sbAppend5 = new StringBuilder().append(getReligion(i).AdministrationBuildingsCost > 0.0f ? str18 : r12).append(r12).append(CFG.getPrecision2(getReligion(i).AdministrationBuildingsCost * 100.0f, 100));
            String str28 = str5;
            str6 = str28;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str27, sbAppend5.append(str28).toString(), Images.construction, i2, 0, i4, i5, width, getReligion(i).AdministrationBuildingsCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).AdministrationBuildingsCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str6 = str5;
        }
        if (getReligion(i).EconomyBuildingsCost != 0.0f) {
            String str29 = Game.lang.get("EconomyBuildingsCost") + r12;
            StringBuilder sbAppend6 = new StringBuilder().append(getReligion(i).EconomyBuildingsCost > 0.0f ? str18 : r12).append(r12).append(CFG.getPrecision2(getReligion(i).EconomyBuildingsCost * 100.0f, 100));
            String str30 = str6;
            str7 = str30;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str29, sbAppend6.append(str30).toString(), Images.construction, i2, 0, i4, i5, width, getReligion(i).EconomyBuildingsCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).EconomyBuildingsCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str7 = str6;
        }
        if (getReligion(i).MilitaryBuildingsCost != 0.0f) {
            String str31 = Game.lang.get("MilitaryBuildingsCost") + r12;
            StringBuilder sbAppend7 = new StringBuilder().append(getReligion(i).MilitaryBuildingsCost > 0.0f ? str18 : r12).append(r12).append(CFG.getPrecision2(getReligion(i).MilitaryBuildingsCost * 100.0f, 100));
            String str32 = str7;
            str8 = str32;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str31, sbAppend7.append(str32).toString(), Images.construction, i2, 0, i4, i5, width, getReligion(i).MilitaryBuildingsCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).MilitaryBuildingsCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str8 = str7;
        }
        if (getReligion(i).ConstructionTime != 0.0f) {
            String str33 = Game.lang.get("ConstructionTime") + r12;
            StringBuilder sbAppend8 = new StringBuilder().append(getReligion(i).ConstructionTime > 0.0f ? str18 : r12).append(CFG.getPrecision2(getReligion(i).ConstructionTime * 100.0f, 100));
            String str34 = str8;
            str9 = str34;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str33, sbAppend8.append(str34).toString(), Images.buildTime, i2, 0, i4, i5, width, getReligion(i).ConstructionTime == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).ConstructionTime > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str9 = str8;
        }
        if (getReligion(i).BuildingSlot != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("BuildingSlot") + r12, (getReligion(i).BuildingSlot > 0 ? str18 : r12) + CFG.getPrecision2(getReligion(i).BuildingSlot, 100), Images.build, i2, 0, i4, i5, width, getReligion(i).BuildingSlot == 0 ? Colors.HOVER_NEUTRAL : getReligion(i).BuildingSlot < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getReligion(i).InvestInEconomyCost != 0.0f) {
            String str35 = Game.lang.get("InvestInEconomyCost") + r12;
            StringBuilder sbAppend9 = new StringBuilder(r12).append(CFG.getPrecision2(getReligion(i).InvestInEconomyCost * 100.0f, 100));
            String str36 = str9;
            str10 = str36;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str35, sbAppend9.append(str36).toString(), Game_Calendar.IMG_ECONOMY_UP, i2, 0, i4, i5, width, getReligion(i).InvestInEconomyCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).InvestInEconomyCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str10 = str9;
        }
        if (getReligion(i).IncreaseTaxEfficiencyCost != 0.0f) {
            String str37 = Game.lang.get("IncreaseTaxEfficiencyCost") + r12;
            StringBuilder sbAppend10 = new StringBuilder(r12).append(CFG.getPrecision2(getReligion(i).IncreaseTaxEfficiencyCost * 100.0f, 100));
            String str38 = str10;
            str11 = str38;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str37, sbAppend10.append(str38).toString(), Images.taxUp, i2, 0, i4, i5, width, getReligion(i).IncreaseTaxEfficiencyCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).IncreaseTaxEfficiencyCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str11 = str10;
        }
        if (getReligion(i).DevelopInfrastructureCost != 0.0f) {
            String str39 = Game.lang.get("DevelopInfrastructureCost") + r12;
            StringBuilder sbAppend11 = new StringBuilder(r12).append(CFG.getPrecision2(getReligion(i).DevelopInfrastructureCost * 100.0f, 100));
            String str40 = str11;
            str12 = str40;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str39, sbAppend11.append(str40).toString(), Images.infrastructureUp, i2, 0, i4, i5, width, getReligion(i).DevelopInfrastructureCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).DevelopInfrastructureCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str12 = str11;
        }
        if (getReligion(i).IncreaseManpowerCost != 0.0f) {
            String str41 = Game.lang.get("IncreaseManpowerCost") + r12;
            StringBuilder sbAppend12 = new StringBuilder(r12).append(CFG.getPrecision2(getReligion(i).IncreaseManpowerCost, 100));
            String str42 = str12;
            str13 = str42;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str41, sbAppend12.append(str42).toString(), Game_Calendar.IMG_MANPOWER, i2, 0, i4, i5, width, getReligion(i).IncreaseManpowerCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).IncreaseManpowerCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str13 = str12;
        }
        if (getReligion(i).RecruitArmyCost != 0.0f) {
            String str43 = Game.lang.get("ArmyRecruitmentCost") + r12;
            String str44 = str13;
            str14 = str44;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str43, "" + CFG.getPrecision2(getReligion(i).RecruitArmyCost, 100) + str44, Images.gold, i2, 0, i4, i5, width, getReligion(i).RecruitArmyCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).RecruitArmyCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str14 = str13;
        }
        if (getReligion(i).GeneralAttack != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("GeneralsAttack") + r12, (getReligion(i).GeneralAttack > 0 ? str18 : r12) + CFG.getPrecision2(getReligion(i).GeneralAttack, 100), Images.attack, i2, 0, i4, i5, width, getReligion(i).GeneralAttack == 0 ? Colors.HOVER_NEUTRAL : getReligion(i).GeneralAttack < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getReligion(i).GeneralDefense != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("GeneralsDefense") + r12, (getReligion(i).GeneralDefense > 0 ? str18 : r12) + CFG.getPrecision2(getReligion(i).GeneralDefense, 100), Images.defense, i2, 0, i4, i5, width, getReligion(i).GeneralDefense == 0 ? Colors.HOVER_NEUTRAL : getReligion(i).GeneralDefense < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getReligion(i).UnitsAttack != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("UnitsAttack") + r12, (getReligion(i).UnitsAttack > 0 ? str18 : r12) + CFG.getPrecision2(getReligion(i).UnitsAttack, 100), Images.attack, i2, 0, i4, i5, width, getReligion(i).UnitsAttack == 0 ? Colors.HOVER_NEUTRAL : getReligion(i).UnitsAttack < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getReligion(i).UnitsDefense != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("UnitsDefense") + r12, (getReligion(i).UnitsDefense > 0 ? str18 : r12) + CFG.getPrecision2(getReligion(i).UnitsDefense, 100), Images.defense, i2, 0, i4, i5, width, getReligion(i).UnitsDefense == 0 ? Colors.HOVER_NEUTRAL : getReligion(i).UnitsDefense < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getReligion(i).AdvisorCost != 0.0f) {
            String str45 = Game.lang.get("AdvisorCost") + r12;
            StringBuilder sbAppend13 = new StringBuilder().append(getReligion(i).AdvisorCost > 0.0f ? str18 : r12).append(CFG.getPrecision2(getReligion(i).AdvisorCost * 100.0f, 100));
            String str46 = str14;
            str15 = str46;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str45, sbAppend13.append(str46).toString(), Images.council, i2, 0, i4, i5, width, getReligion(i).AdvisorCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).AdvisorCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str15 = str14;
        }
        if (getReligion(i).GeneralCost != 0.0f) {
            String str47 = Game.lang.get("GeneralCost") + r12;
            StringBuilder sbAppend14 = new StringBuilder().append(getReligion(i).GeneralCost > 0.0f ? str18 : r12).append(CFG.getPrecision2(getReligion(i).GeneralCost * 100.0f, 100));
            String str48 = str15;
            str16 = str48;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str47, sbAppend14.append(str48).toString(), Images.general, i2, 0, i4, i5, width, getReligion(i).GeneralCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).GeneralCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str16 = str15;
        }
        if (getReligion(i).MaxNumberOfLoans != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(Game.lang.get("MaximumNumberOfLoans") + r12, (getReligion(i).MaxNumberOfLoans > 0 ? str18 : r12) + getReligion(i).MaxNumberOfLoans, Images.loan, i2, 0, i4, i5, width, getReligion(i).MaxNumberOfLoans == 0 ? Colors.HOVER_NEUTRAL : getReligion(i).MaxNumberOfLoans < 0 ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        }
        if (getReligion(i).CoreCost != 0.0f) {
            String str49 = Game.lang.get("CoreConstruction") + r12;
            StringBuilder sbAppend15 = new StringBuilder().append(getReligion(i).CoreCost > 0.0f ? str18 : r12).append(CFG.getPrecision2(getReligion(i).CoreCost, 100));
            String str50 = str16;
            str17 = str50;
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str49, sbAppend15.append(str50).toString(), Images.core, i2, 0, i4, i5, width, getReligion(i).CoreCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).CoreCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
        } else {
            str17 = str16;
        }
        if (getReligion(i).ReligionCost != 0.0f) {
            String str51 = Game.lang.get("ReligionConversionCost") + r12;
            StringBuilder sb = new StringBuilder();
            if (getReligion(i).ReligionCost <= 0.0f) {
                str18 = r12;
            }
            arrayList.add(new ButtonStatsRectIMG_Bonuses_Right_Color(str51, sb.append(str18).append(CFG.getPrecision2(getReligion(i).ReligionCost, 100)).append(str17).toString(), Images.religion, i2, 0, i4, i5, width, getReligion(i).ReligionCost == 0.0f ? Colors.HOVER_NEUTRAL : getReligion(i).ReligionCost > 0.0f ? Colors.HOVER_NEGATIVE : Colors.HOVER_POSITIVE));
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

    public final Religion getReligion(int i) {
        return this.lReligions.get(i);
    }

    public final int getReligionConversionCost(int i) {
        return Math.max(1, (int) ((GameValues.religion.DEFAULT_CONVERSION_COST + (Game.getProvince(i).getGrowthRateWithBonuses() * GameValues.religion.CONVERSION_COST_PER_GROWTH_RATE)) * (Game.getCiv(Game.getProvince(i).getCivID()).getInflation() + 1.0f + (Game.getCiv(Game.getProvince(i).getCivID()).getWarWeariness() * GameValues.warWeariness.WW_CONVERSION_COST_PER_POINT) + (Game.getCiv(Game.getProvince(i).getCivID()).civBonuses.ReligionCost / 100.0f)) * (Game.religionManager.getReligion(Game.getProvince(i).getReligion()).ReligionGroupID != Game.religionManager.getReligion(Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()).ReligionGroupID ? GameValues.religion.CONVERSION_COST_DIFFERENT_RELIGION_GROUP : 1.0f)));
    }

    public final int getReligionConversionTime(int i) {
        return (int) (GameValues.religion.DEFAULT_CONVERSION_TIME + (Math.min(GameValues.religion.DEFAULT_CONVERSION_TIME_POPULATION_MIN, Game.getProvince(i).getPopulationTotal() / GameValues.religion.DEFAULT_CONVERSION_TIME_POPULATION) * (Game.religionManager.getReligion(Game.getProvince(i).getReligion()).ReligionGroupID != Game.religionManager.getReligion(Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()).ReligionGroupID ? GameValues.religion.CONVERSION_TIME_DIFFERENT_RELIGION_GROUP : 1.0f)));
    }

    public final int getReligionsSize() {
        return this.iReligionsSize;
    }

    public final void loadReligions() {
        List<Religion> list = this.lReligions;
        if (list != null) {
            list.clear();
        }
        this.lReligions = new ArrayList();
        try {
            String string = FileManager.loadFile("game/Religions.json").readString();
            Json json = new Json();
            json.setElementType(LoadManager.ConfigJson.class, XjthpFh.MbjNwMFRQwIzeKY, Religion.class);
            for (Religion religion : ((LoadManager.ConfigJson) json.fromJson(LoadManager.ConfigJson.class, string)).Data) {
                religion.Name = Game.lang.get(religion.Name);
                this.lReligions.add(religion);
            }
            this.iReligionsSize = this.lReligions.size();
            for (int i = 0; i < this.iReligionsSize; i++) {
                this.lReligions.get(i).Color[0] = this.lReligions.get(i).Color[0] / 255.0f;
                this.lReligions.get(i).Color[1] = this.lReligions.get(i).Color[1] / 255.0f;
                this.lReligions.get(i).Color[2] = this.lReligions.get(i).Color[2] / 255.0f;
            }
        } catch (GdxRuntimeException e) {
            CFG.LOG(e);
        }
        for (int i2 = 0; i2 < this.iReligionsSize; i2++) {
            try {
                if (FileManager.loadFile("gfx/religion/" + CFG.getRescouresPath_Short() + this.lReligions.get(i2).Icon).exists()) {
                    this.religionImages.add(new Image(ImageManager.loadTexture("gfx/religion/" + CFG.getRescouresPath_Short() + this.lReligions.get(i2).Icon)));
                } else {
                    this.religionImages.add(new Image(ImageManager.loadTexture("gfx/religion/" + CFG.getRescouresPath_Short_H() + this.lReligions.get(i2).Icon)));
                }
            } catch (GdxRuntimeException unused) {
                this.religionImages.add(new Image(ImageManager.loadTexture("gfx/religion/" + CFG.getRescouresPath_Short() + "notfound.png")));
            }
        }
        for (int i3 = 0; i3 < this.iReligionsSize; i3++) {
            if (this.religionImages.get(i3).getWidth() > this.maxWidth) {
                this.maxWidth = this.religionImages.get(i3).getWidth();
            }
            if (this.religionImages.get(i3).getHeight() > this.maxHeight) {
                this.maxHeight = this.religionImages.get(i3).getHeight();
            }
        }
    }

    public final void updateCivBonuses(int i, int i2, int i3, boolean z) {
        float f = i3;
        Game.getCiv(i).civBonuses.MonthlyIncome += getReligion(i2).MonthlyIncome * f;
        Game.getCiv(i).civBonuses.TaxEfficiency += getReligion(i2).TaxEfficiency * f;
        Game.getCiv(i).civBonuses.ProductionEfficiency += getReligion(i2).ProductionEfficiency * f;
        Game.getCiv(i).civBonuses.ProvinceMaintenance += getReligion(i2).ProvinceMaintenance * f;
        if (getReligion(i2).MonthlyLegacy != 0.0f) {
            Game.gameThread.addCivUpdateLegacyPerMonth(i);
        }
        Game.getCiv(i).civBonuses.MonthlyLegacy += getReligion(i2).MonthlyLegacy * f;
        if (getReligion(i2).MaxManpower != 0.0f) {
            Game.gameThreadTurns.addCivUpdateMaxManpower(i);
        }
        Game.getCiv(i).civBonuses.MaxManpower += getReligion(i2).MaxManpower * f;
        if (getReligion(i2).ArmyMaintenance != 0.0f) {
            Game.getCiv(i).civBonuses.ArmyMaintenance += getReligion(i2).ArmyMaintenance * f;
            Game.gameThread.addCivUpdateArmyMaintenance(i);
        }
        Game.getCiv(i).civBonuses.RecruitmentTime += getReligion(i2).RecruitmentTime * f;
        Game.getCiv(i).civBonuses.RecruitArmyCost += getReligion(i2).RecruitArmyCost * f;
        Game.getCiv(i).civBonuses.ConstructionCost += getReligion(i2).ConstructionCost * f;
        Game.getCiv(i).civBonuses.AdministrationBuildingsCost += getReligion(i2).AdministrationBuildingsCost * f;
        Game.getCiv(i).civBonuses.EconomyBuildingsCost += getReligion(i2).EconomyBuildingsCost * f;
        Game.getCiv(i).civBonuses.MilitaryBuildingsCost += getReligion(i2).MilitaryBuildingsCost * f;
        Game.getCiv(i).civBonuses.ConstructionTime += getReligion(i2).ConstructionTime * f;
        Game.getCiv(i).civBonuses.InvestInEconomyCost += getReligion(i2).InvestInEconomyCost * f;
        Game.getCiv(i).civBonuses.IncreaseTaxEfficiencyCost += getReligion(i2).IncreaseTaxEfficiencyCost * f;
        Game.getCiv(i).civBonuses.DevelopInfrastructureCost += getReligion(i2).DevelopInfrastructureCost * f;
        Game.getCiv(i).civBonuses.IncreaseManpowerCost += getReligion(i2).IncreaseManpowerCost * f;
        Game.getCiv(i).civBonuses.GeneralAttack += getReligion(i2).GeneralAttack * i3;
        Game.getCiv(i).civBonuses.GeneralDefense += getReligion(i2).GeneralDefense * i3;
        Game.getCiv(i).civBonuses.UnitsAttack += getReligion(i2).UnitsAttack * i3;
        Game.getCiv(i).civBonuses.UnitsDefense += getReligion(i2).UnitsDefense * i3;
        Game.getCiv(i).civBonuses.MaxNumberOfLoans += getReligion(i2).MaxNumberOfLoans * i3;
        Game.getCiv(i).civBonuses.BuildingSlot += getReligion(i2).BuildingSlot * i3;
        Game.getCiv(i).civBonuses.AdvisorCost += getReligion(i2).AdvisorCost * f;
        Game.getCiv(i).civBonuses.GeneralCost += getReligion(i2).GeneralCost * f;
        Game.getCiv(i).civBonuses.ReligionCost += getReligion(i2).ReligionCost * f;
        Game.getCiv(i).civBonuses.CoreCost += getReligion(i2).CoreCost * f;
        if (z) {
            return;
        }
        Game.getCiv(i).updateProvincesIncomeAndExpenses();
    }
}
