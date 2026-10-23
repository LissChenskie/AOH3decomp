package aoc.kingdoms.lukasz.map.province;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.ColonizationManager;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.army.ArmyRecruit;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.ColorPicker;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_BuildingsGroup;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Buildings2;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseGrowthRate;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseManpower;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_IncreaseTaxEfficiency;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_InvestInEconomy;
import aoc.kingdoms.lukasz.menusInGame.Goods.InGame_GoodsMarket;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses;
import aoc.kingdoms.lukasz.menusInGame.InGame_MoveCapital_PopUp;
import aoc.kingdoms.lukasz.menusInGame.InGame_ReleaseAVassal;
import aoc.kingdoms.lukasz.menusInGame.InGame_War;
import aoc.kingdoms.lukasz.menusInGame.InGame_Wonder;
import aoc.kingdoms.lukasz.menusInGame.Peace.InGame_Peace;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceArmy;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceBonuses;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitArmy_NewArmy;
import aoc.kingdoms.lukasz.menusInGame.RecruitArmy.InGame_RecruitMercenaries;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapContinents;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapGeoRegions;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapGrowthRate;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapOptimizationRegions;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapResources;
import aoc.kingdoms.lukasz.menusMapEditor.EditorMapTerrainType;
import aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioRelationsList;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign_InGame;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations;
import aoc.kingdoms.lukasz.menusScenarioEditor.Technology.ScenarioTechnologyCivs;
import aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWasteland;
import aoc.kingdoms.lukasz.textures.Images;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceTouchExtraAction {
    public static ExtraAction actionDown_ExtraAction;
    public static ExtraAction actionMove_ExtraAction;
    public static ExtraAction actionUp_ExtraAction;
    public static ExtraAction actionUp_SetActiveProvinceID_ExtraAction;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$1, reason: invalid class name */
    class AnonymousClass1 implements ExtraAction {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$10, reason: invalid class name */
    class AnonymousClass10 implements ExtraAction {
        AnonymousClass10() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                ProvinceTouchExtraAction.actionPeaceView(Game.iActiveProvince, false);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$11, reason: invalid class name */
    class AnonymousClass11 implements ExtraAction {
        AnonymousClass11() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                ProvinceTouchExtraAction.actionReleaseVassal(Game.iActiveProvince, false);
                Game.menuManager.rebuildInGame_ReleaseAVassal_SavePos();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$12, reason: invalid class name */
    class AnonymousClass12 implements ExtraAction {
        AnonymousClass12() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0) {
                    ProvinceTouchExtraAction.actionBuilding(Game.iActiveProvince);
                } else if (i4 == 1) {
                    Game.getProvince(Game.iActiveProvince).cancelBuildingConstruction(Game.getProvince(Game.iActiveProvince).getCivID(), InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY());
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$13, reason: invalid class name */
    class AnonymousClass13 implements ExtraAction {
        AnonymousClass13() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0 && Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID && Game.getProvince(Game.iActiveProvince).getReligion() != Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getReligionID() && !Game.getProvince(Game.iActiveProvince).addReligionConversion()) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.religionManager.getReligionConversionCost(Game.iActiveProvince), 100), Images.gold);
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$14, reason: invalid class name */
    class AnonymousClass14 implements ExtraAction {
        AnonymousClass14() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0 && Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID && !Game.getProvince(Game.iActiveProvince).haveACore(Game.player.iCivID) && Game.getProvince(Game.iActiveProvince).coreCreation == null && !Game.getProvince(Game.iActiveProvince).addCoreCreation()) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getCoreCreationCost(Game.iActiveProvince), 100), Images.gold);
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$15, reason: invalid class name */
    class AnonymousClass15 implements ExtraAction {
        AnonymousClass15() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0) {
                    int i5 = 0;
                    if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                        if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                            while (i5 < 5) {
                                if (Game.canInvestInEconomy(Game.iActiveProvince)) {
                                    Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                                    Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + ": ", CFG.getPrecision2(Game.getProvince(Game.iActiveProvince).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(Game.iActiveProvince), 10), Game_Calendar.IMG_ECONOMY);
                                    break;
                                }
                                if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(Game.iActiveProvince)) {
                                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getInvestCost_Legacy(Game.iActiveProvince), 100), Images.legacy);
                                } else {
                                    if (!Game.getProvince(Game.iActiveProvince).addInvestInProvince()) {
                                        Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getInvestCost(Game.iActiveProvince), 100), Images.gold);
                                        break;
                                    }
                                    ProvinceDraw.addProvinceDot_Economy(Game.iActiveProvince);
                                }
                                i5++;
                            }
                        }
                    } else if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                        while (i5 < InGame_Court_InvestInEconomy.CLICK_X_TIMES) {
                            if (Game.canInvestInEconomy(Game.iActiveProvince)) {
                                Game.menuManager.addToastGold(Game.lang.get("IncreasePopulationGrowthRate"), Images.populationUp);
                                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumEconomy") + ": ", CFG.getPrecision2(Game.getProvince(Game.iActiveProvince).getEconomyWithBonuses(), 10) + " / " + CFG.getPrecision2(Game.getMaxEconomy(Game.iActiveProvince), 10), Game_Calendar.IMG_ECONOMY);
                                break;
                            }
                            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getInvestCost_Legacy(Game.iActiveProvince)) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getInvestCost_Legacy(Game.iActiveProvince), 100), Images.legacy);
                            } else {
                                if (!Game.getProvince(Game.iActiveProvince).addInvestInProvince()) {
                                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getInvestCost(Game.iActiveProvince), 100), Images.gold);
                                    break;
                                }
                                ProvinceDraw.addProvinceDot_Economy(Game.iActiveProvince);
                            }
                            i5++;
                        }
                    }
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$16, reason: invalid class name */
    class AnonymousClass16 implements ExtraAction {
        AnonymousClass16() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0 && Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID && InGame_ProvinceInfo.addDevelopInfrastructureCost(Game.iActiveProvince)) {
                    ProvinceDraw.addProvinceDot_Infrastructure(Game.iActiveProvince);
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$17, reason: invalid class name */
    class AnonymousClass17 implements ExtraAction {
        AnonymousClass17() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0) {
                    int i5 = 0;
                    if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                        if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                            while (i5 < 5) {
                                if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(Game.iActiveProvince)) {
                                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(Game.iActiveProvince), 100), Images.legacy);
                                    break;
                                } else if (!Game.getProvince(Game.iActiveProvince).addIncreaseTaxEfficiencyInProvince()) {
                                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(Game.iActiveProvince), 100), Images.gold);
                                    break;
                                } else {
                                    ProvinceDraw.addProvinceDot_TaxEfficiency(Game.iActiveProvince);
                                    i5++;
                                }
                            }
                        }
                    } else if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                        while (i5 < InGame_Court_IncreaseTaxEfficiency.CLICK_X_TIMES) {
                            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseTaxEfficiencyCostLegacy(Game.iActiveProvince)) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCostLegacy(Game.iActiveProvince), 100), Images.legacy);
                                break;
                            } else if (!Game.getProvince(Game.iActiveProvince).addIncreaseTaxEfficiencyInProvince()) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseTaxEfficiencyCost(Game.iActiveProvince), 100), Images.gold);
                                break;
                            } else {
                                ProvinceDraw.addProvinceDot_TaxEfficiency(Game.iActiveProvince);
                                i5++;
                            }
                        }
                    }
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$18, reason: invalid class name */
    class AnonymousClass18 implements ExtraAction {
        AnonymousClass18() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0 && Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                    if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 7 && Game.iActiveProvince == InGame_MoveCapital_PopUp.toProvinceID) {
                        Game.menuManager.setVisibleInGame_PopUp(false);
                    } else {
                        InGame_MoveCapital_PopUp.toProvinceID = Game.iActiveProvince;
                        Game.menuManager.rebuildInGame_MoveCapital_PopUp();
                    }
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$19, reason: invalid class name */
    class AnonymousClass19 implements ExtraAction {
        AnonymousClass19() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0) {
                    int i5 = 0;
                    if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                        if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                            while (i5 < 5) {
                                if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseManpowerCostLegacy(Game.iActiveProvince)) {
                                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseManpowerCostLegacy(Game.iActiveProvince), 100), Images.legacy);
                                    break;
                                } else if (!Game.getProvince(Game.iActiveProvince).addIncreaseManpowerInProvince()) {
                                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseManpowerCost(Game.iActiveProvince), 100), Images.gold);
                                    break;
                                } else {
                                    ProvinceDraw.addProvinceDot_Manpower(Game.iActiveProvince);
                                    i5++;
                                }
                            }
                        }
                    } else if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                        while (i5 < InGame_Court_IncreaseManpower.CLICK_X_TIMES) {
                            if (Game.getCiv(Game.player.iCivID).fLegacy < Game.getIncreaseManpowerCostLegacy(Game.iActiveProvince)) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientLegacy") + ": ", CFG.getPrecision2(Game.getIncreaseManpowerCostLegacy(Game.iActiveProvince), 100), Images.legacy);
                                break;
                            } else if (!Game.getProvince(Game.iActiveProvince).addIncreaseManpowerInProvince()) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseManpowerCost(Game.iActiveProvince), 100), Images.gold);
                                break;
                            } else {
                                ProvinceDraw.addProvinceDot_Manpower(Game.iActiveProvince);
                                i5++;
                            }
                        }
                    }
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$2, reason: invalid class name */
    class AnonymousClass2 implements ExtraAction {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$20, reason: invalid class name */
    class AnonymousClass20 implements ExtraAction {
        AnonymousClass20() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0) {
                    int i5 = 0;
                    if (AA_KeyManager.CTRL_HOLD || AA_KeyManager.SHIFT_HOLD) {
                        if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                            while (i5 < 5) {
                                if (!Game.getProvince(Game.iActiveProvince).addIncreaseGrowthRateInProvince()) {
                                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseGrowthRateCost(Game.iActiveProvince), 100), Images.gold);
                                    break;
                                } else {
                                    ProvinceDraw.addProvinceDot_GrowthRate(Game.iActiveProvince);
                                    i5++;
                                }
                            }
                        }
                    } else if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                        while (i5 < InGame_Court_IncreaseGrowthRate.CLICK_X_TIMES) {
                            if (!Game.getProvince(Game.iActiveProvince).addIncreaseGrowthRateInProvince()) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getIncreaseGrowthRateCost(Game.iActiveProvince), 100), Images.gold);
                                break;
                            } else {
                                ProvinceDraw.addProvinceDot_GrowthRate(Game.iActiveProvince);
                                i5++;
                            }
                        }
                    }
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$21, reason: invalid class name */
    class AnonymousClass21 implements ExtraAction {
        AnonymousClass21() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).wonderID < 0) {
                return;
            }
            if (!Game.menuManager.getVisibleInGame_Wonder()) {
                InGame_Wonder.iProvinceID = Game.iActiveProvince;
                Game.menuManager.rebuildInGame_Wonder();
            } else if (InGame_Wonder.iProvinceID != Game.iActiveProvince) {
                InGame_Wonder.iProvinceID = Game.iActiveProvince;
                Game.menuManager.rebuildInGame_Wonder();
                InGame_Wonder.lTime = 0L;
            }
            if (Game.menuManager.getVisibleInGame_Court() || Game.menuManager.getVisibleInGame_Civ()) {
                Game.menuManager.hideCourtCiv();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$22, reason: invalid class name */
    class AnonymousClass22 implements ExtraAction {
        AnonymousClass22() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (Game.menuManager.getColorPicker().getVisible() && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
                    ColorPicker.ACTIVE_CIV_ID = Game.getProvince(Game.iActiveProvince).getCivID();
                    Game.menuManager.getColorPicker().setActiveRGBColor(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getR(), Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getG(), Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getB());
                }
                if (Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                    Game.menuManager.hideInGameMenus();
                } else if (Game.menuManager.getVisibleInGame_GoodsMarket()) {
                    if (Game.iActiveProvince == Game.iOldActiveProvinceID) {
                        Game.menuManager.hideCourtCiv();
                        Game.menuManager.rebuildInGame_ProvinceInfo(true);
                        Game.menuManager.setVisibleInGame_Buildings(false, false);
                        if (Game.menuManager.getVisibleInGame_TechnologyChoose()) {
                            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
                        }
                        if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                            Game.menuManager.setVisibleInGame_TechnologyTree(false);
                        }
                        if (Game.menuManager.getVisibleDeclareWar()) {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                        if (Game.menuManager.getVisible_SpecialAlliance()) {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                        if (Game.menuManager.getVisibleFormCiv() || Game.menuManager.getVisibleSellProvince() || Game.menuManager.getVisibleRevolutions()) {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                        if (Game.menuManager.getVisibleInGame_CurrentSituation()) {
                            Game.menuManager.setVisibleInGame_CurrentSituation(false);
                        }
                        if (Game.menuManager.getVisibleInGame_Nukes()) {
                            Game.menuManager.setVisibleInGame_Nukes(false);
                        }
                        if (Game.menuManager.getVisibleInGame_GoodsMarket()) {
                            Game.menuManager.setVisibleInGame_GoodsMarket(false);
                        }
                    } else if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0 && Game.getProvince(Game.iActiveProvince).getCivID() != InGame_GoodsMarket.iActiveCivID) {
                        InGame_GoodsMarket.iActiveCivID = Game.getProvince(Game.iActiveProvince).getCivID();
                        Game.menuManager.rebuildInGame_GoodsMarket();
                        InGame_GoodsMarket.lTime = 0L;
                    }
                } else if (!Game.menuManager.getVisibleInGame_Civ() || InGame_Civ.enabledByScaleOut) {
                    if (Game.menuManager.getVisibleInGame_Court() && InGame_Court.iActiveCivID != Game.player.iCivID && Game.getProvince(Game.iActiveProvince).getCivID() > 0 && InGame_Court.iActiveCivID != Game.getProvince(Game.iActiveProvince).getCivID()) {
                        Game.menuManager.setVisibleInGame_Court(false);
                        Game.menuManager.rebuildInGame_Civ();
                        Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                    } else if (!Game.menuManager.getVisibleInGame_ProvinceInfo()) {
                        Game.menuManager.rebuildInGame_ProvinceInfo(true);
                        Game.menuManager.setVisibleInGame_Buildings(false, false);
                        Game.menuManager.hideCourtCiv();
                        if (Game.menuManager.getVisibleInGame_TechnologyChoose()) {
                            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
                        }
                        if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                            Game.menuManager.setVisibleInGame_TechnologyTree(false);
                        }
                        if (Game.menuManager.getVisibleDeclareWar()) {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                        if (Game.menuManager.getVisible_SpecialAlliance()) {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                        if (Game.menuManager.getVisibleFormCiv() || Game.menuManager.getVisibleSellProvince() || Game.menuManager.getVisibleRevolutions()) {
                            Game.menuManager.setVisibleInGame_PopUp(false);
                        }
                        if (Game.menuManager.getVisibleInGame_CurrentSituation()) {
                            Game.menuManager.setVisibleInGame_CurrentSituation(false);
                        }
                        if (Game.menuManager.getVisibleInGame_Nukes()) {
                            Game.menuManager.setVisibleInGame_Nukes(false);
                        }
                    } else if (InGame_ProvinceInfo.iProvinceID != Game.iActiveProvince) {
                        Game.menuManager.rebuildInGame_ProvinceInfo(true);
                        if (Game.menuManager.getVisibleInGame_ProvinceBonuses()) {
                            InGame_ProvinceBonuses.iProvinceID = InGame_ProvinceInfo.iProvinceID;
                            Game.menuManager.rebuildInGame_ProvinceBonuses();
                            Game.menuManager.setVisibleInGame_ProvinceBonuses(true, true);
                            InGame_ProvinceBonuses.lTime = 0L;
                        }
                        if (Game.menuManager.getVisibleInGame_Buildings()) {
                            if (CFG.isDesktop() && Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                                InGame_BuildingsGroup.iProvinceID = Game.iActiveProvince;
                                Game.menuManager.rebuildInGame_Buildings(true);
                            } else {
                                Game.menuManager.setVisibleInGame_Buildings(false, false);
                            }
                        }
                        Game.menuManager.hideCourtCiv();
                    }
                } else if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY) {
                    if (Game.iActiveProvince == Game.iOldActiveProvinceID) {
                        ProvinceTouchExtraAction.actionSetActiveProvinceID();
                    } else if (Game.getProvince(Game.iActiveProvince).getCivID() > 0 && InGame_Civ.iActiveCivID != Game.getProvince(Game.iActiveProvince).getCivID()) {
                        Game.menuManager.rebuildInGame_Civ();
                        InGame_Civ.lTime = 0L;
                        Game.soundsManager.playSound(Game.soundsManager.getDiplomacy());
                    }
                } else if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_IMPROVE_RELATIONS) {
                    if (Game.getProvince(Game.iActiveProvince).getCivID() != Game.player.iCivID) {
                        int civID = Game.getProvince(Game.iActiveProvince).getCivID();
                        if (DiplomacyManager.isAtWar(Game.player.iCivID, civID)) {
                            Game.menuManager.addToastNegative("", Game.lang.get("WeAreAtWar"), Images.war);
                        } else if (Game.getCiv(Game.player.iCivID).diplomacy.isRival(civID) || Game.getCiv(civID).diplomacy.isRival(Game.player.iCivID)) {
                            Game.menuManager.addToastNegative("", Game.lang.get("WeAreRivals"), Images.rivals);
                        } else if (Game.getCiv(Game.player.iCivID).diplomacy.isImprovingRelations(civID)) {
                            Game.getCiv(Game.player.iCivID).diplomacy.removeImproveRelations(civID);
                            Game.menuManager.addToastNegative(Game.lang.get("Removed") + ": ", "" + Game.getCiv(civID).getCivName(), Images.relationsDown);
                            ProvinceDraw.addDiplomacyLines(Game.getCiv(civID).getCapitalProvinceID(), Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Colors.HOVER_POSITIVE);
                        } else if (Game.getCiv(civID).diplomacy.getRelation(Game.player.iCivID) >= GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_MAX) {
                            Game.menuManager.addToastNegative(Game.lang.get("MaximumOpinion") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_IMPROVE_RELATIONS_MAX, 1), Images.relations);
                        } else {
                            Game.getCiv(Game.player.iCivID).diplomacy.addImproveRelations(Game.player.iCivID, civID);
                            Game.menuManager.addToastPositive(Game.lang.get("ImprovingRelations") + ": ", "" + Game.getCiv(civID).getCivName(), Images.relationsDown);
                            ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(civID).getCapitalProvinceID(), Colors.HOVER_POSITIVE);
                        }
                        Game.menuManager.rebuildInGame_Right();
                        Game.soundsManager.playSound(SoundsManager.DIPLOMACY_CLICK);
                    } else {
                        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
                        InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
                        Game.menuManager.rebuildInGame_Civ(true);
                        InGame_Civ.lTime = 0L;
                    }
                } else if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DIPLOMACY_DAMAGE_RELATIONS) {
                    if (Game.getProvince(Game.iActiveProvince).getCivID() != Game.player.iCivID) {
                        int civID2 = Game.getProvince(Game.iActiveProvince).getCivID();
                        if (DiplomacyManager.isAtWar(Game.player.iCivID, civID2)) {
                            Game.menuManager.addToastNegative("", Game.lang.get("WeAreAtWar"), Images.war);
                        } else if (Game.getCiv(Game.player.iCivID).diplomacy.isDamagingRelations(civID2)) {
                            Game.getCiv(Game.player.iCivID).diplomacy.removeDamageRelations(civID2);
                            Game.menuManager.addToastNegative(Game.lang.get("Removed") + ": ", "" + Game.getCiv(civID2).getCivName(), Images.relationsDown);
                            ProvinceDraw.addDiplomacyLines(Game.getCiv(civID2).getCapitalProvinceID(), Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Colors.HOVER_POSITIVE);
                        } else if (Game.getCiv(civID2).diplomacy.getRelation(Game.player.iCivID) <= GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_MAX) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("MaximumOpinion") + ": ", "" + CFG.getPrecision2(GameValues.diplomacy.DIPLOMACY_DAMAGE_RELATIONS_MAX, 1), Images.relations);
                        } else {
                            Game.getCiv(Game.player.iCivID).diplomacy.addDamageRelations(Game.player.iCivID, civID2);
                            ProvinceDraw.addDiplomacyLines(Game.getCiv(Game.player.iCivID).getCapitalProvinceID(), Game.getCiv(civID2).getCapitalProvinceID(), Colors.HOVER_NEGATIVE);
                            Game.menuManager.addToastNegative(Game.lang.get("DamagingRelations") + ": ", "" + Game.getCiv(civID2).getCivName(), Images.relationsDown);
                        }
                        Game.menuManager.rebuildInGame_Right();
                        Game.soundsManager.playSound(SoundsManager.DIPLOMACY_CLICK);
                    } else {
                        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DIPLOMACY);
                        InGame_Civ.iRebuildToCivID = InGame_Civ.iActiveCivID;
                        Game.menuManager.rebuildInGame_Civ(true);
                        InGame_Civ.lTime = 0L;
                    }
                }
                if (Game.menuManager.getVisibleInGame_Generals()) {
                    Game.menuManager.setVisibleInGame_Generals(false);
                }
                if (Game.menuManager.getVisibleInGame_GeneralRecruit()) {
                    Game.menuManager.setVisibleInGame_GeneralRecruit(false);
                }
                if (Game.menuManager.getVisibleInGame_CivBonuses() && Game.getProvince(Game.iActiveProvince).getCivID() != 0 && InGame_CivBonuses.iCivID != Game.getProvince(Game.iActiveProvince).getCivID()) {
                    InGame_CivBonuses.iCivID = Game.getProvince(Game.iActiveProvince).getCivID();
                    Game.menuManager.rebuildInGame_CivBonuses();
                    Game.menuManager.setVisibleInGame_CivBonuses(true);
                    InGame_CivBonuses.lTime = 0L;
                }
                if (Game.menuManager.getVisibleInGame_Wonder() && Game.iActiveProvince != InGame_Wonder.iProvinceID) {
                    if (Game.getProvince(Game.iActiveProvince).wonderID >= 0) {
                        InGame_Wonder.iProvinceID = Game.iActiveProvince;
                        Game.menuManager.rebuildInGame_Wonder();
                        InGame_Wonder.lTime = 0L;
                    } else {
                        Game.menuManager.setVisibleInGame_Wonder(false);
                    }
                }
                if (Game.menuManager.getVisibleInGame_ProvinceArmy()) {
                    Game.menuManager.setVisibleInGame_ProvinceArmy(false);
                }
                if (Game.menuManager.getVisibleInGame_ReorganizeUnits()) {
                    Game.menuManager.setVisibleInGame_ReorganizeUnits(false);
                }
                if (Game.menuManager.getVisibleInGame_DisbandArmy()) {
                    Game.menuManager.setVisibleInGame_DisbandUnits(false);
                }
                if (Game.menuManager.getVisibleInGame_Battle()) {
                    Game.menuManager.setVisibleInGame_Battle(false);
                }
                if (Game.menuManager.getVisibleInGame_Siege()) {
                    Game.menuManager.setVisibleInGame_Siege(false);
                }
                if (Game.menuManager.getVisibleInGame_War()) {
                    Game.menuManager.setVisibleInGame_War(false);
                }
                if (Game.menuManager.getVisibleInGame_RecruitArmy()) {
                    Game.menuManager.setVisibleInGame_RecruitArmy(false);
                }
                if (Game.menuManager.getVisibleInGame_Armies()) {
                    Game.menuManager.setVisibleInGame_Armies(false);
                }
                if (Game.menuManager.getVisibleInGame_TechnologyChoose()) {
                    Game.menuManager.setVisibleInGame_TechnologyChoose(false);
                }
                if (Game.menuManager.getVisibleDeclareWar()) {
                    Game.menuManager.setVisibleInGame_PopUp(false);
                }
                if (Game.menuManager.getVisible_SpecialAlliance()) {
                    Game.menuManager.setVisibleInGame_PopUp(false);
                }
                if (Game.menuManager.getVisibleFormCiv() || Game.menuManager.getVisibleSellProvince() || Game.menuManager.getVisibleRevolutions()) {
                    Game.menuManager.setVisibleInGame_PopUp(false);
                }
                if (Game.menuManager.getVisibleInGame_Nukes()) {
                    Game.menuManager.setVisibleInGame_Nukes(false);
                }
                if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
                    Game.menuManager.setVisibleInGame_TechnologyTree(false);
                }
                if (Game.menuManager.getVisibleInGame_CurrentSituation()) {
                    Game.menuManager.setVisibleInGame_CurrentSituation(false);
                }
                Game.clearActiveArmy();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$23, reason: invalid class name */
    class AnonymousClass23 implements ExtraAction {
        AnonymousClass23() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0 || Game.player.iCivID == Game.getProvince(Game.iActiveProvince).getCivID()) {
                return;
            }
            Game.player.iCivID = Game.getProvince(Game.iActiveProvince).getCivID();
            Game.menuManager.rebuildNewGameCiv();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$24, reason: invalid class name */
    class AnonymousClass24 implements ExtraAction {
        AnonymousClass24() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                return;
            }
            EditorMapGrowthRate.actionUpdateData(true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$25, reason: invalid class name */
    class AnonymousClass25 implements ExtraAction {
        AnonymousClass25() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                return;
            }
            EditorMapEconomy.actionUpdateData(true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$26, reason: invalid class name */
    class AnonymousClass26 implements ExtraAction {
        AnonymousClass26() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                return;
            }
            EditorMapTerrainType.actionUpdateData(true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$27, reason: invalid class name */
    class AnonymousClass27 implements ExtraAction {
        AnonymousClass27() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince() || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).scenarioEditorData.TechnologyID = ScenarioTechnologyCivs.iActiveTechnology;
            ProvinceDrawDetails.updateDrawProvinceDetails_Technology();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$28, reason: invalid class name */
    class AnonymousClass28 implements ExtraAction {
        AnonymousClass28() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince() || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            Game.menuManager.rebuildInGame_ScenarioEditorArmies();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$29, reason: invalid class name */
    class AnonymousClass29 implements ExtraAction {
        AnonymousClass29() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince() || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            Game.menuManager.rebuildInGame_ScenarioEditorGovernment();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$3, reason: invalid class name */
    class AnonymousClass3 implements ExtraAction {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$30, reason: invalid class name */
    class AnonymousClass30 implements ExtraAction {
        AnonymousClass30() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince() || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            ScenarioRelationsList.activeCivID2 = Game.getProvince(Game.iActiveProvince).getCivID();
            Game.menuManager.rebuildInGame_ScenarioEditorRelations();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$31, reason: invalid class name */
    class AnonymousClass31 implements ExtraAction {
        AnonymousClass31() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                return;
            }
            EditorMapResources.actionUpdateData(true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$32, reason: invalid class name */
    class AnonymousClass32 implements ExtraAction {
        AnonymousClass32() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                return;
            }
            EditorMapContinents.actionUpdateData(true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$33, reason: invalid class name */
    class AnonymousClass33 implements ExtraAction {
        AnonymousClass33() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                return;
            }
            if (CFG.selectMode) {
                EditorSelectProvinces.addSelectedProvince(Game.iActiveProvince);
            } else {
                EditorSelectProvinces.removeSelectedProvince(Game.iActiveProvince);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$34, reason: invalid class name */
    class AnonymousClass34 implements ExtraAction {
        AnonymousClass34() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (!Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                    if (!CFG.brushTool) {
                        EditorSelectProvinces.selectedProvinces.clear();
                        EditorSelectProvinces.addSelectedProvince(Game.iActiveProvince);
                    } else if (CFG.selectMode) {
                        EditorSelectProvinces.addSelectedProvince(Game.iActiveProvince);
                    } else {
                        EditorSelectProvinces.removeSelectedProvince(Game.iActiveProvince);
                    }
                }
                Game.menuManager.rebuildScenarioCoresList_InProvince();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$35, reason: invalid class name */
    class AnonymousClass35 implements ExtraAction {
        AnonymousClass35() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                return;
            }
            if (!CFG.brushTool) {
                EditorSelectProvinces.selectedProvinces.clear();
                EditorSelectProvinces.addSelectedProvince(Game.iActiveProvince);
            } else if (CFG.selectMode) {
                EditorSelectProvinces.addSelectedProvince(Game.iActiveProvince);
            } else {
                EditorSelectProvinces.removeSelectedProvince(Game.iActiveProvince);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$36, reason: invalid class name */
    class AnonymousClass36 implements ExtraAction {
        AnonymousClass36() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (!Game.getProvince(Game.iActiveProvince).getSeaProvince() && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
                    Game.menuManager.rebuildInGame_ScenarioEditorBuildings();
                }
                if (Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                    return;
                }
                if (!CFG.brushTool) {
                    EditorSelectProvinces.selectedProvinces.clear();
                    EditorSelectProvinces.addSelectedProvince(Game.iActiveProvince);
                } else if (CFG.selectMode) {
                    EditorSelectProvinces.addSelectedProvince(Game.iActiveProvince);
                } else {
                    EditorSelectProvinces.removeSelectedProvince(Game.iActiveProvince);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$37, reason: invalid class name */
    class AnonymousClass37 implements ExtraAction {
        AnonymousClass37() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                return;
            }
            if (CFG.selectMode) {
                FormableCivManager.activeFormableCiv.addProvince(Game.iActiveProvince);
            } else {
                FormableCivManager.activeFormableCiv.removeProvince(Game.iActiveProvince);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$38, reason: invalid class name */
    class AnonymousClass38 implements ExtraAction {
        AnonymousClass38() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
                return;
            }
            EditorMapGeoRegions.actionUpdateData(true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$39, reason: invalid class name */
    class AnonymousClass39 implements ExtraAction {
        AnonymousClass39() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                EditorMapOptimizationRegions.actionUpdateData(true);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$4, reason: invalid class name */
    class AnonymousClass4 implements ExtraAction {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getPuppetOfCivID() == Game.player.iCivID) {
                    int i5 = 0;
                    int i6 = 1;
                    if (i4 == 0) {
                        boolean z = AA_KeyManager.CTRL_HOLD;
                        String str = CaiJWNfqszJNZ.UtwITPjXvySycw;
                        if (z) {
                            if (Game.getCiv(Game.player.iCivID).fGold < ArmyManager.getRecruitmentCost(Game.player.iCivID, Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID)) {
                                Game.menuManager.addToastInsufficient(Game.lang.get(str) + ": ", "" + CFG.getPrecision2(ArmyManager.getRecruitmentCost(Game.player.iCivID, Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID), 10), Images.gold);
                                Game.soundsManager.playSound(SoundsManager.SOUND_PROVINCE, SoundsManager.PERC_VOLUME_SELECT_PROVINCE);
                            } else if (Game.getCiv(Game.player.iCivID).fManpower < Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("Manpower") + ": ", CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fManpower, 1) + " / " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, Game_Calendar.IMG_MANPOWER);
                                Game.soundsManager.playSound(SoundsManager.SOUND_PROVINCE, SoundsManager.PERC_VOLUME_SELECT_PROVINCE);
                            } else {
                                while (i5 < 5) {
                                    Game.getCiv(Game.player.iCivID).recruitArmy(new ArmyRecruit(Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID, Game.armyRecruit.toArmyKey));
                                    i5++;
                                }
                                Game.soundsManager.playRecruitArmy();
                            }
                        } else if (AA_KeyManager.SHIFT_HOLD) {
                            if (Game.getCiv(Game.player.iCivID).fGold < ArmyManager.getRecruitmentCost(Game.player.iCivID, Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID)) {
                                Game.menuManager.addToastInsufficient(Game.lang.get(str) + ": ", "" + CFG.getPrecision2(ArmyManager.getRecruitmentCost(Game.player.iCivID, Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID), 10), Images.gold);
                                Game.soundsManager.playSound(SoundsManager.SOUND_PROVINCE, SoundsManager.PERC_VOLUME_SELECT_PROVINCE);
                            } else if (Game.getCiv(Game.player.iCivID).fManpower < Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) {
                                Game.menuManager.addToastInsufficient(Game.lang.get("Manpower") + ": ", CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fManpower, 1) + " / " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, Game_Calendar.IMG_MANPOWER);
                                Game.soundsManager.playSound(SoundsManager.SOUND_PROVINCE, SoundsManager.PERC_VOLUME_SELECT_PROVINCE);
                            } else {
                                Game.getCiv(Game.player.iCivID).recruitArmy(new ArmyRecruit(Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID, Game.armyRecruit.toArmyKey));
                                while (i5 < Game.getProvince(Game.iActiveProvince).getNeighboringProvincesSize() && i6 < 5) {
                                    if (Game.getProvince(Game.getProvince(Game.iActiveProvince).getNeighboringProvinces(i5)).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(Game.getProvince(Game.iActiveProvince).getNeighboringProvinces(i5)).getCivID()).getPuppetOfCivID() == Game.player.iCivID) {
                                        Game.getCiv(Game.player.iCivID).recruitArmy(new ArmyRecruit(Game.getProvince(Game.iActiveProvince).getNeighboringProvinces(i5), Game.armyRecruit.unitID, Game.armyRecruit.armyID, Game.armyRecruit.toArmyKey));
                                        i6++;
                                    }
                                    i5++;
                                }
                                while (i6 < 5) {
                                    Game.getCiv(Game.player.iCivID).recruitArmy(new ArmyRecruit(Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID, Game.armyRecruit.toArmyKey));
                                    i6++;
                                }
                                Game.soundsManager.playRecruitArmy();
                            }
                        } else if (Game.getCiv(Game.player.iCivID).fGold < ArmyManager.getRecruitmentCost(Game.player.iCivID, Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID)) {
                            Game.menuManager.addToastInsufficient(Game.lang.get(str) + ": ", "" + CFG.getPrecision2(ArmyManager.getRecruitmentCost(Game.player.iCivID, Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID), 10), Images.gold);
                            Game.soundsManager.playSound(SoundsManager.SOUND_PROVINCE, SoundsManager.PERC_VOLUME_SELECT_PROVINCE);
                        } else if (Game.getCiv(Game.player.iCivID).fManpower < Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE) {
                            Game.menuManager.addToastInsufficient(Game.lang.get("Manpower") + ": ", CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fManpower, 1) + " / " + Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE, Game_Calendar.IMG_MANPOWER);
                            Game.soundsManager.playSound(SoundsManager.SOUND_PROVINCE, SoundsManager.PERC_VOLUME_SELECT_PROVINCE);
                        } else if (Game.getCiv(Game.player.iCivID).recruitArmy(new ArmyRecruit(Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID, Game.armyRecruit.toArmyKey))) {
                            Game.soundsManager.playRecruitArmy();
                        }
                    } else if (i4 == 1) {
                        Game.soundsManager.playRecruitArmyCancel();
                        if (!Game.getCiv(Game.player.iCivID).cancelRecruitArmy(new ArmyRecruit(Game.iActiveProvince, Game.armyRecruit.unitID, Game.armyRecruit.armyID, Game.armyRecruit.toArmyKey))) {
                            Game.menuManager.setVisibleInGame_RecruitArmy(false);
                            if (Game.menuManager.getVisibleInGame_Armies()) {
                                Game.menuManager.setVisibleInGame_Armies(false);
                            }
                            Game.menuManager.rebuildInGame_ProvinceInfo(true);
                        }
                    }
                    ProvinceHover.provinceHoverBuild.build();
                    Game.menuManager.getInGame_RecruitSameType_UpdateLanguage();
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$40, reason: invalid class name */
    class AnonymousClass40 implements ExtraAction {
        AnonymousClass40() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                ScenarioWasteland.actionUpdateData(true);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$41, reason: invalid class name */
    class AnonymousClass41 implements ExtraAction {
        AnonymousClass41() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (AA_KeyManager.CTRL_HOLD) {
                    CFG.iCreateScenario_AssignProvinces_Civ = Game.getProvince(Game.iActiveProvince).getCivID();
                } else {
                    ScenarioAssign.actionUpdateData(true);
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$42, reason: invalid class name */
    class AnonymousClass42 implements ExtraAction {
        AnonymousClass42() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (AA_KeyManager.CTRL_HOLD) {
                    CFG.iCreateScenario_AssignProvinces_Civ = Game.getProvince(Game.iActiveProvince).getCivID();
                } else {
                    ScenarioAssign_InGame.actionUpdateData();
                }
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$43, reason: invalid class name */
    class AnonymousClass43 implements ExtraAction {
        AnonymousClass43() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            ScenarioCivilizations.actionUpdateData();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$44, reason: invalid class name */
    class AnonymousClass44 implements ExtraAction {
        AnonymousClass44() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$5, reason: invalid class name */
    class AnonymousClass5 implements ExtraAction {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0) {
                    if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getPuppetOfCivID() == Game.player.iCivID) {
                        InGame_RecruitArmy_NewArmy.iProvinceID = Game.iActiveProvince;
                        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                    }
                } else if (i4 == 1) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$6, reason: invalid class name */
    class AnonymousClass6 implements ExtraAction {
        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0) {
                    if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                        Game.menuManager.addToastInsufficient(Game.getProvince(Game.iActiveProvince).getProvinceName() + ": ", Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName(), Images.nuke);
                    } else if (DiplomacyManager.isAtWar(Game.player.iCivID, Game.getProvince(Game.iActiveProvince).getCivID())) {
                        Game.dropAtomicBomb(Game.player.iCivID, Game.iActiveProvince);
                        if (Game.getCiv(Game.player.iCivID).getNukes() <= 0) {
                            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                        }
                    } else {
                        Game.menuManager.addToast_Error(Game.lang.get("AtPeace"), Images.peace);
                    }
                } else if (i4 == 1) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$7, reason: invalid class name */
    class AnonymousClass7 implements ExtraAction {
        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0) {
                    if (Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
                        Game.menuManager.addToast_Error(Game.lang.get("ThisProvinceCanNotBeColonized"), Images.populationGrowth);
                    } else if (Game.getCiv(Game.player.iCivID).fGold < GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST) {
                        Game.menuManager.addToast_Error(Game.lang.get("InsufficientGold") + ": " + CFG.getPrecision2(GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST, 1), Images.gold);
                    } else {
                        ColonizationManager.establishSettlement_Gold(Game.player.iCivID, Game.iActiveProvince);
                        Game.menuManager.addToastGold(Game.lang.get("SettlementEstablished"), Images.populationGrowth);
                        if (Game.getCiv(Game.player.iCivID).fGold < GameValues.colonization.ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST) {
                            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                        }
                    }
                } else if (i4 == 1) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$8, reason: invalid class name */
    class AnonymousClass8 implements ExtraAction {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0) {
                    if (Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
                        if (Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).diplomacy.isAtWar()) {
                            Game.menuManager.addToastBonus(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName() + ": ", "" + CFG.getNumberWithSpaces("" + Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).diplomacy.iWarsSize), Images.war, Game.getProvince(Game.iActiveProvince).getCivID());
                            Game.clearActiveArmy();
                            Game.menuManager.showInGame_Battle_HideMenus();
                            String str = Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).diplomacy.lWars.get(Game.oR.nextInt(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).diplomacy.lWars.size()));
                            if (Game.menuManager.getVisibleInGame_War() && InGame_War.key == str) {
                                Game.menuManager.setVisibleInGame_War(false);
                            } else {
                                InGame_War.key = str;
                                Game.menuManager.rebuildInGame_War();
                            }
                        } else {
                            Game.menuManager.addToastBonus(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName() + ": ", Game.lang.get(HTGgowNjn.FDaCL), Images.peace, Game.getProvince(Game.iActiveProvince).getCivID());
                        }
                    }
                } else if (i4 == 1) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction$9, reason: invalid class name */
    class AnonymousClass9 implements ExtraAction {
        AnonymousClass9() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction.ExtraAction
        public void extraAction(int i, int i2, int i3, int i4) {
            if (Game.iActiveProvince >= 0) {
                if (i4 == 0) {
                    if (Game.getProvince(Game.iActiveProvince).getCivID() == Game.player.iCivID) {
                        InGame_RecruitMercenaries.confirm(Game.iActiveProvince);
                        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                    }
                } else if (i4 == 1) {
                    Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
                }
                ProvinceHover.provinceHoverBuild.build();
            }
        }
    }

    public interface ExtraAction {
        void extraAction(int i, int i2, int i3, int i4);
    }

    public static final void actionBuilding(int i) {
        try {
            if (Game.getProvince(i).getCivID() == Game.player.iCivID || Game.getCiv(Game.getProvince(i).getCivID()).getPuppetOfCivID() == Game.player.iCivID) {
                if (Game.getProvince(i).getUsedBuildingsSlots() >= Game.getProvince(i).iBuildingsLimit) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingSlots") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(i).getUsedBuildingsSlots() + " / " + Game.getProvince(i).iBuildingsLimit, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseEconomyInAProvinceToUnlockMoreBuildingSlots"), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.menuManager.addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_VERY_LONG));
                } else if (Game.getProvince(i).isOccupied()) {
                    Game.menuManager.addToast_Error(Game.lang.get("OccupiedProvince"), Images.war);
                } else if (Game.getProvince(i).buildingBuilt(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                    Game.menuManager.addToastGold(Game.lang.get("BuildingConstructed"), Images.build);
                } else if (Game.getProvince(i).isUnderConstruction(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                    Game.menuManager.addToastGold(Game.lang.get("UnderConstruction"), Images.build);
                } else if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).SeaAccessRequired && Game.getProvince(i).getLevelOfPort() < 0) {
                    Game.menuManager.addToastGold(Game.lang.get("NoAccessToTheSea"), Images.ship);
                } else if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredGovernmentID >= 0 && BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredGovernmentID != Game.getCiv(Game.getProvince(i).getCivID()).getIdeologyID()) {
                    Game.menuManager.addToastGold(Game.lang.get("Government") + ": " + Game.ideologiesManager.getIdeology(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredGovernmentID).Name, Images.government);
                } else if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredReligionID >= 0 && BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredReligionID != Game.getCiv(Game.getProvince(i).getCivID()).getReligionID()) {
                    Game.menuManager.addToastGold(Game.lang.get("Religion") + ": " + Game.religionManager.getReligion(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredReligionID).Name, Images.religion);
                } else if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource >= 0 && BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource != Game.getProvince(i).getResourceID()) {
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    arrayList4.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RequiredResource") + ": "));
                    arrayList4.add(new MenuElement_HoverElement_Type_Text(ResourcesManager.getResourceName(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource), Colors.HOVER_GOLD));
                    arrayList4.add(new MenuElement_HoverElement_Type_Image(Images.goods, CFG.PADDING, 0));
                    arrayList3.add(new MenuElement_HoverElement(arrayList4));
                    arrayList4.clear();
                    Game.menuManager.addToast(new Toast(arrayList3, 0, Toast.TIME_INVIEW_VERY_LONG));
                } else if (!Game.getProvince(i).addBuildingConstruction(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getBuildingConstructionCost(Game.player.iCivID, i, InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY()), 100), Images.gold);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public static void actionPeaceView(int i, boolean z) {
        if (Game.getProvince(i).peaceTreatyIsToTake) {
            if (z) {
                if (Game.player.peaceTreaty.isProvinceTaken(i)) {
                    return;
                }
                Game.player.peaceTreaty.takeProvince(i);
            } else {
                if (!CFG.brushTool) {
                    Game.player.peaceTreaty.takeProvince(i);
                    return;
                }
                if (InGame_Peace.brushModeDemand) {
                    if (Game.player.peaceTreaty.isProvinceTaken(i)) {
                        return;
                    }
                    Game.player.peaceTreaty.takeProvince(i);
                } else if (Game.player.peaceTreaty.isProvinceTaken(i)) {
                    Game.player.peaceTreaty.takeProvince(i);
                }
            }
        }
    }

    public static void actionReleaseVassal(int i, boolean z) {
        if (Game.getProvince(i).getCivID() == Game.player.iCivID) {
            if (z || !InGame_ReleaseAVassal.releaseVassalData.lProvinces.contains(Integer.valueOf(i))) {
                InGame_ReleaseAVassal.addProvince(i);
                Game.getProvince(i).peaceTreatyIsTaken = true;
            } else {
                InGame_ReleaseAVassal.removeProvince(i);
                Game.getProvince(i).peaceTreatyIsTaken = false;
            }
        }
    }

    public static void actionSetActiveProvinceID() {
        int i = Game.iActiveProvince;
        Game.menuManager.hideCourtCiv();
        Game.menuManager.setVisibleInGame_Buildings(false, false);
        if (Game.menuManager.getVisibleInGame_TechnologyChoose()) {
            Game.menuManager.setVisibleInGame_TechnologyChoose(false);
        }
        if (Game.menuManager.getVisibleInGame_TechnologyTree()) {
            Game.menuManager.setVisibleInGame_TechnologyTree(false);
        }
        if (Game.menuManager.getVisibleDeclareWar()) {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
        if (Game.menuManager.getVisible_SpecialAlliance()) {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
        if (Game.menuManager.getVisibleFormCiv() || Game.menuManager.getVisibleSellProvince() || Game.menuManager.getVisibleRevolutions()) {
            Game.menuManager.setVisibleInGame_PopUp(false);
        }
        if (Game.menuManager.getVisibleInGame_CurrentSituation()) {
            Game.menuManager.setVisibleInGame_CurrentSituation(false);
        }
        if (Game.menuManager.getVisibleInGame_Nukes()) {
            Game.menuManager.setVisibleInGame_Nukes(false);
        }
        if (Game.menuManager.getVisibleInGame_GoodsMarket()) {
            Game.menuManager.setVisibleInGame_GoodsMarket(false);
        }
        Game.setActiveProvinceID(i);
        ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
        Game.menuManager.rebuildInGame_ProvinceInfo(true);
    }

    public static final void actionUp_SetActiveArmy() {
        InGame_ProvinceArmy.iActiveID = 0;
        InGame_ProvinceArmy.iCivFlagID = 0;
        InGame_ProvinceArmy.iProvinceID = 0;
        if (Game.menuManager.getInGame()) {
            if (Game.activeArmySize <= 0) {
                Game.menuManager.setVisibleInGame_ProvinceArmy(false);
                return;
            }
            InGame_ProvinceArmy.sActiveKEY = Game.activeArmy.get(0).key;
            Game.menuManager.rebuildInGame_ProvinceArmy();
            Game.soundsManager.playSelectedArmy();
            Game.menuManager.rebuildInGame_ProvinceArmy_HideMenus();
        }
    }

    private static final void updateActionDown_ExtraAction() {
        actionDown_ExtraAction = new AnonymousClass1();
    }

    private static final void updateActionMove_ExtraAction() {
        actionMove_ExtraAction = new AnonymousClass2();
    }

    private static final void updateActionUp_ExtraAction() {
        actionUp_ExtraAction = new AnonymousClass3();
    }

    private static final void updateActionUp_SetActiveProvinceID_ExtraAction() {
        if (Game.menuManager.getInGame()) {
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RECRUIT_ARMY) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass4();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NEW_ARMY_CHOOSE_PROVINCE) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass5();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NUKE_CHOOSE_PROVINCE) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass6();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_COLONIZE_CHOOSE_PROVINCE) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass7();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_WARS) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass8();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MERCENARIES_CHOOSE_PROVINCE) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass9();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PEACE_VIEW) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass10();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RELEASE_VASSAL) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass11();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_BUILDING) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass12();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CONVERT_RELIGION) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass13();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_CORE) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass14();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INVEST_IN_ECONOMY) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass15();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEVELOP_INFRASTRUCTURE) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass16();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_TAX_EFFICIENCY) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass17();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_MOVE_CAPITAL) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass18();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_MANPOWER) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass19();
                return;
            }
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INCREASE_GROWTH_RATE) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass20();
                return;
            } else if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_WONDERS) {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass21();
                return;
            } else {
                actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass22();
                return;
            }
        }
        if (Game.menuManager.getInNewGame()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass23();
            return;
        }
        if (Game.menuManager.getInMapEditorGrowthRate()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass24();
            return;
        }
        if (Game.menuManager.getInMapEditorEconomy()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass25();
            return;
        }
        if (Game.menuManager.getInMapEditorTerrain()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass26();
            return;
        }
        if (Game.menuManager.getInScenarioEditorTechnologiesCivs()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass27();
            return;
        }
        if (Game.menuManager.getInScenarioEditorArmies()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass28();
            return;
        }
        if (Game.menuManager.getInScenarioEditorGovernment()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass29();
            return;
        }
        if (Game.menuManager.getInScenarioEditorRelations()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass30();
            return;
        }
        if (Game.menuManager.getInMapEditorResource()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass31();
            return;
        }
        if (Game.menuManager.getInMapEditorContinents()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass32();
            return;
        }
        if (Game.menuManager.getInEditorSelectProvinces()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass33();
            return;
        }
        if (Game.menuManager.getInScenarioCores()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass34();
            return;
        }
        if (Game.menuManager.getInScenarioReligion()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass35();
            return;
        }
        if (Game.menuManager.getInScenarioEditorBuildings()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass36();
            return;
        }
        if (Game.menuManager.getInEditorFormableCiv()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass37();
            return;
        }
        if (Game.menuManager.getInMapEditorGeoRegions()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass38();
            return;
        }
        if (Game.menuManager.getInMapEditorOptimizationRegions()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass39();
            return;
        }
        if (Game.menuManager.getInScenarioWasteland()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass40();
            return;
        }
        if (Game.menuManager.getInScenarioAssign()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass41();
            return;
        }
        if (Game.menuManager.getInScenarioAssignInGame()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass42();
        } else if (Game.menuManager.getInScenarioCivilizations()) {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass43();
        } else {
            actionUp_SetActiveProvinceID_ExtraAction = new AnonymousClass44();
        }
    }

    public static final void updateExtraAction() {
        updateActionDown_ExtraAction();
        updateActionMove_ExtraAction();
        updateActionUp_ExtraAction();
        updateActionUp_SetActiveProvinceID_ExtraAction();
    }
}
