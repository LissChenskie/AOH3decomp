package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.AdvisorManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.civilization.CivilizationAdvisorsPool;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG_DoubleText;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonAdvisor;
import aoc.kingdoms.lukasz.menu_element.button.ButtonAdvisorGeneral;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses_Right;
import aoc.kingdoms.lukasz.menu_element.textStatic.TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Ruler;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusInGame.Info.InGame_Info;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_AdvisorRecruit extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static int iActiveAdvisorTypeID;
    private long lTime = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_AdvisorRecruit$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonAdvisor {
        AnonymousClass1(int i, int i2, String str, int i3, int i4, int i5, int i6, String str2) {
            super(i, i2, str, i3, i4, i5, i6, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fGold < AdvisorManager.getRecruitGoldCost(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get(lOow.AVPpyVDodXvWcn) + ": ", CFG.getPrecision2(AdvisorManager.getRecruitGoldCost(Game.player.iCivID), 100), Images.gold);
                return;
            }
            if (Game.getCiv(Game.player.iCivID).fLegacy < AdvisorManager.getRecruitCostLegacy(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(AdvisorManager.getRecruitCostLegacy(Game.player.iCivID), 100), Images.legacy);
                return;
            }
            String str = InGame_AdvisorRecruit.this.getAdvisorPool().lAdvisors.get(getCurrent()).sName;
            if (InGame_AdvisorRecruit.this.getAdvisorPool().recruitAdvisorID(Game.player.iCivID, getCurrent())) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                MenuManager menuManager = Game.menuManager;
                AdvisorManager advisorManager = Game.advisorManager;
                menuManager.rebuildInGame_Info(AdvisorManager.getAdvisorGroupName(InGame_AdvisorRecruit.this.getAdvisorPool().iAdvisorType), Game.lang.get("Hired") + ": " + str);
                InGame_Info.imgID = InGame_AdvisorRecruit.iActiveAdvisorTypeID == 3 ? Images.infoGeneral : Images.infoCrown;
                Game.getCiv(Game.player.iCivID).updateResearchPerMonth();
                Game.getCiv(Game.player.iCivID).updateLegacyPerMonth();
                Game.getCiv(Game.player.iCivID).updateManpowerPerMonth();
            }
            Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
            if (Game.menuManager.getVisibleInGame_Court()) {
                Game.menuManager.rebuildInGame_CourtSavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
            if (Game.menuManager.getVisibleInGame_CivBonuses()) {
                Game.menuManager.rebuildInGame_CivBonuses();
                Game.menuManager.setVisibleInGame_CivBonuses(true);
                InGame_CivBonuses.lTime = 0L;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_AdvisorRecruit$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonAdvisorGeneral {
        AnonymousClass2(int i, int i2, String str, int i3, int i4, int i5, String str2) {
            super(i, i2, str, i3, i4, i5, str2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).fGold < AdvisorManager.getRecruitGoldCost(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(AdvisorManager.getRecruitGoldCost(Game.player.iCivID), 100), Images.gold);
                return;
            }
            if (Game.getCiv(Game.player.iCivID).fLegacy < AdvisorManager.getRecruitCostLegacy(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(AdvisorManager.getRecruitCostLegacy(Game.player.iCivID), 100), Images.legacy);
                return;
            }
            String str = InGame_AdvisorRecruit.this.getAdvisorPool().lAdvisors.get(getCurrent()).sName;
            if (InGame_AdvisorRecruit.this.getAdvisorPool().recruitAdvisorID(Game.player.iCivID, getCurrent())) {
                InGame_Info.iCivID = Game.player.iCivID;
                InGame_Info.iCivID2 = 0;
                MenuManager menuManager = Game.menuManager;
                AdvisorManager advisorManager = Game.advisorManager;
                menuManager.rebuildInGame_Info(AdvisorManager.getAdvisorGroupName(InGame_AdvisorRecruit.this.getAdvisorPool().iAdvisorType), Game.lang.get("Hired") + ": " + str);
                InGame_Info.imgID = InGame_AdvisorRecruit.iActiveAdvisorTypeID == 3 ? Images.infoGeneral : Images.infoCrown;
            }
            Game.menuManager.setVisibleInGame_AdvisorRecruit(false);
            if (Game.menuManager.getVisibleInGame_Court()) {
                Game.menuManager.rebuildInGame_CourtSavePos();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
            if (Game.menuManager.getVisibleInGame_CivBonuses()) {
                Game.menuManager.rebuildInGame_CivBonuses();
                Game.menuManager.setVisibleInGame_CivBonuses(true);
                InGame_CivBonuses.lTime = 0L;
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_AdvisorRecruit$3, reason: invalid class name */
    class AnonymousClass3 extends Text_StaticBG_Ruler {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4) {
            super(str, str2, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Ruler, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Colors.getColorButtonHover2(z, getIsHovered());
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_AdvisorRecruit$4, reason: invalid class name */
    class AnonymousClass4 extends MenuTitleIMG_DoubleText {
        AnonymousClass4(String str, String str2, boolean z, boolean z2, int i) {
            super(str, str2, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_AdvisorRecruit.this.lTime;
        }
    }

    public InGame_AdvisorRecruit() {
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        int i3 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        int height = ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int i4 = CFG.BUTTON_WIDTH;
        int i5 = Renderer.boxBGExtraY;
        int i6 = CFG.PADDING;
        int height2 = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title500).getHeight();
        int i7 = CFG.PADDING * 2;
        int width2 = ImageManager.getImage(Images.gold).getWidth();
        int i8 = iActiveAdvisorTypeID;
        int i9 = 4;
        int i10 = 3;
        if (i8 < 3 || i8 == 4) {
            getAdvisorPool().updatePoolOfAdvisors(Game.player.iCivID);
        } else {
            Game.player.civAdvisorsPool_Military.updatePoolOfAdvisors(Game.player.iCivID);
        }
        int size = getAdvisorPool().lAdvisors.size();
        int buttonHeight = i7;
        int i11 = 0;
        while (i11 < size) {
            int i12 = iActiveAdvisorTypeID;
            if (i12 < i10 || i12 == i9) {
                int i13 = i11;
                i = i13;
                i2 = 4;
                arrayList.add(new AnonymousClass1(i3, buttonHeight, getAdvisorPool().lAdvisors.get(i13).sName, getAdvisorPool().lAdvisors.get(i13).imageID, Game.player.iCivID, i13, iActiveAdvisorTypeID, getAdvisorPool().lAdvisors.get(i13).sIMG));
            } else {
                int i14 = i11;
                arrayList.add(new AnonymousClass2(i3, buttonHeight, getAdvisorPool().lAdvisors.get(i11).sName, getAdvisorPool().lAdvisors.get(i11).imageID, Game.player.iCivID, i14, getAdvisorPool().lAdvisors.get(i11).sIMG));
                i = i14;
                i2 = 4;
            }
            int width3 = i3 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
            int i15 = (width - width3) - i3;
            int buttonHeight2 = (ButtonAdvisor.getButtonHeight() - (CFG.PADDING * 2)) / 3;
            int i16 = i;
            int i17 = height;
            int i18 = i3;
            arrayList.add(new AnonymousClass3(getAdvisorPool().lAdvisors.get(i16).sName, Game.lang.get("XYearsOld", Math.min(99, Game_Calendar.currentYear - getAdvisorPool().lAdvisors.get(i16).iYearOfBirth)), width3, buttonHeight, i15, buttonHeight2));
            int height3 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
            if (getAdvisorPool().lAdvisors.get(i16).TaxEfficiency != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("TaxEfficiency") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).TaxEfficiency, 100) + "%", Images.tax, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).ProvinceMaintenance != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ProvinceMaintenance") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).ProvinceMaintenance, 100) + "%", Images.gold, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).GrowthRate != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("GrowthRate") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).GrowthRate, 100), Images.populationGrowth, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).ConstructionCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ConstructionCost") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).ConstructionCost * 100.0f, 100) + "%", Images.construction, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).AdministrationBuildingsCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("AdministrationBuildingsCost") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).AdministrationBuildingsCost * 100.0f, 100) + "%", Images.construction, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).EconomyBuildingsCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("EconomyBuildingsCost") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).EconomyBuildingsCost * 100.0f, 100) + "%", Images.construction, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).MilitaryBuildingsCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MilitaryBuildingsCost") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).MilitaryBuildingsCost * 100.0f, 100) + "%", Images.construction, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).InvestInEconomyCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("InvestInEconomyCost") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).InvestInEconomyCost * 100.0f, 100) + "%", Game_Calendar.IMG_ECONOMY_UP, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).IncreaseTaxEfficiencyCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseTaxEfficiencyCost") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).IncreaseTaxEfficiencyCost * 100.0f, 100) + "%", Images.taxUp, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).IncreaseGrowthRateCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseGrowthRateCost") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).IncreaseGrowthRateCost * 100.0f, 100) + "%", Images.populationUp, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).DevelopInfrastructureCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("DevelopInfrastructureCost") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).DevelopInfrastructureCost * 100.0f, 100) + "%", Images.infrastructureUp, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).ProductionEfficiency != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ProductionEfficiency") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).ProductionEfficiency, 100) + "%", Images.goods, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).Research != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ResearchPerMonth") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).Research, 100), Game_Calendar.IMG_TECHNOLOGY, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).MonthlyLegacy != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MonthlyLegacy") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).MonthlyLegacy, 100), Images.legacy, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).GeneralAttack != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("GeneralsAttack") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).GeneralAttack, 100), Images.attack, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).GeneralDefense != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("GeneralsDefense") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).GeneralDefense, 100), Images.defense, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).ArmyMaintenance != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyMaintenance") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).ArmyMaintenance, 100) + "%", Images.armyMaintenance, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).RecruitArmyCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyRecruitmentCost") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).RecruitArmyCost, 100) + "%", Images.gold, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).ConstructionTime != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ConstructionTime") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).ConstructionTime * 100.0f, 100) + "%", Images.buildTime, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).IncreaseManpowerCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncreaseManpowerCost") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).IncreaseManpowerCost, 100) + "%", Game_Calendar.IMG_MANPOWER_UP, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).RecruitmentTime != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("RecruitmentTime") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).RecruitmentTime, 100) + "%", Game_Calendar.IMG_MANPOWER_TIME, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).LoanInterest != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("LoanInterest") + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).LoanInterest, 100) + "%", Images.loan, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).CoreCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(hQfu.LSqjWlPFsduHHo) + r5, r5 + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).CoreCost, 100) + "%", Images.core, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).ReligionCost != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ReligionConversionCost") + r5, "" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).ReligionCost, 100) + "%", Images.religion, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).IncomeProduction != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("IncomeProduction") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).IncomeProduction, 100) + "%", Images.goods, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).MaxManpower != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("MaximumManpower") + r5, "+" + ((int) getAdvisorPool().lAdvisors.get(i16).MaxManpower), Game_Calendar.IMG_MANPOWER_UP, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).UnitsAttack != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("UnitsAttack") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).UnitsAttack, 100), Images.attack, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).UnitsDefense != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("UnitsDefense") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).UnitsDefense, 100), Images.defense, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).RegimentsLimit != 0) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("RegimentsLimit") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).RegimentsLimit, 1), Images.regimentsLimit, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).ImproveRelationsModifier != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ImproveRelationsModifier") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).ImproveRelationsModifier, 100) + "%", Images.relations, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).ArmyMovementSpeed != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get("ArmyMovementSpeed") + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).ArmyMovementSpeed, 100) + "%", Images.movementSpeed, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            if (getAdvisorPool().lAdvisors.get(i16).SiegeEffectiveness != 0.0f) {
                arrayList.add(new ButtonStatsRectIMG_Bonuses_Right(Game.lang.get(QefTqRjwAJmEDy.Jxtg) + r5, "+" + CFG.getPrecision2(getAdvisorPool().lAdvisors.get(i16).SiegeEffectiveness * 100.0f, 100) + "%", Images.siege, width3, buttonHeight + height3, i15, buttonHeight2, width2));
                arrayList.get(arrayList.size() - 1).getHeight();
                int i19 = CFG.PADDING;
            }
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(CFG.PADDING + Images.boxTitleBORDERWIDTH, buttonHeight - CFG.PADDING, width - ((CFG.PADDING + Images.boxTitleBORDERWIDTH) * 2), ButtonAdvisor.getButtonHeight() + (CFG.PADDING * 2)));
            buttonHeight += ButtonAdvisor.getButtonHeight() + (CFG.PADDING * 3);
            i11 = i16 + 1;
            height2 = height2;
            size = size;
            i10 = i10;
            height = i17;
            i9 = i2;
            i3 = i18;
        }
        int i20 = i3;
        int i21 = height;
        int iCeil = (int) Math.ceil(ImageManager.getImage(Images.gold).getWidth() * 1.5f);
        int i22 = ((width - (i20 * 2)) - CFG.PADDING) / 2;
        arrayList.add(new TextBonus(Game.lang.get("Cost") + ": ", "" + AdvisorManager.getRecruitGoldCost(Game.player.iCivID), Images.gold, i20, buttonHeight, i22, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        arrayList.add(new TextBonus(Game.lang.get("LegacyPoints") + ": ", "" + AdvisorManager.getRecruitCostLegacy(Game.player.iCivID), Images.legacy, i20 + i22 + CFG.PADDING, buttonHeight, i22, CFG.TEXT_HEIGHT + (CFG.PADDING * 5), iCeil));
        int height4 = buttonHeight + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        int iMin = Math.min(height4, (CFG.GAME_HEIGHT - i21) - height2);
        arrayList.add(new Empty(0, 0, width, Math.max(height4, height4)));
        AdvisorManager advisorManager = Game.advisorManager;
        initMenu(new AnonymousClass4("", AdvisorManager.getAdvisorGroupName(iActiveAdvisorTypeID), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), (CFG.GAME_HEIGHT / 2) - ((iMin + i21) / 2), width, iMin, arrayList, false, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = this.lTime + 60 >= CFG.currentTimeMillis ? (i2 - ((CFG.BUTTON_HEIGHT * 2) / 5)) + ((int) (((CFG.BUTTON_HEIGHT * 2) / 5) * ((CFG.currentTimeMillis - this.lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    public CivilizationAdvisorsPool getAdvisorPool() {
        int i = iActiveAdvisorTypeID;
        if (i == 0) {
            return Game.player.civAdvisorsPool_Administration;
        }
        if (i != 1) {
            return i != 2 ? Game.player.civAdvisorsPool_Military : Game.player.civAdvisorsPool_Technology;
        }
        return Game.player.civAdvisorsPool_Economy;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        this.lTime = CFG.currentTimeMillis;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("ChooseAnAdvisorToHire"));
    }
}
