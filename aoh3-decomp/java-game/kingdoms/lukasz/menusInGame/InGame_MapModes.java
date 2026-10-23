package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.war.WarManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.button.Button32Padd;
import aoc.kingdoms.lukasz.menu_element.button.Button32Padd_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_MapModes extends Menu {
    public static int maxWidth;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$1, reason: invalid class name */
    class AnonymousClass1 extends Button32Padd {
        AnonymousClass1(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Political"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mapModesCivs, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$10, reason: invalid class name */
    class AnonymousClass10 extends Button32Padd {
        AnonymousClass10(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_MapModes.actionUnrest();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Unrest"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.revolutionRisk, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_UNREST;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$11, reason: invalid class name */
    class AnonymousClass11 extends Button32Padd {
        AnonymousClass11(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_MapModes.actionInfrastructure();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Infrastructure"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mapModesInfrastructure, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INFRASTRUCTURE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$12, reason: invalid class name */
    class AnonymousClass12 extends Button32Padd {
        AnonymousClass12(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFENSE_LEVEL);
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFENSE_LEVEL) {
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + CvuNnwgYwe.EclLbNhrEnqZTNR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("DefenseLevel"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.fort, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFENSE_LEVEL;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$13, reason: invalid class name */
    class AnonymousClass13 extends Button32Padd {
        AnonymousClass13(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DISEASES);
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DISEASES) {
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Diseases"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.disease, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DISEASES;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$14, reason: invalid class name */
    class AnonymousClass14 extends Button32Padd {
        AnonymousClass14(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_MapModes.actionLoot();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + gpVDKipRURuzw.vNhTNqF));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Loot"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.loot, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_LOOT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$15, reason: invalid class name */
    class AnonymousClass15 extends Button32Padd {
        AnonymousClass15(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_MapModes.actionDevastation();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Devastation"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.devastation, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEVASTATION;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$16, reason: invalid class name */
    class AnonymousClass16 extends Button32Padd_Text {
        AnonymousClass16(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_WARS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("CurrentWars"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.war, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Wars") + ": ", CFG.getNumberWithSpaces(PxHJ.UhrhZXhwWQUuz + WarManager.iWarsSize), Images.war, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.value != WarManager.iWarsSize) {
                this.value = WarManager.iWarsSize;
                if (this.value <= 0) {
                    setText("");
                } else {
                    setText("" + Math.min(GameValues.mapModes.WAR_BUTTON_WARS_MAX, this.value));
                }
            }
            return super.getTextToDraw();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_WARS;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$17, reason: invalid class name */
    class AnonymousClass17 extends Button32Padd_Text {
        AnonymousClass17(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_ALLIANCES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Alliances"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_ALLIANCES;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$18, reason: invalid class name */
    class AnonymousClass18 extends Button32Padd_Text {
        AnonymousClass18(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFENSIVE_PACTS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("DefensivePacts"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.defensivePact, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFENSIVE_PACTS;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$19, reason: invalid class name */
    class AnonymousClass19 extends Button32Padd_Text {
        AnonymousClass19(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_NON_AGGRESSION_PACTS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("NonAggressionPacts"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.nonAggression, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_NON_AGGRESSION_PACTS;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$2, reason: invalid class name */
    class AnonymousClass2 extends Button32Padd {
        AnonymousClass2(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_TERRAIN);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("TerrainType"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mapModesTerrain, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_TERRAIN;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$20, reason: invalid class name */
    class AnonymousClass20 extends Button32Padd {
        AnonymousClass20(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_INCOME);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("ProvinceIncome"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.goldPositive, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ProvinceIncomeMapModeDesc"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("ProvinceIncomeMapModeDesc2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return true;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_INCOME;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$3, reason: invalid class name */
    class AnonymousClass3 extends Button32Padd {
        AnonymousClass3(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_MapModes.actionGoods();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Resources"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mapModesGoods, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_GOODS;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$4, reason: invalid class name */
    class AnonymousClass4 extends Button32Padd {
        AnonymousClass4(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_WONDERS);
            if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_WONDERS) {
                Game.gameActiveProvince.resetLastActiveProvince();
                Game.setActiveProvinceID(-1);
                Game.menuManager.setVisibleInGame_ProvinceInfo(false);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Wonders"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mapModesWonders, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_WONDERS;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$5, reason: invalid class name */
    class AnonymousClass5 extends Button32Padd {
        AnonymousClass5(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_POPULATION);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("PopulationMapModeDesc"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("PopulationMapModeDesc2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_POPULATION;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$6, reason: invalid class name */
    class AnonymousClass6 extends Button32Padd {
        AnonymousClass6(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Economy"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("EconomyMapModeDesc"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("EconomyMapModeDesc2"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_ECONOMY;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$7, reason: invalid class name */
    class AnonymousClass7 extends Button32Padd {
        AnonymousClass7(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapModes.setActiveViewID(Game.mapModes.MODE_PROVINCE_TAX);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("TaxEfficiency"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.tax, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_PROVINCE_TAX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$8, reason: invalid class name */
    class AnonymousClass8 extends Button32Padd {
        AnonymousClass8(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_MapModes.actionGovernment();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Government"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_GOVERNMENT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_MapModes$9, reason: invalid class name */
    class AnonymousClass9 extends Button32Padd {
        AnonymousClass9(int i, int i2, int i3) {
            super(i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_MapModes.actionReligion();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MapMode") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear(Game.lang.get("Religion"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.mapModesReligion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button32Padd
        public boolean isActiveView() {
            return Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RELIGION;
        }
    }

    public InGame_MapModes() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING + Images.boxTitleBORDERWIDTH;
        int width = CFG.PADDING;
        updateMaxWidth(Images.mapModesCivs);
        updateMaxWidth(Images.population);
        updateMaxWidth(Game_Calendar.IMG_ECONOMY);
        updateMaxWidth(Images.tax);
        updateMaxWidth(Images.mapModesTerrain);
        updateMaxWidth(Images.goldPositive);
        for (int i2 = 0; i2 < GameValues.mapModes.MAP_MODES_ORDER.length; i2++) {
            if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 0) {
                arrayList.add(new AnonymousClass1(Images.mapModesCivs, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 1) {
                arrayList.add(new AnonymousClass2(Images.mapModesTerrain, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 2) {
                arrayList.add(new AnonymousClass3(Images.mapModesGoods, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 3) {
                arrayList.add(new AnonymousClass4(Images.mapModesWonders, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 4) {
                arrayList.add(new AnonymousClass5(Images.population, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 5) {
                arrayList.add(new AnonymousClass6(Game_Calendar.IMG_ECONOMY, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 6) {
                arrayList.add(new AnonymousClass7(Images.tax, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 7) {
                arrayList.add(new AnonymousClass8(Images.government, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 8) {
                arrayList.add(new AnonymousClass9(Images.mapModesReligion, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 9) {
                arrayList.add(new AnonymousClass10(Images.revolutionRisk, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 10) {
                arrayList.add(new AnonymousClass11(Images.mapModesInfrastructure, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 11) {
                arrayList.add(new AnonymousClass12(Images.fort, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 12) {
                arrayList.add(new AnonymousClass13(Images.disease, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 13) {
                arrayList.add(new AnonymousClass14(Images.loot, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 14) {
                arrayList.add(new AnonymousClass15(Images.devastation, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 15) {
                arrayList.add(new AnonymousClass16(Images.war, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 16) {
                arrayList.add(new AnonymousClass17(Images.alliance, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 17) {
                arrayList.add(new AnonymousClass18(Images.defensivePact, width, i));
            } else if (GameValues.mapModes.MAP_MODES_ORDER[i2] == 18) {
                arrayList.add(new AnonymousClass19(Images.nonAggression, width, i));
            }
            width += arrayList.get(arrayList.size() - 1).getWidth() + CFG.PADDING;
        }
        if (GameValues.mapModes.ENABLE_PROVINCE_INCOME_MAP_MODE) {
            arrayList.add(new AnonymousClass20(Images.goldPositive, width, i));
            arrayList.get(arrayList.size() - 1).getWidth();
            int i3 = CFG.PADDING;
        }
        initMenu(null, (CFG.GAME_WIDTH - Game.mapBG.minimapOfCivilizations.getWidth()) - (Minimap.getPadding() * 2), 150, ((Game.mapBG.minimapOfCivilizations.getWidth() + (Minimap.getPadding() * 2)) - ImageManager.getImage(Images.arrowUpDown).getWidth()) - (CFG.PADDING * 4), ImageManager.getImage(Images.arrowUpDown).getHeight() + (CFG.PADDING * 4) + Images.boxTitleBORDERWIDTH, arrayList, true);
        this.drawScrollPositionAlways = false;
    }

    public static void actionDevastation() {
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEVASTATION);
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEVASTATION) {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
        }
    }

    public static void actionGoods() {
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_GOODS);
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_GOODS) {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
        }
    }

    public static void actionGovernment() {
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_GOVERNMENT);
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_GOVERNMENT) {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
        }
    }

    public static void actionInfrastructure() {
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_INFRASTRUCTURE);
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_INFRASTRUCTURE) {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
        }
    }

    public static void actionLoot() {
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_LOOT);
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_LOOT) {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
        }
    }

    public static void actionReligion() {
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_RELIGION);
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_RELIGION) {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
        }
    }

    public static void actionUnrest() {
        Game.mapModes.setActiveViewID(Game.mapModes.MODE_UNREST);
        if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_UNREST) {
            Game.gameActiveProvince.resetLastActiveProvince();
            Game.setActiveProvinceID(-1);
            Game.menuManager.setVisibleInGame_ProvinceInfo(false);
        }
    }

    public static void updateMaxWidth(int i) {
        if (ImageManager.getImage(i).getWidth() > maxWidth) {
            maxWidth = ImageManager.getImage(i).getWidth();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosY() {
        return (((CFG.GAME_HEIGHT - Game.mapBG.minimapOfCivilizations.getHeight()) - (Minimap.getPadding() * 2)) - getHeight()) + InGame.iMinimapPosY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosY() {
        return (((CFG.GAME_HEIGHT - Game.mapBG.minimapOfCivilizations.getHeight()) - (Minimap.getPadding() * 2)) - getHeight()) + InGame.iMinimapPosY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGame();
    }
}
