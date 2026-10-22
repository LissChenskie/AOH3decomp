package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_LoadSaveScenario;
import aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioAlliancesList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDefensiveList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDiplomacy;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioGuaranteeList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioMilitaryAccessList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioNonAggressionList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioRelationsList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioTrucesList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioVassalsList;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.pairip.licensecheck.CohD.CaiJWNfqszJNZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioSettings extends Menu {
    public static String sAuthor = "";
    public static String sGold = "";
    public static String sGoldRandom = "";
    public static String sLegacy = "";
    public static String sLegacyRandom = "";
    public static String sManpower = "";
    public static String sName = "";
    public static String sProvinceDefault_Economy = "";
    public static String sProvinceDefault_Manpower = "";
    public static String sProvinceDefault_Population = "";
    public static String sProvinceDefault_TaxEfficiency = "";
    public static String sTag = "";
    public static String sWiki = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SCENARIO_ASSIGN);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonMain {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapScenarios.scenarioEditor_isCampaign = !Game.mapScenarios.scenarioEditor_isCampaign;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + Game.mapScenarios.scenarioEditor_isCampaign;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Campaign") + ": ");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsBudget {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            for (int i = 0; i < Game.getCivsSize(); i++) {
                Game.getCiv(i).buildTechTree();
            }
            Game.menuManager.setViewID(View.SCENARIO_TECHNOLOGIES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("UnlockedTechnologies"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.technology, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsBudget {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_PROVINCE_POPULATION, ScenarioSettings.sProvinceDefault_Population);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG("Province default starting Population", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Value * the province's Growth Rate"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sProvinceDefault_Population + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_PROVINCE_POPULATION ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonStatsBudget {
        AnonymousClass13(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SCENARIO_POPULATION);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Population"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.population, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonStatsBudget {
        AnonymousClass14(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            for (int i = 0; i < Game.getCivsSize(); i++) {
                Game.getCiv(i).buildTechTree();
            }
            Renderer.drawArmyInProvince = true;
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_ARMIES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Armies"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.manpower, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonStatsBudget {
        AnonymousClass15(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_GOLD, ScenarioSettings.sGold);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG("Starting Gold", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sGold + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_GOLD ? Keyboard.getKeyboardVerticalLine() : gpVDKipRURuzw.cdMERyXIPfNMJ);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonStatsBudget {
        AnonymousClass16(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_GOLD_RANDOM, ScenarioSettings.sGoldRandom);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG("Starting Gold - Extra Random", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sGoldRandom + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_GOLD_RANDOM ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonStatsBudget {
        AnonymousClass17(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_LEGACY, ScenarioSettings.sLegacy);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG("Starting Legacy", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sLegacy + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_LEGACY ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonStatsBudget {
        AnonymousClass18(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_LEGACY_RANDOM, ScenarioSettings.sLegacyRandom);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG("Starting Legacy - Extra Random", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sLegacyRandom + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_LEGACY_RANDOM ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonStatsBudget {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_MANPOWER_PERC, ScenarioSettings.sLegacyRandom);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG("Starting Manpower Percentage of 100%", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.manpower, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sManpower + fiRhHJntP.AncXZFMPFxyI + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_MANPOWER_PERC ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (ScenarioSettings.sTag.length() == 0) {
                Game.menuManager.addToast_Error(Game.lang.get(fiRhHJntP.RHGOWBXIvUv) + " -> " + Game.lang.get("Tag") + " is null");
            } else {
                Menu_LoadSaveScenario.goToMenu = View.SCENARIO_PREVIEW;
                Game.menuManager.setViewID(View.LOAD_SAVE_SCENARIO);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Save"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$20, reason: invalid class name */
    class AnonymousClass20 extends ButtonStatsBudget {
        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_PROVINCE_ECONOMY, ScenarioSettings.sProvinceDefault_Economy);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG("Province Starting Economy", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Value * the province Base Development"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sProvinceDefault_Economy + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_PROVINCE_ECONOMY ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonStatsBudget {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_PROVINCE_TAX_EFFICIENCY, ScenarioSettings.sProvinceDefault_TaxEfficiency);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG("Province Starting Tax Efficiency", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.tax, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(CaiJWNfqszJNZ.VylX));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sProvinceDefault_TaxEfficiency + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_PROVINCE_TAX_EFFICIENCY ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$22, reason: invalid class name */
    class AnonymousClass22 extends ButtonStatsBudget {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_PROVINCE_MANPOWER, ScenarioSettings.sProvinceDefault_Manpower);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG("Province Starting Manpower", Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.manpower, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Value * the province Base Development"));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sProvinceDefault_Manpower + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_PROVINCE_MANPOWER ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$23, reason: invalid class name */
    class AnonymousClass23 extends ButtonStatsBudget {
        AnonymousClass23(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioEconomy_List.listMode = ScenarioEconomy_List.ListMode.ECONOMY;
            Game.menuManager.setViewID(View.SCENARIO_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Economy"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_ECONOMY, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$24, reason: invalid class name */
    class AnonymousClass24 extends ButtonStatsBudget {
        AnonymousClass24(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioEconomy_List.listMode = ScenarioEconomy_List.ListMode.TAX_EFFICIENCY;
            Game.menuManager.setViewID(View.SCENARIO_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("TaxEfficiency"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.tax, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$25, reason: invalid class name */
    class AnonymousClass25 extends ButtonStatsBudget {
        AnonymousClass25(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioEconomy_List.listMode = ScenarioEconomy_List.ListMode.MANPOWER;
            Game.menuManager.setViewID(View.SCENARIO_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Manpower"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.manpower, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$26, reason: invalid class name */
    class AnonymousClass26 extends ButtonStatsBudget {
        AnonymousClass26(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioEconomy_List.listMode = ScenarioEconomy_List.ListMode.GOLD;
            Game.menuManager.setViewID(View.SCENARIO_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Gold"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.gold, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$27, reason: invalid class name */
    class AnonymousClass27 extends ButtonStatsBudget {
        AnonymousClass27(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioEconomy_List.listMode = ScenarioEconomy_List.ListMode.LEGACY;
            Game.menuManager.setViewID(View.SCENARIO_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Legacy"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.legacy, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$28, reason: invalid class name */
    class AnonymousClass28 extends ButtonStatsBudget {
        AnonymousClass28(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioEconomy_List.listMode = ScenarioEconomy_List.ListMode.AI_AGGRESSIVENESS;
            Game.menuManager.setViewID(View.SCENARIO_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AIAggressiveness"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.ai, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Default") + ": ", "" + Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHANCE + " + " + Game.lang.get("Extra") + lJxd.DnOCvDy + Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_RANDOM_MAX, Images.ai, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$29, reason: invalid class name */
    class AnonymousClass29 extends ButtonStatsBudget {
        AnonymousClass29(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioEconomy_List.listMode = ScenarioEconomy_List.ListMode.NUKES;
            Game.menuManager.setViewID(View.SCENARIO_ECONOMY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AtomicBombs"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.nuke, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_NAME, ScenarioSettings.sName);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sName + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_NAME ? Keyboard.getKeyboardVerticalLine() : "");
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("ScenarioName") + ": ");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$30, reason: invalid class name */
    class AnonymousClass30 extends ButtonStatsBudget {
        AnonymousClass30(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SCENARIO_GOVERNMENT);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Government"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.government, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$31, reason: invalid class name */
    class AnonymousClass31 extends ButtonStatsBudget {
        AnonymousClass31(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            CFG.selectMode = true;
            EditorSelectProvinces.selectedProvinces.clear();
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_BUILDINGS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Buildings"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.buildings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$32, reason: invalid class name */
    class AnonymousClass32 extends ButtonStatsBudget {
        AnonymousClass32(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            CFG.selectMode = true;
            EditorSelectProvinces.selectedProvinces.clear();
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_ScenarioCores();
            Game.menuManager.setViewID(View.SCENARIO_CORES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AddCore"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$33, reason: invalid class name */
    class AnonymousClass33 extends ButtonStatsBudget {
        AnonymousClass33(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            CFG.selectMode = true;
            EditorSelectProvinces.selectedProvinces.clear();
            Renderer.drawArmyInProvince = false;
            ProvinceDrawDetails.updateDrawProvinceDetails_ScenarioReligion();
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_RELIGION);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Religion"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc("Change the religion in the capital province to change the Civilization's religion.", CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$34, reason: invalid class name */
    class AnonymousClass34 extends ButtonStatsBudget {
        AnonymousClass34(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.SCENARIO_CREATE_ALLIANCE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("CreateAlliance"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.hre, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("HolyRomanEmpire"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$35, reason: invalid class name */
    class AnonymousClass35 extends ButtonStatsBudget {
        AnonymousClass35(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioRelationsList.activeCivID = 0;
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_RELATIONS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Relations"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.relations, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$36, reason: invalid class name */
    class AnonymousClass36 extends ButtonStatsBudget {
        AnonymousClass36(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioAlliancesList.activeCivID = 0;
            ScenarioAlliancesList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_ALLIANCES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Alliances"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$37, reason: invalid class name */
    class AnonymousClass37 extends ButtonStatsBudget {
        AnonymousClass37(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioDefensiveList.activeCivID = 0;
            ScenarioDefensiveList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_DEFENSIVE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DefensivePacts"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.defensivePact, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$38, reason: invalid class name */
    class AnonymousClass38 extends ButtonStatsBudget {
        AnonymousClass38(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioNonAggressionList.activeCivID = 0;
            ScenarioNonAggressionList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_NON_AGGRESSION);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("NonAggressionPacts"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.nonAggression, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$39, reason: invalid class name */
    class AnonymousClass39 extends ButtonStatsBudget {
        AnonymousClass39(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioGuaranteeList.activeCivID = 0;
            ScenarioGuaranteeList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_GUARANTEE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("GuaranteeIndependence"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.guaranteeIndependence, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleScenario_Calendar()) {
                Game.menuManager.setVisibleScenario_Calendar(false);
            } else {
                Game.menuManager.rebuildScenario_Calendar();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + Game_Calendar.getCurrentDate();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Date") + fTNtCctcBZcqKK.agfyabo);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$40, reason: invalid class name */
    class AnonymousClass40 extends ButtonStatsBudget {
        AnonymousClass40(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioMilitaryAccessList.activeCivID = 0;
            ScenarioMilitaryAccessList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_MILITARY_ACCESS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("MilitaryAccess"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.militaryAccess, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$41, reason: invalid class name */
    class AnonymousClass41 extends ButtonStatsBudget {
        AnonymousClass41(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioTrucesList.activeCivID = 0;
            ScenarioTrucesList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_TRUCES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Truces"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.truce, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$42, reason: invalid class name */
    class AnonymousClass42 extends ButtonStatsBudget {
        AnonymousClass42(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioVassalsList.activeCivID = 0;
            ScenarioVassalsList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.SCENARIO_SETTINGS;
            Game.menuManager.setViewID(View.SCENARIO_VASSALS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(Game_Ages.getVassals()), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.vassal, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_AUTHOR, ScenarioSettings.sAuthor);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sAuthor + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_AUTHOR ? Keyboard.getKeyboardVerticalLine() : "");
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Author") + ": ");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonMain {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_TAG, ScenarioSettings.sTag);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + ScenarioSettings.sTag + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_TAG ? Keyboard.getKeyboardVerticalLine() : "");
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Scenario") + ": " + Game.lang.get("Tag") + ": ");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonMain {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MapScenarios mapScenarios = Game.mapScenarios;
            MapScenarios.Details details = MapScenarios.scenarioEditorDetails;
            MapScenarios mapScenarios2 = Game.mapScenarios;
            details.HoursPerTurn = Math.max(1, Math.min(24, MapScenarios.scenarioEditorDetails.HoursPerTurn - 1));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonMain {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            StringBuilder sbAppend = new StringBuilder().append(super.getTextToDraw());
            MapScenarios mapScenarios = Game.mapScenarios;
            return sbAppend.append(MapScenarios.scenarioEditorDetails.HoursPerTurn).toString();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("HoursPerTurn") + ": ");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonMain {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MapScenarios mapScenarios = Game.mapScenarios;
            MapScenarios.Details details = MapScenarios.scenarioEditorDetails;
            MapScenarios mapScenarios2 = Game.mapScenarios;
            details.HoursPerTurn = Math.max(1, Math.min(24, MapScenarios.scenarioEditorDetails.HoursPerTurn + 1));
        }
    }

    public ScenarioSettings() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.PADDING * 4;
        sGold = "" + MapScenarios.scenarioEditorDetails.CivDefault_Gold;
        sGoldRandom = "" + MapScenarios.scenarioEditorDetails.CivDefault_GoldRandom;
        sLegacy = "" + MapScenarios.scenarioEditorDetails.CivDefault_Legacy;
        sLegacyRandom = "" + MapScenarios.scenarioEditorDetails.CivDefault_LegacyRandom;
        sManpower = "" + MapScenarios.scenarioEditorDetails.CivDefault_ManpowerPercentage;
        sProvinceDefault_Population = "" + MapScenarios.scenarioEditorDetails.ProvinceDefault_Population;
        sProvinceDefault_Economy = "" + MapScenarios.scenarioEditorDetails.ProvinceDefault_Economy;
        sProvinceDefault_TaxEfficiency = "" + MapScenarios.scenarioEditorDetails.ProvinceDefault_TaxEfficiency;
        sProvinceDefault_Manpower = "" + MapScenarios.scenarioEditorDetails.ProvinceDefault_Manpower;
        int i7 = i * 2;
        arrayList.add(new AnonymousClass1(null, 1, -1, i, i5, ((CFG.LEFT_MENU_WIDTH2 - i7) - CFG.PADDING) / 2, true));
        arrayList.add(new AnonymousClass2(null, 1, -1, CFG.PADDING + i + (((CFG.LEFT_MENU_WIDTH2 - i7) - CFG.PADDING) / 2), i5, ((CFG.LEFT_MENU_WIDTH2 - i7) - CFG.PADDING) / 2, true));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + i5 + i5;
        arrayList.add(new AnonymousClass3(null, 1, i6, i, height, CFG.LEFT_MENU_WIDTH2 - i7, true));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass4(null, 1, i6, i, height2, CFG.LEFT_MENU_WIDTH2 - i7, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass5(null, 1, i6, i, height3, CFG.LEFT_MENU_WIDTH2 - i7, true));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass6(null, 1, i6, i, height4, CFG.LEFT_MENU_WIDTH2 - i7, true));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass7("<<", 1, -1, i, height5, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass8(null, 1, i6, i + CFG.BUTTON_WIDTH, height5, (CFG.LEFT_MENU_WIDTH2 - i7) - (CFG.BUTTON_WIDTH * 2), true));
        arrayList.add(new AnonymousClass9(">>", 1, -1, (CFG.LEFT_MENU_WIDTH2 - i) - CFG.BUTTON_WIDTH, height5, CFG.BUTTON_WIDTH, true));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass10(null, 1, i6, i, height6, CFG.LEFT_MENU_WIDTH2 - i7, true));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass11(Game.lang.get("UnlockedTechnologies"), Images.technology, i, height7, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass12(Game.lang.get("Provinces") + ": " + Game.lang.get("Population") + ": ", Images.population, i, height8, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass13(Game.lang.get("Civilizations") + ": " + Game.lang.get("Population"), Images.population, i, height9, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass14(Game.lang.get("Armies"), Images.manpower, i, height10, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass15(Game.lang.get("Gold") + ": " + Game.lang.get("Default") + ": ", Images.gold, i, height11, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height12 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass16(Game.lang.get("Gold") + ": " + Game.lang.get("Random") + ": ", Images.gold, i, height12, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height13 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass17(Game.lang.get("Legacy") + ": " + Game.lang.get("Default") + ": ", Images.legacy, i, height13, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass18(Game.lang.get("Legacy") + ": " + Game.lang.get("Random") + ": ", Images.legacy, i, height14, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        StringBuilder sbAppend = new StringBuilder().append(Game.lang.get("Civilizations")).append(": ");
        LanguageManager languageManager = Game.lang;
        String str = cIUGJCqyPXfp.CNB;
        arrayList.add(new AnonymousClass19(sbAppend.append(languageManager.get(str)).append(": ").toString(), Images.manpower, i, height15, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int i8 = i5 * 2;
        int height16 = height15 + arrayList.get(arrayList.size() - 1).getHeight() + i8;
        arrayList.add(new AnonymousClass20(Game.lang.get("Provinces") + ": " + Game.lang.get("Economy") + ": ", Game_Calendar.IMG_ECONOMY, i, height16, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass21(Game.lang.get("Provinces") + ": " + Game.lang.get("TaxEfficiency") + ": ", Images.tax, i, height17, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height18 = height17 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass22(Game.lang.get("Provinces") + ": " + Game.lang.get(str) + ": ", Images.manpower, i, height18, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight() + i8;
        arrayList.add(new AnonymousClass23(Game.lang.get("Civilizations") + ": " + Game.lang.get("Economy"), Game_Calendar.IMG_ECONOMY, i, height19, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height20 = height19 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass24(Game.lang.get("Civilizations") + ": " + Game.lang.get("TaxEfficiency"), Images.tax, i, height20, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height21 = height20 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass25(Game.lang.get("Civilizations") + ": " + Game.lang.get(str), Images.manpower, i, height21, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height22 = height21 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass26(Game.lang.get("Civilizations") + ": " + Game.lang.get("Gold"), Images.gold, i, height22, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height23 = height22 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass27(Game.lang.get("Civilizations") + ": " + Game.lang.get("Legacy"), Game_Calendar.IMG_ECONOMY, i, height23, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height24 = height23 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass28(Game.lang.get("Civilizations") + ": " + Game.lang.get("AIAggressiveness"), Images.ai, i, height24, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height25 = height24 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass29(Game.lang.get("Civilizations") + ": " + Game.lang.get("AtomicBombs"), Images.nuke, i, height25, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height26 = height25 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass30(Game.lang.get("Civilizations") + ": " + Game.lang.get("Government"), Images.government, i, height26, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height27 = height26 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass31(Game.lang.get("Provinces") + ": " + Game.lang.get("Buildings"), Images.buildings, i, height27, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height28 = height27 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass32(Game.lang.get("Provinces") + ": " + Game.lang.get("Cores"), Images.core, i, height28, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height29 = height28 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass33(Game.lang.get("Provinces") + ": " + Game.lang.get("Religion"), Images.religion, i, height29, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height30 = height29 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass34(Game.lang.get("Diplomacy") + ": " + Game.lang.get("CreateAlliance"), Images.hre, i, height30, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height31 = height30 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass35(Game.lang.get("Diplomacy") + ": " + Game.lang.get("Relations"), Images.relations, i, height31, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height32 = height31 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass36(Game.lang.get("Diplomacy") + ": " + Game.lang.get("Alliances"), Images.alliance, i, height32, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height33 = height32 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass37(Game.lang.get("Diplomacy") + ": " + Game.lang.get("DefensivePacts"), Images.defensivePact, i, height33, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height34 = height33 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass38(Game.lang.get("Diplomacy") + ": " + Game.lang.get("NonAggressionPacts"), Images.nonAggression, i, height34, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height35 = height34 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass39(Game.lang.get("Diplomacy") + ": " + Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i, height35, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height36 = height35 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass40(Game.lang.get("Diplomacy") + ": " + Game.lang.get("MilitaryAccess"), Images.militaryAccess, i, height36, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height37 = height36 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass41(Game.lang.get("Diplomacy") + ": " + Game.lang.get("Truces"), Images.truce, i, height37, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height38 = height37 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass42(Game.lang.get("Diplomacy") + ": " + Game.lang.get(Game_Ages.getVassals()), Images.vassal, i, height38, CFG.LEFT_MENU_WIDTH2 - i7, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        initMenu(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH2, Math.min(height38 + arrayList.get(arrayList.size() - 1).getHeight() + i5, (CFG.GAME_HEIGHT - i2) - (i4 * 2)), arrayList, true, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("ScenarioSettings"));
    }
}
