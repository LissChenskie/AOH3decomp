package aoc.kingdoms.lukasz.menusInGame.Province;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.MenuElement;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_ProvinceBonuses extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iProvinceID;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceBonuses$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Game.getProvince(InGame_ProvinceBonuses.iProvinceID).provBonuses.LocalGrowthRate > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceBonuses$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Static {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            if (z) {
                return Colors.BUTTON_TEXT_ACTIVE;
            }
            if (getIsHovered()) {
                return Colors.BUTTON_TEXT_HOVERED;
            }
            return getClickable() ? Colors.BUTTON_TEXT : Colors.BUTTON_TEXT_DISABLED;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceBonuses$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceBonuses$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, str2, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceBonuses$5, reason: invalid class name */
    class AnonymousClass5 extends MenuTitleIMG_DoubleText {
        AnonymousClass5(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_ProvinceBonuses.lTime;
        }
    }

    public InGame_ProvinceBonuses() {
        ArrayList arrayList;
        String str;
        String str2;
        String str3;
        String str4;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4 = new ArrayList();
        int i = CFG.PADDING * 2;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        int i5 = InGame_ProvinceInfo.menuPosY;
        int i6 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 2);
        int i7 = CFG.TEXT_HEIGHT + (CFG.PADDING * 6);
        ArrayList arrayList5 = new ArrayList();
        if (Game.getProvince(iProvinceID).provBonuses.MonthlyLegacy != 0.0f) {
            arrayList = arrayList5;
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MonthlyLegacy") + ": ", "+" + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.MonthlyLegacy, 100), Images.legacy, i, i6, width - (i * 2), i7, width2));
        } else {
            arrayList = arrayList5;
        }
        if (Game.getProvince(iProvinceID).provBonuses.DefenseBonus != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DefenseBonus") + ": ", r14 + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.DefenseBonus, 100), Images.defense, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.FortLevel != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DefenseLevel") + r12, r14 + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.FortLevel, 100), Images.fort, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.FortDefense != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProvinceDefense") + r12, "+" + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.FortDefense, 1), Game_Calendar.IMG_FORT_DEFENSE, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.MaximumManpower != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumManpower") + r12, (Game.getProvince(iProvinceID).provBonuses.MaximumManpower > 0 ? r14 : "") + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.MaximumManpower, 1), Game_Calendar.IMG_MANPOWER_UP, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.LocalManpower != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("LocalManpower") + r12, (Game.getProvince(iProvinceID).provBonuses.LocalManpower > 0 ? r14 : r15) + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.LocalManpower * 100, 10), Game_Calendar.IMG_MANPOWER_UP, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.RecruitArmyCostInProvince != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ArmyRecruitmentCostInProvince") + r12, (Game.getProvince(iProvinceID).provBonuses.RecruitArmyCostInProvince > 0.0f ? r14 : r15) + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.RecruitArmyCostInProvince, 100) + "%", Game_Calendar.IMG_MANPOWER, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.ConstructionCost != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ConstructionCost") + r12, (Game.getProvince(iProvinceID).provBonuses.ConstructionCost > 0.0f ? r14 : r15) + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.ConstructionCost * 100.0f, 100) + "%", Images.construction, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.ConstructionTimeBonus != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ConstructionTime") + r12, (Game.getProvince(iProvinceID).provBonuses.ConstructionTimeBonus > 0.0f ? r14 : r15) + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.ConstructionTimeBonus * 100.0f, 100) + r15, Images.buildTime, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.LocalGrowthRate != 0.0f) {
            arrayList.add(new AnonymousClass1(Game.lang.get("LocalGrowthRate") + r12, (Game.getProvince(iProvinceID).provBonuses.LocalGrowthRate > 0.0f ? r14 : r15) + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.LocalGrowthRate, 100) + r15, Images.populationGrowth, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.InvestInEconomyCost != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("InvestInEconomyCost") + r12, (Game.getProvince(iProvinceID).provBonuses.InvestInEconomyCost > 0.0f ? r14 : r15) + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.InvestInEconomyCost * 100.0f, 100) + r15, Game_Calendar.IMG_ECONOMY_UP, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.IncreaseGrowthRateCost != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreaseGrowthRateCost") + r12, (Game.getProvince(iProvinceID).provBonuses.IncreaseGrowthRateCost > 0.0f ? r14 : r15) + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.IncreaseGrowthRateCost * 100.0f, 100) + r15, Images.populationUp, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.DevelopInfrastructureCost != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DevelopInfrastructureCost") + r12, (Game.getProvince(iProvinceID).provBonuses.DevelopInfrastructureCost > 0.0f ? r14 : r15) + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.DevelopInfrastructureCost * 100.0f, 100) + r15, Images.infrastructureUp, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.IncreaseManpowerCost != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreaseManpowerCost") + r12, (Game.getProvince(iProvinceID).provBonuses.IncreaseManpowerCost > 0.0f ? r14 : r15) + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.IncreaseManpowerCost * 100.0f, 100) + r15, Game_Calendar.IMG_MANPOWER_UP, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.IncreaseTaxEfficiencyCost != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncreaseTaxEfficiencyCost") + r12, (Game.getProvince(iProvinceID).provBonuses.IncreaseTaxEfficiencyCost > 0.0f ? r14 : r15) + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.IncreaseTaxEfficiencyCost * 100.0f, 100) + r15, Images.taxUp, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.MaintenanceCost != 0.0f) {
            int i8 = width - (i * 2);
            str = "";
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("BuildingsMaintenance") + r12, "" + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.MaintenanceCost, 100), Images.buildings, i, i6, i8, i7, width2));
        } else {
            str = "";
        }
        if (Game.getProvince(iProvinceID).provBonuses.ProvinceMaintenance != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProvinceMaintenance") + r12, str + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.ProvinceMaintenance, 100) + r15, Images.provinces, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.MonthlyIncome != 0.0f) {
            int i9 = width - (i * 2);
            str2 = "+";
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MonthlyIncome") + r12, "+" + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.MonthlyIncome, 100), Images.gold, i, i6, i9, i7, width2));
        } else {
            str2 = "+";
        }
        if (Game.getProvince(iProvinceID).provBonuses.MaxInfrastructure != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("MaximumInfrastructureLevel") + r12, str2 + Game.getProvince(iProvinceID).provBonuses.MaxInfrastructure, Images.infrastructure, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.BuildingSlots != 0) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("BuildingSlots") + r12, str2 + Game.getProvince(iProvinceID).provBonuses.BuildingSlots, Images.build, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.LocalTaxEfficiency != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("LocalTaxEfficiency") + r12, str2 + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.LocalTaxEfficiency, 100), Images.tax, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.ArmyMovementSpeed != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ArmyMovementSpeed") + r12, str2 + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.ArmyMovementSpeed * 10.0f, 100) + r15, Images.movementSpeed, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.DiseaseDeathRate != 0.0f) {
            String str5 = str;
            int i10 = width - (i * 2);
            str3 = str5;
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("DiseasesDeathRate") + r12, str5 + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.DiseaseDeathRate * 100.0f, 100) + r15, Images.disease, i, i6, i10, i7, width2));
        } else {
            str3 = str;
        }
        if (Game.getProvince(iProvinceID).provBonuses.CasualtiesNuclearAttacks != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("CasualtiesFromNuclearAttacks") + r12, str3 + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.CasualtiesNuclearAttacks * 100.0f, 100) + r15, Images.nuke, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.Economy != 0.0f) {
            String str6 = str2;
            int i11 = width - (i * 2);
            str4 = str6;
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("Economy") + r12, str6 + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.Economy, 100), Game_Calendar.IMG_ECONOMY, i, i6, i11, i7, width2));
        } else {
            str4 = str2;
        }
        if (Game.getProvince(iProvinceID).provBonuses.ResearchPoints != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ResearchPerMonth") + r12, str4 + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.ResearchPoints, 100), Game_Calendar.IMG_TECHNOLOGY, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.IncomeProduction != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("IncomeProduction") + r12, str4 + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.IncomeProduction, 100) + r15, Images.goods, i, i6, width - (i * 2), i7, width2));
        }
        if (Game.getProvince(iProvinceID).provBonuses.ProductionEfficiency != 0.0f) {
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProductionEfficiency") + r12, str4 + CFG.getPrecision2(Game.getProvince(iProvinceID).provBonuses.ProductionEfficiency, 100) + r15, Images.goods, i, i6, width - (i * 2), i7, width2));
        }
        int posY = i6;
        while (arrayList.size() > 0) {
            int size = arrayList.size();
            int i12 = 0;
            for (int i13 = 1; i13 < size; i13++) {
                if (CFG.compareAlphabetic_TwoString(((MenuElement) arrayList.get(i12)).getText(), ((MenuElement) arrayList.get(i13)).getText())) {
                    i12 = i13;
                }
            }
            arrayList4.add((MenuElement) arrayList.get(i12));
            arrayList4.get(arrayList4.size() - 1).setPosY(posY);
            posY += arrayList4.get(arrayList4.size() - 1).getHeight() + CFG.PADDING;
            arrayList.remove(i12);
        }
        if (arrayList4.size() == 0) {
            arrayList2 = arrayList4;
            arrayList2.add(new AnonymousClass2(Game.lang.get("None") + ".", CFG.FONT_REGULAR_SMALL, -1, i, posY, width - (i * 2), CFG.BUTTON_HEIGHT));
            posY += arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
        } else {
            arrayList2 = arrayList4;
        }
        if (Game.getProvince(iProvinceID).getInfrastructure() > 0) {
            arrayList2.add(new Text_Title_v2(Game.lang.get("Infrastructure"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, posY, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4)));
            int height = posY + arrayList2.get(arrayList2.size() - 1).getHeight() + CFG.PADDING;
            int i14 = width - (i * 2);
            String str7 = str4;
            ArrayList arrayList6 = arrayList2;
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("TaxEfficiency") + r12, str4 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_TAX_EFFICIENCY_PER_LVL, 100) + r15, Images.tax, i, height, i14, i7, width2));
            String str8 = str3;
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ConstructionCost") + r12, str8 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_CONSTRUCTION_COST_PER_LVL * 100.0f, 100) + r15, Images.build, i, height, i14, i7, width2));
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ConstructionTime") + r12, str8 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_CONSTRUCTION_TIME_PER_LVL * 100.0f, 100) + r15, Images.buildTime, i, height, i14, i7, width2));
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("BuildingSlots") + r12, str7 + (Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL), Images.build, i, height, i14, i7, width2));
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("InvestInEconomyCost") + r12, str8 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_INVEST_COST_PER_LVL * 100.0f, 100) + r15, Game_Calendar.IMG_ECONOMY_UP, i, height, i14, i7, width2));
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ProductionEfficiency") + r12, str7 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_PRODUCTION_EFFICIENCY_PER_LVL * 100.0f, 100) + r15, Images.goods, i, height, i14, i7, width2));
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("RecruitmentTime") + r12, str8 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_RECRUITMENT_TIME_PER_LVL * 100.0f, 100) + r15, Game_Calendar.IMG_MANPOWER_TIME, i, height, i14, i7, width2));
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("LocalGrowthRate") + r12, str7 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_GROWTH_RATE_PER_LVL, 100) + r15, Images.populationGrowth, i, height, i14, i7, width2));
            arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get("ArmyMovementSpeed") + r12, str7 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_ARMY_MOVEMENT_PER_LVL * 100.0f, 100) + r15, Images.movementSpeed, i, height, i14, i7, width2));
            arrayList.add(new AnonymousClass3(Game.lang.get("ProvinceMaintenance") + r12, str7 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_PROVINCE_MAINTENANCE_PER_LVL * 100.0f, 100) + r15, Images.gold, i, height, i14, i7, width2));
            arrayList.add(new AnonymousClass4(Game.lang.get("DiseasesDeathRate") + r12, str8 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL * 100.0f, 100) + r15, Images.disease, i, height, i14, i7, width2));
            if (Game.getProvince(iProvinceID).wonderID >= 0) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses(Game.lang.get(CvuNnwgYwe.QOBfcgzqKbrdrM) + ", " + Game.lang.get("ConstructionCost") + r12, str8 + CFG.getPrecision2(Game.getProvince(iProvinceID).getInfrastructure() * GameValues.infrastructure.INFRASTRUCTURE_WONDER_CONSTRUCTION_COST_PER_LVL * 100.0f, 100) + r15, Images.mapModesWonders, i, height, i14, i7, width2));
            }
            posY = height;
            while (arrayList.size() > 0) {
                int size2 = arrayList.size();
                int i15 = 0;
                for (int i16 = 1; i16 < size2; i16++) {
                    if (CFG.compareAlphabetic_TwoString(((MenuElement) arrayList.get(i15)).getText(), ((MenuElement) arrayList.get(i16)).getText())) {
                        i15 = i16;
                    }
                }
                arrayList6.add((MenuElement) arrayList.get(i15));
                arrayList6.get(arrayList6.size() - 1).setPosY(posY);
                posY += arrayList6.get(arrayList6.size() - 1).getHeight() + CFG.PADDING;
                arrayList.remove(i15);
            }
            arrayList3 = arrayList6;
        } else {
            arrayList3 = arrayList2;
        }
        int size3 = arrayList3.size();
        for (int i17 = 0; i17 < size3; i17++) {
            if (posY < arrayList3.get(i17).getPosY() + arrayList3.get(i17).getHeight() + CFG.PADDING) {
                posY = arrayList3.get(i17).getPosY() + arrayList3.get(i17).getHeight() + CFG.PADDING;
            }
        }
        int iMin = Math.min(posY, (CFG.GAME_HEIGHT - i5) - (CFG.PADDING * 2));
        arrayList3.add(new Empty(0, 0, width, Math.max(posY, Math.max(posY, iMin))));
        initMenu(new AnonymousClass5("", Game.getProvince(iProvinceID).getProvinceName(), false, false, Images.title1Red), (CFG.PADDING * 2) + InGame_ProvinceInfo.menuW, i5, width, iMin, arrayList3, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i2 = (i2 + ((CFG.BUTTON_HEIGHT * 2) / 5)) - ((int) (((CFG.BUTTON_HEIGHT * 2) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f)));
        }
        int i3 = i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.newGameOver).draw2(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.newGameOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("ProvinceBonuses"));
    }
}
