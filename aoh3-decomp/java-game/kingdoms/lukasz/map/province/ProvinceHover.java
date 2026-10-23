package aoc.kingdoms.lukasz.map.province;

import androidx.arch.core.ht.qIuEvFbUtcea;
import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.army.ArmyManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRanking;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.map.map.Ship.ShipManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_BattleArmyPerc;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagCiv_Title;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Religion;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Terrain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ProvinceHover {
    public static ProvinceHoverBuild provinceHoverBuild = new AnonymousClass1();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceHover$1, reason: invalid class name */
    class AnonymousClass1 implements ProvinceHoverBuild {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceHover$2, reason: invalid class name */
    class AnonymousClass2 implements ProvinceHoverBuild {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = null;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceHover$3, reason: invalid class name */
    class AnonymousClass3 implements ProvinceHoverBuild {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            if (Game.iHoveredProvinceID >= 0) {
                if (Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Terrain") + ": ", CFG.FONT_BOLD_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.terrainManager.terrains.get(Game.getProvince(Game.iHoveredProvinceID).getTerrainID()).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Terrain(Game.getProvince(Game.iHoveredProvinceID).getTerrainID(), Game.iHoveredProvinceID, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
                    return;
                }
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList3);
                if (Game.getProvince(Game.iHoveredProvinceID).getProvinceName().length() > 0) {
                    arrayList4.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                    arrayList4.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), CFG.FONT_BOLD_SMALL));
                    arrayList3.add(new MenuElement_HoverElement(arrayList4));
                    arrayList4.clear();
                    arrayList4.add(new MenuElement_HoverElement_Type_Line());
                    arrayList3.add(new MenuElement_HoverElement(arrayList4));
                    arrayList4.clear();
                }
                arrayList4.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Terrain") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList4.add(new MenuElement_HoverElement_Type_Text(Game.terrainManager.terrains.get(Game.getProvince(Game.iHoveredProvinceID).getTerrainID()).Name, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                arrayList4.add(new MenuElement_HoverElement_Type_Terrain(Game.getProvince(Game.iHoveredProvinceID).getTerrainID(), Game.iHoveredProvinceID, CFG.PADDING, 0));
                arrayList3.add(new MenuElement_HoverElement(arrayList4));
                arrayList4.clear();
                arrayList4.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("GrowthRate") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList4.add(new MenuElement_HoverElement_Type_Text("" + ((int) Game.getProvince(Game.iHoveredProvinceID).getGrowthRate()) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                arrayList3.add(new MenuElement_HoverElement(arrayList4));
                arrayList4.clear();
                Game.provinceHover_Informations = new MenuElement_Hover(arrayList3);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceHover$4, reason: invalid class name */
    class AnonymousClass4 implements ProvinceHoverBuild {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            if (Game.iHoveredProvinceID < 0 || Game.getProvince(Game.iHoveredProvinceID).getSeaProvince()) {
                Game.provinceHover_Informations = null;
                return;
            }
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Continent") + qIuEvFbUtcea.cBeECtLBbjnBtaq, CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.continents.lContinents.get(Game.getProvince(Game.iHoveredProvinceID).getContinent()).sName, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.getProvince(Game.iHoveredProvinceID).getProvinceName().length() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iHoveredProvinceID).getCivID()));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(Game.iHoveredProvinceID).getProvinceName(), CFG.FONT_REGULAR_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
            }
            Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.map.province.ProvinceHover$5, reason: invalid class name */
    class AnonymousClass5 implements ProvinceHoverBuild {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.map.province.ProvinceHover.ProvinceHoverBuild
        public void build() {
            Game.provinceHover_Informations = null;
        }
    }

    public interface ProvinceHoverBuild {
        void build();
    }

    public static final void updateProvinceHoverArmy() {
        float f;
        String str;
        float f2;
        String str2;
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int i = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).civID;
            arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).civID, Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).armyGeneral == null ? Game.lang.get("NoGeneral") : Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).armyGeneral.n));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            int i2 = 0;
            while (i2 < Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).iArmyRegimentSize) {
                try {
                    if (ArmyManager.lUnitsTypes.get(Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i2).uID).Line < 2) {
                        int i3 = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i2).num;
                        int i4 = 1;
                        for (int i5 = i2 + 1; i5 < Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).iArmyRegimentSize && Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i2).uID == Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i5).uID && Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i2).aID == Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i5).aID; i5++) {
                            i2++;
                            i4++;
                            i3 += Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i2).num;
                        }
                        int i6 = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).civID;
                        if (!Game.FOG_OF_WAR || !GameValues.fog.HIDE_MANPOWER || i6 == Game.player.iCivID || DiplomacyManager.isAlly(i6, Game.player.iCivID)) {
                            f2 = i3 / (i4 * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE);
                            str2 = "" + i3;
                        } else {
                            str2 = GameValues.fog.TEXT_UNKNOWN_MANPOWER;
                            f2 = -1.0f;
                        }
                        arrayList2.add(new MenuElement_HoverElement_Type_BattleArmyPerc(str2, Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i2).uID, Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i2).aID, i2 > 0 ? CFG.PADDING : 0, f2));
                    }
                    i2++;
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
            int i7 = 0;
            while (i7 < Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).iArmyRegimentSize) {
                if (ArmyManager.lUnitsTypes.get(Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i7).uID).Line >= 2) {
                    int i8 = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i7).num;
                    int i9 = 1;
                    for (int i10 = i7 + 1; i10 < Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).iArmyRegimentSize && Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i7).uID == Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i10).uID && Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i7).aID == Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i10).aID; i10++) {
                        i7++;
                        i9++;
                        i8 += Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i7).num;
                    }
                    int i11 = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).civID;
                    if (!Game.FOG_OF_WAR || !GameValues.fog.HIDE_MANPOWER || i11 == Game.player.iCivID || DiplomacyManager.isAlly(i11, Game.player.iCivID)) {
                        f = i8 / (i9 * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE);
                        str = "" + i8;
                    } else {
                        str = GameValues.fog.TEXT_UNKNOWN_MANPOWER;
                        f = -1.0f;
                    }
                    arrayList2.add(new MenuElement_HoverElement_Type_BattleArmyPerc(str, Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i7).uID, Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i7).aID, i7 > 0 ? CFG.PADDING : 0, f));
                }
                i7++;
            }
            if (arrayList2.size() > 0) {
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            int i12 = Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).civID;
            if (!Game.FOG_OF_WAR || !GameValues.fog.HIDE_MANPOWER || i12 == Game.player.iCivID || DiplomacyManager.isAlly(i12, Game.player.iCivID)) {
                int i13 = 0;
                int i14 = 0;
                for (int i15 = 0; i15 < Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).iArmyRegimentSize; i15++) {
                    try {
                        i14 += Game.getProvince(Game.hoveredArmy.iProvinceID).getArmy(Game.hoveredArmy.iArmyID).lArmyRegiment.get(i15).num;
                        i13++;
                    } catch (Exception unused) {
                    }
                }
                int i16 = i13 * Game.gameAges.lAges.get(Game_Calendar.CURRENT_AGEID).REGIMENT_SIZE;
                if (i16 != i14) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Line());
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Manpower") + ": ", CFG.FONT_REGULAR_SMALL));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text("" + CFG.getNumberWithSpaces("" + i14) + " / " + CFG.getShortNumber(i16), CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(IwYCCQBuFGwl.tnIgT + CFG.getPrecision2((i14 / i16) * 100.0f, 10) + "%", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
        } catch (Exception unused2) {
            Game.provinceHover_Informations = null;
        }
    }

    public static final void updateProvinceHoverBattle() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("BattleOf", Game.getProvince(Game.hoveredBattle.iProvinceID).getProvinceName()), Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.battle, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        try {
            int battleID = Game.battleManager.getBattleID(Game.hoveredBattle.iProvinceID, Game.hoveredBattle.key);
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Soldiers") + ":", CFG.FONT_REGULAR_SMALL));
            if (Game.battleManager.getBattle(battleID).attackingArmy.iCivID < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rebelsFlag, CFG.PADDING, CFG.PADDING));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.battleManager.getBattle(battleID).attackingArmy.iCivID, CFG.PADDING, CFG.PADDING));
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getNumberWithSpaces("" + Game.battleManager.getBattle(battleID).attackingArmy.numOfUnits) + IwYCCQBuFGwl.nXW + CFG.getNumberWithSpaces("" + Game.battleManager.getBattle(battleID).defendingArmy.numOfUnits), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            if (Game.battleManager.getBattle(battleID).defendingArmy.iCivID < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.rebelsFlag, CFG.PADDING, 0));
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.battleManager.getBattle(battleID).defendingArmy.iCivID, CFG.PADDING, 0));
            }
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
    }

    public static final void updateProvinceHoverBuild() {
        if (Game.menuManager.getInMainMenu() || Game.menuManager.getInLoadGamesList() || Game.menuManager.getInScenarios_NewGame() || Game.menuManager.getInGameLegacies()) {
            provinceHoverBuild = new AnonymousClass2();
        } else if (Game.menuManager.getInScenarioWasteland() || Game.menuManager.getInScenarioCivilizations() || Game.menuManager.getInScenarioAssign()) {
            provinceHoverBuild = new AnonymousClass3();
        } else if (Game.menuManager.getInScenarioWastelandContinents()) {
            provinceHoverBuild = new AnonymousClass4();
        } else if (Game.menuManager.getInGame()) {
            provinceHoverBuild = Game.mapModes.lMapModes.get(Game.mapModes.iActiveMapModeID).provinceHoverBuild;
        } else {
            provinceHoverBuild = new AnonymousClass5();
        }
        Game.provinceHover_Informations = null;
    }

    public static final void updateProvinceHoverCapitalFlag() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID(), Game.getProvince(Game.iHoveredCapitalProvinceID).getProvinceName()));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        if (Game.menuManager.getInGame()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationRank") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()).iCivRankPosition, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Religion") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(Game.getCiv(Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()).getReligionID()).Name, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Religion(Game.getCiv(Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()).getReligionID(), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (Game.menuManager.getInNewGame()) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CivilizationRank") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getCiv(Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()).iCivRankPosition, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(CivilizationRanking.getCivilizationRanking_IMG_STAR_CIVID(Game.getProvince(Game.iHoveredCapitalProvinceID).getCivID()), CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
    }

    public static final void updateProvinceHoverSiege() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SiegeOf", Game.getProvince(Game.hoveredSiegeID).getProvinceName()), Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        try {
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SiegeProgress") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text(CFG.getPrecision2(Game.getProvince(Game.hoveredSiegeID).getSiegeProgress() * 100.0f, 10) + "%", CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.siege, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
    }

    public static final void updateShipHovered() {
        try {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            if (ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID < 0 || ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(1).getCivID(), Game.lang.get("UnknownShip")));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Pirates"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_NEGATIVE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else if (ShipManager.ships.get(Game.hoveredShipID).movingBack) {
                if (Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getCivID() != 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getCivID(), Game.lang.get("Ship")));
                } else if (Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getCivID() > 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getCivID(), Game.lang.get("Ship")));
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getCivID(), Game.lang.get("UnknownShip")));
                }
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getProvinceName() + " - " + Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getProvinceName(), CFG.FONT_REGULAR_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getCivID() > 0 && Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getResourceID() >= 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(ResourcesManager.lResources.get(Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getResourceID()).Name, "", Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getResourceID(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            } else {
                if (Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getCivID() != 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getCivID(), Game.lang.get("Ship")));
                } else if (Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getCivID() > 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getCivID(), Game.lang.get("Ship")));
                } else {
                    arrayList2.add(new MenuElement_HoverElement_Type_FlagCiv_Title(Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getCivID(), Game.lang.get("UnknownShip")));
                }
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getProvinceName() + " - " + Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).toProvinceID).getProvinceName(), CFG.FONT_REGULAR_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                if (Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getCivID() > 0 && Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getResourceID() >= 0) {
                    arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(ResourcesManager.lResources.get(Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getResourceID()).Name, "", Game.getProvince(ShipManager.shipLines.get(Game.hoveredShipID).fromProvinceID).getResourceID(), CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                }
            }
            Game.provinceHover_Informations = new MenuElement_Hover(arrayList);
        } catch (Exception unused) {
            Game.provinceHover_Informations = null;
        }
    }
}
