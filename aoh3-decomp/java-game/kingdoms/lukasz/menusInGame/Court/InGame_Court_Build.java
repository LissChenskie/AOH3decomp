package aoc.kingdoms.lukasz.menusInGame.Court;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.BuildingsManager;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.technology.TechnologyTree;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.Toast;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding;
import aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding_Special;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_ActiveBuilding;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Active_Click;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc2_Special;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc3;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_BuildingSlots;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv_SpecialEmpty;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Buildings.InGame_Destroy;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.common.internal.constants.oyIG.kfGnwGN;
import com.google.android.gms.internal.common.oss.ClXgFvsSKQc;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Court_Build extends Menu {
    public static int iSortID;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonBuilding_Special {
        AnonymousClass1(boolean z, int i, int i2, int i3, int i4, int i5, boolean z2, boolean z3, String str) {
            super(z, i, i2, i3, i4, i5, z2, z3, str);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Buildings2_Back();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonBuilding_Special, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = ButtonBuilding.getHoverBuilding(this.building, this.buildingID, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_ID {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str = Game.lang.get("Population") + ": ";
            String str2 = ClXgFvsSKQc.TaZtyBgdGl;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2 + CFG.getNumberWithSpaces(str2 + Game.getProvince(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$11, reason: invalid class name */
    class AnonymousClass11 extends Text_StaticBG_BuildingSlots {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("BuildingSlots") + ": ", "" + Game.getProvince(getCurrent()).getUsedBuildingsSlots() + " / " + Game.getProvince(getCurrent()).iBuildingsLimit, Images.build, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_ActiveBuilding {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$12$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.HOVER_GOLD;
            }
        }

        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, i9);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID) {
                if (Game.getProvince(getCurrent()).getUsedBuildingsSlots() >= Game.getProvince(getCurrent()).iBuildingsLimit) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("BuildingSlots") + ": "));
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(getCurrent()).getUsedBuildingsSlots() + " / " + Game.getProvince(getCurrent()).iBuildingsLimit, Colors.COLOR_TEXT_MODIFIER_NEGATIVE));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.build, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("IncreaseEconomyInAProvinceToUnlockMoreBuildingSlots"), Colors.HOVER_GOLD));
                    arrayList2.add(new MenuElement_HoverElement_Type_Image(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    Game.menuManager.addToast(new Toast(arrayList, 0, Toast.TIME_INVIEW_VERY_LONG));
                    return;
                }
                if (Game.getProvince(getCurrent()).isOccupied()) {
                    Game.menuManager.addToast_Error(Game.lang.get("OccupiedProvince"), Images.war);
                    return;
                }
                if (Game.getProvince(getCurrent()).buildingBuilt(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                    Game.menuManager.addToastGold(Game.lang.get("BuildingConstructed"), Images.build);
                    return;
                }
                if (Game.getProvince(getCurrent()).isUnderConstruction(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                    Game.menuManager.addToastGold(Game.lang.get("UnderConstruction"), Images.build);
                    return;
                }
                if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredReligionID >= 0 && BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredReligionID != Game.getCiv(Game.getProvince(getCurrent()).getCivID()).getReligionID()) {
                    Game.menuManager.addToastGold(Game.lang.get("Religion") + ": " + Game.religionManager.getReligion(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredReligionID).Name, Images.religion);
                    return;
                }
                if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredGovernmentID >= 0 && BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredGovernmentID != Game.getCiv(Game.getProvince(getCurrent()).getCivID()).getIdeologyID()) {
                    Game.menuManager.addToastGold(Game.lang.get("Government") + ": " + Game.ideologiesManager.getIdeology(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredGovernmentID).Name, Images.government);
                } else if (!Game.getProvince(getCurrent()).addBuildingConstruction(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                    Game.menuManager.addToastInsufficient(Game.lang.get("InsufficientGold") + ": ", CFG.getPrecision2(Game.getBuildingConstructionCost(Game.player.iCivID, getCurrent(), InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY()), 100), Images.gold);
                } else {
                    MenuManager menuManager = Game.menuManager;
                    MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Court_Build.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Court_Build.this.getMenuPosY(), getWidth(), getHeight()));
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID) {
                Game.getProvince(getCurrent()).cancelBuildingConstruction(Game.player.iCivID, InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Build") + ": ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).Name[InGame_Court_Buildings2.oBuildingID.getPosY()], CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("", Game.getProvince(this.id).getProvinceName(), Images.provinces, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", CFG.getNumberWithSpaces("" + Game.getProvince(this.id).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Economy") + ": ", CFG.getPrecision2(Game.getProvince(this.id).getEconomyWithBonuses(), 10), Game_Calendar.IMG_ECONOMY, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("GrowthRate") + ": ", CFG.getPrecision2(Game.getProvince(this.id).getGrowthRateWithBonuses(), 1) + "%", Images.populationGrowth, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$13, reason: invalid class name */
    class AnonymousClass13 extends Text_StaticBG_ID {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince != getCurrent()) {
                Game.mapCoords.centerToProvinceID(getCurrent());
                Game.setActiveProvinceID(getCurrent());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.setActiveProvinceID(getCurrent());
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$14, reason: invalid class name */
    class AnonymousClass14 extends Text_StaticBG_ID {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Population") + ": ", "" + CFG.getNumberWithSpaces("" + Game.getProvince(getCurrent()).getPopulationTotal()), Images.population, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.COLOR_POPULATION));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$15, reason: invalid class name */
    class AnonymousClass15 extends Text_StaticBG_BuildingSlots {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(hQfu.kKYkBpfBVRmY) + kfGnwGN.BWdKZcFNxy, CFG.FONT_BOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("" + Game.getProvince(getCurrent()).getUsedBuildingsSlots() + " / " + Game.getProvince(getCurrent()).iBuildingsLimit, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.build, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getProvince(getCurrent()).getCivID() == Game.player.iCivID) {
                InGame_Destroy.iProvinceID = getCurrent();
                InGame_Destroy.building = InGame_Court_Buildings2.oBuildingID.getPosX();
                InGame_Destroy.buildingID = InGame_Court_Buildings2.oBuildingID.getPosY();
                Game.menuManager.rebuildInGame_Destroy();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Desc2_Special {
        AnonymousClass2(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.rebuildInGame_Buildings2_Back();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Back"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Active_Click {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getCapitalLevel() >= Game.getCapital_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", "" + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), Images.capital);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 8) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeCapital();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Court_Government.getHoverCapitalCity(true, Game.player.iCivID);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$4, reason: invalid class name */
    class AnonymousClass4 extends Text_Desc3 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.getCiv(Game.player.iCivID).getCapitalLevel() >= Game.getCapital_MaxLvl(Game.player.iCivID)) {
                Game.menuManager.addToastInsufficient(Game.lang.get("MaximumLevel") + ": ", gpVDKipRURuzw.QpIOediCT + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), Images.capital);
            } else if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 8) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            } else {
                Game.menuManager.rebuildInGame_UpgradeCapital();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MonthlyChange") + ": ", "+" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fResearchPerMonth, 100) + " / " + CFG.getPrecision2(TechnologyTree.getMaxResearch(Game.player.iCivID), 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("MaximumResearch") + ": ", CFG.getPrecision2(TechnologyTree.getMaxResearch(Game.player.iCivID), 100), Game_Calendar.IMG_TECHNOLOGY, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("MaximumResearch")).append(" = ").append(CFG.getPrecision2(GameValues.research.MAX_RESEARCH_BASE, 100)).append(" + ").append(Game.lang.get("Capital"));
            String str = qIuEvFbUtcea.yih;
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(sbAppend.append(str).append(Game.lang.get("GrowthRate")).append(" * ").append(CFG.getPrecision2(GameValues.research.MAX_RESEARCH_PER_GROWTH_RATE_IN_CAPITAL, 100)).append(" + ").append(Game.lang.get("CapitalCity")).append(str).append(Game.lang.get("Level")).append(" * ").append(CFG.getPrecision2(GameValues.capital.CAPITAL_MAX_RESEARCH_PER_LVL, 100)).toString(), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT3));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("CapitalCity") + ": ", Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), Images.capital, CFG.FONT_REGULAR, CFG.FONT_BOLD, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc3, aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static
        protected Color getColor(boolean z) {
            return Game.getCiv(Game.player.iCivID).fResearchPerMonth >= TechnologyTree.getMaxResearch(Game.player.iCivID) ? Colors.HOVER_NEGATIVE : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$5, reason: invalid class name */
    class AnonymousClass5 extends Text_TitleBlueSort {
        AnonymousClass5(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Build.iSortID == 0) {
                InGame_Court_Build.iSortID = 1;
            } else {
                InGame_Court_Build.iSortID = 0;
            }
            Game.menuManager.rebuildInGame_Build();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Name"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$6, reason: invalid class name */
    class AnonymousClass6 extends Text_TitleBlueSort {
        AnonymousClass6(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Build.iSortID == 2) {
                InGame_Court_Build.iSortID = 3;
            } else {
                InGame_Court_Build.iSortID = 2;
            }
            Game.menuManager.rebuildInGame_Build();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$7, reason: invalid class name */
    class AnonymousClass7 extends Text_TitleBlueSort {
        AnonymousClass7(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Build.iSortID == 4) {
                InGame_Court_Build.iSortID = 5;
            } else {
                InGame_Court_Build.iSortID = 4;
            }
            Game.menuManager.rebuildInGame_Build();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("BuildingSlots"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$8, reason: invalid class name */
    class AnonymousClass8 extends Text_TitleBlueSort {
        AnonymousClass8(boolean z, boolean z2, String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(z, z2, str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (InGame_Court_Build.iSortID == 6) {
                InGame_Court_Build.iSortID = 7;
            } else {
                InGame_Court_Build.iSortID = 6;
            }
            Game.menuManager.rebuildInGame_Build();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SortBy") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Cost"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlueSort, aoc.kingdoms.lukasz.menu_element.textStatic.Text_TitleBlue
        public void drawLines(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Build$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince != getCurrent()) {
                Game.mapCoords.centerToProvinceID(getCurrent());
                Game.setActiveProvinceID(getCurrent());
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            } else {
                Game.menuManager.hideCourtCiv();
                Game.menuManager.setVisibleInGame_Civ(false);
                Game.setActiveProvinceID(getCurrent());
                Game.menuManager.rebuildInGame_ProvinceInfo(true);
                ProvinceBorderManager.action.setProvinceID(Game.iActiveProvince);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_ProvinceInfo.getHoverProvince(this.id);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v9, types: [aoc.kingdoms.lukasz.jakowski.LanguageManager] */
    /* JADX WARN: Type inference failed for: r39v0, types: [int] */
    /* JADX WARN: Type inference failed for: r39v1 */
    /* JADX WARN: Type inference failed for: r39v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v32 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v51 */
    /* JADX WARN: Type inference failed for: r6v52 */
    /* JADX WARN: Type inference failed for: r6v53 */
    /* JADX WARN: Type inference failed for: r6v54 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public InGame_Court_Build() {
        int i;
        ?? r6;
        ?? r7;
        ?? r1;
        char c;
        int i2;
        int i3;
        int i4;
        Object obj = "None";
        ArrayList arrayList = new ArrayList();
        int i5 = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int otherMenuPosX = InGame_CourtOptions2.getOtherMenuPosX();
        int height = CFG.PADDING + ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY;
        int i6 = CFG.PADDING;
        int i7 = Images.boxTitleBORDERWIDTH;
        int i8 = CFG.isDesktop() ? CFG.BUTTON_HEIGHT3 : CFG.BUTTON_HEIGHT2;
        int i9 = width - (i5 * 2);
        int i10 = CFG.PADDING;
        int i11 = CFG.PADDING;
        int i12 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.35f);
        int i13 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i14 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.2f);
        int i15 = (int) ((width - (Images.boxTitleBORDERWIDTH * 2)) * 0.25f);
        int i16 = (int) ((i9 - (CFG.PADDING * 2)) * 0.35f);
        int i17 = (int) ((i9 - (CFG.PADDING * 2)) * 0.2f);
        int i18 = (int) ((i9 - (CFG.PADDING * 2)) * 0.2f);
        int i19 = (int) ((i9 - (CFG.PADDING * 2)) * 0.25f);
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        while (i22 < Game.getCiv(Game.player.iCivID).getNumOfProvinces()) {
            try {
                if (Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i22)).isOccupied()) {
                    i3 = i14;
                } else {
                    i3 = i14;
                    try {
                        if (!BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).SeaAccessRequired || Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i22)).getLevelOfPort() >= 0) {
                            i4 = i13;
                            try {
                                i20 = Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i22)).buildingBuilt(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY()) ? i20 + 1 : i20;
                                if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource < 0 || BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource == Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i22)).getResourceID()) {
                                    i21++;
                                }
                            } catch (Exception e) {
                                e = e;
                                CFG.exceptionStack(e);
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                        i4 = i13;
                        CFG.exceptionStack(e);
                        i22++;
                        i14 = i3;
                        i13 = i4;
                    }
                    i22++;
                    i14 = i3;
                    i13 = i4;
                }
                i4 = i13;
            } catch (Exception e3) {
                e = e3;
                i3 = i14;
            }
            i22++;
            i14 = i3;
            i13 = i4;
        }
        int i23 = i13;
        ?? r39 = i14;
        arrayList.add(new AnonymousClass1(true, InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY(), i5, i6, i9, true, true, "" + i20 + " / " + i21));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + i6 + i6;
        if (!Game.lang.get(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).NameDesc[InGame_Court_Buildings2.oBuildingID.getPosY()]).equals(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).NameDesc[InGame_Court_Buildings2.oBuildingID.getPosY()])) {
            arrayList.add(new AnonymousClass2(Game.lang.get(BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).NameDesc[InGame_Court_Buildings2.oBuildingID.getPosY()]), i5, height2, i9));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        if (BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).ResearchPoints != null) {
            int i24 = CFG.PADDING + height2;
            i = i9;
            arrayList.add(new AnonymousClass3(Game.lang.get("CapitalCity") + ": " + Game.getCiv(Game.player.iCivID).getCapitalLevel() + " / " + Game.getCapital_MaxLvl(Game.player.iCivID), Images.capital, i5 + CFG.PADDING, i24, i - (CFG.PADDING * 2), CFG.BUTTON_HEIGHT3, ImageManager.getImage(Images.advantages).getWidth() + (CFG.PADDING * 4), 0, CFG.FONT_REGULAR_SMALL));
            int height3 = i24 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
            arrayList.add(new AnonymousClass4(Game.lang.get("ResearchPerMonth") + ": +" + CFG.getPrecision2(Game.getCiv(Game.player.iCivID).fResearchPerMonth, 100) + " / " + CFG.getPrecision2(TechnologyTree.getMaxResearch(Game.player.iCivID), 100), i5 + CFG.PADDING, height3, i - (CFG.PADDING * 2), CFG.FONT_REGULAR_SMALL));
            int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
            int i25 = height4 - height2;
            arrayList.add(new Text_StaticBG_ID_FlagCiv_SpecialEmpty(i5, height4 - i25, i, i25));
            height2 = height4 + i6;
        } else {
            i = i9;
        }
        int i26 = iSortID;
        int i27 = i;
        int i28 = 1;
        arrayList.add(new AnonymousClass5(i26 == 0 || i26 == 1, i26 == 1, Game.lang.get("Name"), -1, i7, height2, i12, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width2 = i7 + arrayList.get(arrayList.size() - 1).getWidth();
        int i29 = iSortID;
        int i30 = 3;
        arrayList.add(new AnonymousClass6(i29 == 2 || i29 == 3, i29 == 3, Game.lang.get("Population"), -1, width2, height2, i23, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width3 = width2 + arrayList.get(arrayList.size() - 1).getWidth();
        int i31 = iSortID;
        int i32 = 5;
        int i33 = 4;
        arrayList.add(new AnonymousClass7(i31 == 4 || i31 == 5, i31 == 5, Game.lang.get("BuildingSlots"), -1, width3, height2, r39, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int width4 = width3 + arrayList.get(arrayList.size() - 1).getWidth();
        int i34 = iSortID;
        arrayList.add(new AnonymousClass8(i34 == 6 || i34 == 7, i34 == 7, Game.lang.get("Cost"), -1, width4, height2, i15, CFG.TEXT_HEIGHT + (CFG.PADDING * 6), CFG.FONT_BOLD_SMALL));
        int height5 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + height2;
        ArrayList arrayList2 = new ArrayList();
        for (int i35 = 0; i35 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i35++) {
            try {
                if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i35)).isOccupied() && !Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i35)).buildingBuilt(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY()) && ((BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource < 0 || BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).RequiredResource == Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i35)).getResourceID()) && (!BuildingsManager.buildings.get(InGame_Court_Buildings2.oBuildingID.getPosX()).SeaAccessRequired || Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i35)).getLevelOfPort() >= 0))) {
                    arrayList2.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i35)));
                }
            } catch (Exception e4) {
                e = e4;
                r6 = obj;
                obj = arrayList2;
            }
        }
        try {
            if (arrayList2.size() > 0) {
                while (arrayList2.size() > 0) {
                    try {
                        int i36 = iSortID;
                        if (i36 == 0) {
                            i2 = 0;
                            for (int i37 = i28; i37 < arrayList2.size(); i37++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i37)).intValue()).getProvinceName())) {
                                    i2 = i37;
                                }
                            }
                        } else if (i36 == i28) {
                            i2 = 0;
                            for (int i38 = i28; i38 < arrayList2.size(); i38++) {
                                if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) arrayList2.get(i38)).intValue()).getProvinceName(), Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceName())) {
                                    i2 = i38;
                                }
                            }
                        } else if (i36 == 2) {
                            i2 = 0;
                            for (int i39 = i28; i39 < arrayList2.size(); i39++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i39)).intValue()).getPopulationTotal() > Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getPopulationTotal()) {
                                    i2 = i39;
                                }
                            }
                        } else if (i36 == i30) {
                            i2 = 0;
                            for (int i40 = i28; i40 < arrayList2.size(); i40++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i40)).intValue()).getPopulationTotal() < Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getPopulationTotal()) {
                                    i2 = i40;
                                }
                            }
                        } else if (i36 == i33) {
                            i2 = 0;
                            for (int i41 = i28; i41 < arrayList2.size(); i41++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i41)).intValue()).iBuildingsLimit > Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).iBuildingsLimit) {
                                    i2 = i41;
                                }
                            }
                        } else if (i36 == i32) {
                            i2 = 0;
                            for (int i42 = i28; i42 < arrayList2.size(); i42++) {
                                if (Game.getProvince(((Integer) arrayList2.get(i42)).intValue()).iBuildingsLimit < Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).iBuildingsLimit) {
                                    i2 = i42;
                                }
                            }
                        } else {
                            if (i36 == 6) {
                                i2 = 0;
                                for (int i43 = i28; i43 < arrayList2.size(); i43++) {
                                    if (Game.getIncreaseTaxEfficiencyCost(((Integer) arrayList2.get(i2)).intValue()) < Game.getIncreaseTaxEfficiencyCost(((Integer) arrayList2.get(i43)).intValue())) {
                                        i2 = i43;
                                    }
                                }
                            } else {
                                c = 7;
                                if (i36 == 7) {
                                    i2 = 0;
                                    for (int i44 = i28; i44 < arrayList2.size(); i44++) {
                                        if (Game.getIncreaseTaxEfficiencyCost(((Integer) arrayList2.get(i2)).intValue()) > Game.getIncreaseTaxEfficiencyCost(((Integer) arrayList2.get(i44)).intValue())) {
                                            i2 = i44;
                                        }
                                    }
                                } else {
                                    i2 = 0;
                                }
                            }
                            Object obj2 = obj;
                            ArrayList arrayList3 = arrayList2;
                            int i45 = i33;
                            int i46 = i32;
                            int i47 = i30;
                            arrayList.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i5, height5, i16, i8, ((Integer) arrayList2.get(i2)).intValue()));
                            int width5 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i5;
                            arrayList.add(new AnonymousClass10("" + CFG.getShortNumber(Game.getProvince(((Integer) arrayList3.get(i2)).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width5, height5, i17, i8, ((Integer) arrayList3.get(i2)).intValue()));
                            int width6 = width5 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                            arrayList.add(new AnonymousClass11("" + Game.getProvince(((Integer) arrayList3.get(i2)).intValue()).getUsedBuildingsSlots() + " / " + Game.getProvince(((Integer) arrayList3.get(i2)).intValue()).iBuildingsLimit, CFG.FONT_REGULAR_SMALL, -1, width6, height5, i18, i8, ((Integer) arrayList3.get(i2)).intValue()));
                            arrayList.add(new AnonymousClass12("" + CFG.getPrecision2(Game.getBuildingConstructionCost(Game.player.iCivID, ((Integer) arrayList3.get(i2)).intValue(), InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY()), 10), Images.gold, width6 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height5, i19, i8, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList3.get(i2)).intValue(), InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY()));
                            height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                            arrayList3.remove(i2);
                            arrayList2 = arrayList3;
                            i32 = i46;
                            obj = obj2;
                            i33 = i45;
                            i30 = i47;
                            i28 = 1;
                        }
                        c = 7;
                        Object obj3 = obj;
                        ArrayList arrayList4 = arrayList2;
                        int i48 = i33;
                        int i49 = i32;
                        int i410 = i30;
                        arrayList.add(new AnonymousClass9(Game.getProvince(((Integer) arrayList2.get(i2)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i5, height5, i16, i8, ((Integer) arrayList2.get(i2)).intValue()));
                        int width7 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i5;
                        arrayList.add(new AnonymousClass10("" + CFG.getShortNumber(Game.getProvince(((Integer) arrayList4.get(i2)).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width7, height5, i17, i8, ((Integer) arrayList4.get(i2)).intValue()));
                        int width8 = width7 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                        arrayList.add(new AnonymousClass11("" + Game.getProvince(((Integer) arrayList4.get(i2)).intValue()).getUsedBuildingsSlots() + " / " + Game.getProvince(((Integer) arrayList4.get(i2)).intValue()).iBuildingsLimit, CFG.FONT_REGULAR_SMALL, -1, width8, height5, i18, i8, ((Integer) arrayList4.get(i2)).intValue()));
                        arrayList.add(new AnonymousClass12("" + CFG.getPrecision2(Game.getBuildingConstructionCost(Game.player.iCivID, ((Integer) arrayList4.get(i2)).intValue(), InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY()), 10), Images.gold, width8 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height5, i19, i8, ImageManager.getImage(Images.gold).getWidth(), ((Integer) arrayList4.get(i2)).intValue(), InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY()));
                        height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        arrayList4.remove(i2);
                        arrayList2 = arrayList4;
                        i32 = i49;
                        obj = obj3;
                        i33 = i48;
                        i30 = i410;
                        i28 = 1;
                    } catch (Exception e5) {
                        e = e5;
                        r39 = obj;
                        obj = arrayList2;
                        r6 = r39;
                        CFG.exceptionStack(e);
                        r1 = obj;
                        r7 = r6;
                    }
                }
                Object obj4 = obj;
                r1 = arrayList2;
                r7 = obj4;
            } else {
                obj = arrayList2;
                try {
                    r6 = "None";
                    try {
                        arrayList.add(new Text_StaticBG(Game.lang.get("None"), CFG.FONT_REGULAR, -1, i5, height5, i27, CFG.BUTTON_HEIGHT2));
                        height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        r1 = obj;
                        r7 = r6;
                    } catch (Exception e6) {
                        e = e6;
                        CFG.exceptionStack(e);
                        r1 = obj;
                        r7 = r6;
                    }
                } catch (Exception e7) {
                    e = e7;
                    r6 = "None";
                }
            }
        } catch (Exception e8) {
            e = e8;
        }
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Built"), -1, Images.boxTitleBORDERWIDTH, height5, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        for (int i50 = 0; i50 < Game.getCiv(Game.player.iCivID).getNumOfProvinces(); i50++) {
            try {
                if (!Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i50)).isOccupied() && Game.getProvince(Game.getCiv(Game.player.iCivID).getProvinceID(i50)).buildingBuilt(InGame_Court_Buildings2.oBuildingID.getPosX(), InGame_Court_Buildings2.oBuildingID.getPosY())) {
                    r1.add(Integer.valueOf(Game.getCiv(Game.player.iCivID).getProvinceID(i50)));
                }
            } catch (Exception e9) {
                CFG.exceptionStack(e9);
            }
        }
        if (r1.size() > 0) {
            while (r1.size() > 0) {
                int i51 = 0;
                for (int i52 = 1; i52 < r1.size(); i52++) {
                    if (CFG.compareAlphabetic_TwoString(Game.getProvince(((Integer) r1.get(i51)).intValue()).getProvinceName(), Game.getProvince(((Integer) r1.get(i52)).intValue()).getProvinceName())) {
                        i51 = i52;
                    }
                }
                arrayList.add(new AnonymousClass13(Game.getProvince(((Integer) r1.get(i51)).intValue()).getProvinceName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i5, height6, i16, i8, ((Integer) r1.get(i51)).intValue()));
                int width9 = arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING + i5;
                arrayList.add(new AnonymousClass14("" + CFG.getShortNumber(Game.getProvince(((Integer) r1.get(i51)).intValue()).getPopulationTotal()), CFG.FONT_REGULAR_SMALL, -1, width9, height6, i17, i8, ((Integer) r1.get(i51)).intValue()));
                int width10 = width9 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
                arrayList.add(new AnonymousClass15("" + Game.getProvince(((Integer) r1.get(i51)).intValue()).getUsedBuildingsSlots() + " / " + Game.getProvince(((Integer) r1.get(i51)).intValue()).iBuildingsLimit, CFG.FONT_REGULAR_SMALL, -1, width10, height6, i18, i8, ((Integer) r1.get(i51)).intValue()));
                arrayList.add(new AnonymousClass16(Game.lang.get("Destroy"), Images.x, width10 + arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING, height6, i19, i8, ImageManager.getImage(Images.gold).getWidth(), ((Integer) r1.get(i51)).intValue()));
                height6 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                r1.remove(i51);
            }
        } else {
            arrayList.add(new Text_StaticBG(Game.lang.get(r7), CFG.FONT_REGULAR, -1, i5, height6, i27, CFG.BUTTON_HEIGHT2));
            height6 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int i53 = height6 + CFG.PADDING;
        int i54 = height + InGame_CourtOptions.menuH;
        int iMin = Math.min(i53, (CFG.GAME_HEIGHT - i54) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(i53, iMin)));
        initMenu(null, otherMenuPosX, i54, width, iMin, arrayList, false, false);
        this.drawScrollPositionAlways = false;
        Game.menuManager.setInGame_CivOptions_Title(Game.lang.get("ConstructNewBuilding"));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = InGame_Court.lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (CFG.BUTTON_WIDTH * ((CFG.currentTimeMillis - InGame_Court.lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - InGame_CourtOptions.menuH) + i2, getWidth(), getHeight() + InGame_CourtOptions.menuH + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civOptionsOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civOptionsOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civOptionsOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameCourt();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        InGame_Court.lTime = CFG.currentTimeMillis;
        InGame_Court.lTime2 = CFG.currentTimeMillis;
    }
}
