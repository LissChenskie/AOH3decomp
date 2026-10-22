package aoc.kingdoms.lukasz.menusInGame;

import androidx.arch.core.ht.qIuEvFbUtcea;
import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.army.ArmyDivision;
import aoc.kingdoms.lukasz.map.plague.KMTV.fTNtCctcBZcqKK;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsBudget;
import aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Flag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Image;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2_TextLR;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government;
import aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioAlliancesList;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDeclareWarList;
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
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Sandbox extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonStatsBudget {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince < 0) {
                Game.menuManager.addToast_Error(Game.lang.get("SelectProvince"), Images.provinces);
            } else if (Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
                InGame_Sandbox.setPlayerCiv(Game.getProvince(Game.iActiveProvince).getCivID());
            } else {
                Game.menuManager.addToast_Error(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName(), Images.x);
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SelectCivilization"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            if (Game.iActiveProvince < 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SelectProvinces"), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.provinces, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else if (Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName(), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iActiveProvince).getCivID(), CFG.PADDING, 0));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.v, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName(), Colors.HOVER_GOLD));
                arrayList2.add(new MenuElement_HoverElement_Type_Flag(Game.getProvince(Game.iActiveProvince).getCivID(), CFG.PADDING, 0));
                arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.x, CFG.PADDING, 0));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass10(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).fManpower += (double) GameValues.sandbox.MANPOWER_1;
            Game.menuManager.addToastPositive(Game.lang.get("Manpower") + ": ", "+" + GameValues.sandbox.MANPOWER_1, Game_Calendar.IMG_MANPOWER);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass11(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).addLegacy(-GameValues.sandbox.LEGACY_1);
            Game.menuManager.addToastNegative(Game.lang.get("Legacy") + qIuEvFbUtcea.KmMaYWMQRX, "-" + GameValues.sandbox.LEGACY_1, Images.legacy);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$12, reason: invalid class name */
    class AnonymousClass12 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass12(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).addLegacy(-GameValues.sandbox.LEGACY_2);
            Game.menuManager.addToastNegative(Game.lang.get("Legacy") + ": ", "-" + GameValues.sandbox.LEGACY_2, Images.legacy);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$13, reason: invalid class name */
    class AnonymousClass13 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass13(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).addLegacy(GameValues.sandbox.LEGACY_2);
            Game.menuManager.addToastPositive(Game.lang.get("Legacy") + ": ", "+" + GameValues.sandbox.LEGACY_2, Images.legacy);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$14, reason: invalid class name */
    class AnonymousClass14 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass14(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).addLegacy(GameValues.sandbox.LEGACY_1);
            Game.menuManager.addToastPositive(Game.lang.get("Legacy") + ": ", MQYGMkZOAcS.fWRkZuH + GameValues.sandbox.LEGACY_1, Images.legacy);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$15, reason: invalid class name */
    class AnonymousClass15 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass15(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).addResearchProgress(-GameValues.sandbox.RESEARCH_1);
            Game.menuManager.addToastNegative(Game.lang.get("Research") + ": ", "-" + GameValues.sandbox.RESEARCH_1, Game_Calendar.IMG_TECHNOLOGY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$16, reason: invalid class name */
    class AnonymousClass16 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass16(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).addResearchProgress(-GameValues.sandbox.RESEARCH_2);
            Game.menuManager.addToastNegative(Game.lang.get("Research") + ": ", "-" + GameValues.sandbox.RESEARCH_2, Game_Calendar.IMG_TECHNOLOGY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$17, reason: invalid class name */
    class AnonymousClass17 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass17(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).addResearchProgress(GameValues.sandbox.RESEARCH_2);
            Game.menuManager.addToastPositive(Game.lang.get("Research") + ": ", "+" + GameValues.sandbox.RESEARCH_2, Game_Calendar.IMG_TECHNOLOGY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$18, reason: invalid class name */
    class AnonymousClass18 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass18(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).addResearchProgress(GameValues.sandbox.RESEARCH_1);
            Game.menuManager.addToastPositive(Game.lang.get("Research") + ": ", "+" + GameValues.sandbox.RESEARCH_1, Game_Calendar.IMG_TECHNOLOGY);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$19, reason: invalid class name */
    class AnonymousClass19 extends ButtonStatsBudget {
        AnonymousClass19(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = true;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
            Game.menuManager.setViewID(View.SCENARIO_ARMIES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Armies"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Game_Calendar.IMG_MANPOWER, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonStatsBudget {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$2$1, reason: invalid class name */
        class AnonymousClass1 extends Game.SimpleTask {
            AnonymousClass1(String str) {
                super(str);
            }

            @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
            public void update() {
                Game.menuManager.rebuildInGame_Right();
                Game.menuManager.rebuildInGame_Messages();
                Game.menuManager.rebuildInGame_Wars();
            }
        }

        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.player.iCivID = 0;
            ProvinceDrawArmy.updateArmyImgID();
            if (Game.FOG_OF_WAR) {
                Game.player.fog.buildFogOfWar(Game.player.iCivID);
            }
            Game.player.clearPinnedArmy();
            Game.player.loadFormableCivs();
            InGame_Court_Government.reloadFlags = true;
            Game.addSimpleTask(new AnonymousClass1(fTNtCctcBZcqKK.VAz));
            Game.menuManager.addToastPositive(Game.lang.get("Civilization") + ": ", Game.getCiv(0).getCivName(), Images.v);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SelectCivilization"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.council, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getCiv(0).getCivName(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_Flag(0, CFG.PADDING, 0));
            arrayList2.add(new MenuElement_HoverElement_Type_Image(Images.v, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$20, reason: invalid class name */
    class AnonymousClass20 extends ButtonStatsBudget {
        AnonymousClass20(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$21, reason: invalid class name */
    class AnonymousClass21 extends ButtonStatsBudget {
        AnonymousClass21(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            CFG.selectMode = true;
            EditorSelectProvinces.selectedProvinces.clear();
            Renderer.drawArmyInProvince = false;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
            ProvinceDrawDetails.updateDrawProvinceDetails_ScenarioReligion();
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
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$22, reason: invalid class name */
    class AnonymousClass22 extends ButtonStatsBudget {
        AnonymousClass22(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.iCreateScenario_AssignProvinces_Civ = 0;
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(View.SCENARIO_ASSIGN_IN_GAME);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AssignProvinces"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$23, reason: invalid class name */
    class AnonymousClass23 extends ButtonStatsBudget {
        AnonymousClass23(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioDeclareWarList.activeCivID = 0;
            ScenarioDeclareWarList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
            Game.menuManager.setViewID(View.SCENARIO_DECLARE_WAR);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DeclareWar"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.war, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$24, reason: invalid class name */
    class AnonymousClass24 extends ButtonStatsBudget {
        AnonymousClass24(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioTrucesList.activeCivID = 0;
            ScenarioTrucesList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$25, reason: invalid class name */
    class AnonymousClass25 extends ButtonStatsBudget {
        AnonymousClass25(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioVassalsList.activeCivID = 0;
            ScenarioVassalsList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$26, reason: invalid class name */
    class AnonymousClass26 extends ButtonStatsBudget {
        AnonymousClass26(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioRelationsList.activeCivID = 0;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$27, reason: invalid class name */
    class AnonymousClass27 extends ButtonStatsBudget {
        AnonymousClass27(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioAlliancesList.activeCivID = 0;
            ScenarioAlliancesList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$28, reason: invalid class name */
    class AnonymousClass28 extends ButtonStatsBudget {
        AnonymousClass28(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioDefensiveList.activeCivID = 0;
            ScenarioDefensiveList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
            Game.menuManager.setViewID(View.SCENARIO_DEFENSIVE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("DefensivePact"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.defensivePact, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$29, reason: invalid class name */
    class AnonymousClass29 extends ButtonStatsBudget {
        AnonymousClass29(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioNonAggressionList.activeCivID = 0;
            ScenarioNonAggressionList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).addGold(-GameValues.sandbox.GOLD_1);
            Game.menuManager.addToastNegative(Game.lang.get("Gold") + ": ", IlLkpaQxs.BhcON + GameValues.sandbox.GOLD_1, Images.gold);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$30, reason: invalid class name */
    class AnonymousClass30 extends ButtonStatsBudget {
        AnonymousClass30(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioGuaranteeList.activeCivID = 0;
            ScenarioGuaranteeList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
            Game.menuManager.setViewID(View.SCENARIO_GUARANTEE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(fTNtCctcBZcqKK.ZwsQXPtSaCokNm), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.guaranteeIndependence, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$31, reason: invalid class name */
    class AnonymousClass31 extends ButtonStatsBudget {
        AnonymousClass31(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioMilitaryAccessList.activeCivID = 0;
            ScenarioMilitaryAccessList.activeCivID2 = 0;
            ScenarioDiplomacy.goBackTo = View.IN_GAME;
            Game.menuManager.setViewID(View.SCENARIO_MILITARY_ACCESS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(CoLRpi.cKxDezgTD), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.militaryAccess, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$32, reason: invalid class name */
    class AnonymousClass32 extends MenuTitleIMG {
        AnonymousClass32(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Sandbox.lTime;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$33, reason: invalid class name */
    class AnonymousClass33 extends Game.SimpleTask {
        AnonymousClass33(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            Game.menuManager.rebuildInGame_Messages();
            Game.menuManager.rebuildInGame_Wars();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).addGold(-GameValues.sandbox.GOLD_2);
            Game.menuManager.addToastNegative(Game.lang.get("Gold") + ": ", "-" + GameValues.sandbox.GOLD_2, Images.gold);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).fGold += GameValues.sandbox.GOLD_2;
            Game.menuManager.addToastPositive(Game.lang.get("Gold") + SwmJtrccN.sRIMPvjZZEPD, "+" + GameValues.sandbox.GOLD_2, Images.gold);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass6(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).fGold += GameValues.sandbox.GOLD_1;
            Game.menuManager.addToastPositive(Game.lang.get("Gold") + ": ", "+" + GameValues.sandbox.GOLD_1, Images.gold);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass7(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).setManpower(Game.getCiv(Game.player.iCivID).fManpower - ((double) GameValues.sandbox.MANPOWER_1));
            Game.menuManager.addToastNegative(Game.lang.get(uiwPYaNhJS.uEoJEiiiziITWFH) + LBhZogys.jsKQikFqPFZeqC, "-" + GameValues.sandbox.MANPOWER_1, Game_Calendar.IMG_MANPOWER);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass8(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).setManpower(Game.getCiv(Game.player.iCivID).fManpower - ((double) GameValues.sandbox.MANPOWER_2));
            Game.menuManager.addToastNegative(Game.lang.get("Manpower") + ": ", "-" + GameValues.sandbox.MANPOWER_2, Game_Calendar.IMG_MANPOWER);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_NEGATIVE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Sandbox$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonStatsRectIMG_Bonuses {
        AnonymousClass9(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.getCiv(Game.player.iCivID).fManpower += (double) GameValues.sandbox.MANPOWER_2;
            Game.menuManager.addToastPositive(Game.lang.get("Manpower") + ": ", "+" + GameValues.sandbox.MANPOWER_2, Game_Calendar.IMG_MANPOWER);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonStatsRectIMG_Bonuses
        public Color getColorBonus() {
            return Colors.COLOR_TEXT_MODIFIER_POSITIVE;
        }
    }

    public InGame_Sandbox() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.title500).getWidth();
        int i2 = CFG.BUTTON_WIDTH;
        int i3 = Renderer.boxBGExtraY;
        int i4 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Player"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        int i5 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Player") + ": " + Game.lang.get("SelectCivilization"), Images.council, i, height2, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        if (Game.SPECTATOR_MODE) {
            arrayList.add(new AnonymousClass2(Game.lang.get("Player") + ": " + Game.lang.get("Neutral"), Images.council, i, height3, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
            height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Civilization"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height3, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int width2 = ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 2);
        int i6 = CFG.BUTTON_HEIGHT4;
        int i7 = (i5 - (CFG.PADDING * 3)) / 4;
        arrayList.add(new AnonymousClass3("", "-" + GameValues.sandbox.GOLD_1, Images.gold, i, height4, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass4("", "-" + GameValues.sandbox.GOLD_2, Images.gold, i + CFG.PADDING + i7, height4, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass5("", "+" + GameValues.sandbox.GOLD_2, Images.gold, i + ((CFG.PADDING + i7) * 2), height4, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass6("", "+" + GameValues.sandbox.GOLD_1, Images.gold, i + ((CFG.PADDING + i7) * 3), height4, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass7("", "-" + GameValues.sandbox.MANPOWER_1, Game_Calendar.IMG_MANPOWER, i, height5, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass8("", "-" + GameValues.sandbox.MANPOWER_2, Game_Calendar.IMG_MANPOWER, i + CFG.PADDING + i7, height5, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass9(gpVDKipRURuzw.weZSvK, "+" + GameValues.sandbox.MANPOWER_2, Game_Calendar.IMG_MANPOWER, i + ((CFG.PADDING + i7) * 2), height5, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass10("", "+" + GameValues.sandbox.MANPOWER_1, Game_Calendar.IMG_MANPOWER, i + ((CFG.PADDING + i7) * 3), height5, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass11("", "-" + GameValues.sandbox.LEGACY_1, Images.legacy, i, height6, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass12("", "-" + GameValues.sandbox.LEGACY_2, Images.legacy, i + CFG.PADDING + i7, height6, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass13("", "+" + GameValues.sandbox.LEGACY_2, Images.legacy, i + ((CFG.PADDING + i7) * 2), height6, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass14("", "+" + GameValues.sandbox.LEGACY_1, Images.legacy, i + ((CFG.PADDING + i7) * 3), height6, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass15("", "-" + GameValues.sandbox.RESEARCH_1, Game_Calendar.IMG_TECHNOLOGY, i, height7, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass16("", "-" + GameValues.sandbox.RESEARCH_2, Game_Calendar.IMG_TECHNOLOGY, i + CFG.PADDING + i7, height7, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass17("", "+" + GameValues.sandbox.RESEARCH_2, Game_Calendar.IMG_TECHNOLOGY, i + ((CFG.PADDING + i7) * 2), height7, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        arrayList.add(new AnonymousClass18("", "+" + GameValues.sandbox.RESEARCH_1, Game_Calendar.IMG_TECHNOLOGY, i + ((CFG.PADDING + i7) * 3), height7, i7, i6, width2, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Provinces"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height8, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass19(Game.lang.get("Armies"), Game_Calendar.IMG_MANPOWER, i, height9, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass20(Game.lang.get("Buildings"), Images.buildings, i, height10, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass21(Game.lang.get("Religion"), Images.religion, i, height11, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height12 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass22(Game.lang.get("AssignProvinces"), Images.provinces, i, height12, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height13 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2_TextLR(Game.lang.get("Diplomacy"), CFG.BUTTON_WIDTH / 4, Images.boxTitleBORDERWIDTH, height13, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 4), ""));
        int height14 = height13 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass23(Game.lang.get("DeclareWar"), Images.war, i, height14, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height15 = height14 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass24(Game.lang.get("Truces"), Images.truce, i, height15, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height16 = height15 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass25(Game.lang.get(Game_Ages.getVassals()), Images.vassal, i, height16, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height17 = height16 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass26(Game.lang.get("Relations"), Images.relations, i, height17, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height18 = height17 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass27(Game.lang.get(ATsAGKCnv.EDdafAXJDJPYn), Images.alliance, i, height18, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height19 = height18 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass28(Game.lang.get("DefensivePacts"), Images.defensivePact, i, height19, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height20 = height19 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass29(Game.lang.get("NonAggressionPacts"), Images.nonAggression, i, height20, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height21 = height20 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass30(Game.lang.get("GuaranteeIndependence"), Images.guaranteeIndependence, i, height21, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height22 = height21 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass31(Game.lang.get("MilitaryAccess"), Images.militaryAccess, i, height22, i5, CFG.BUTTON_HEIGHT4, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true));
        int height23 = height22 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int iMin = Math.min(height23, CFG.GAME_HEIGHT - (height * 2));
        arrayList.add(new Empty(0, 0, width, Math.max(height23, iMin)));
        initMenu(new AnonymousClass32(Game.lang.get("Sandbox"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), height, width, iMin, arrayList, false, true);
        this.drawScrollPositionAlways = false;
    }

    public static void setPlayerCiv(int i) {
        Game.player.iCivID = i;
        ProvinceDrawArmy.updateArmyImgID();
        if (Game.FOG_OF_WAR) {
            Game.player.fog.buildFogOfWar(Game.player.iCivID);
        }
        Game.player.clearPinnedArmy();
        Game.player.loadFormableCivs();
        InGame_Court_Government.reloadFlags = true;
        if (Game.FOG_OF_WAR) {
            for (int i2 = 0; i2 < Game.getCiv(Game.player.iCivID).iArmyPositionSize; i2++) {
                try {
                    ArmyDivision army = Game.getProvince(Game.getCiv(Game.player.iCivID).getArmyPosition(i2)).getArmy(Game.getCiv(Game.player.iCivID).getArmyPositionKey(i2));
                    if (army != null) {
                        army.updateArmy(false);
                    }
                } catch (Exception unused) {
                }
            }
        }
        Game.addSimpleTask(new AnonymousClass33("rebuildSelectCivilization"));
        Game.menuManager.addToastPositive(Game.lang.get("Civilization") + ": ", Game.getCiv(Game.player.iCivID).getCivName(), Images.v);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i2 - CFG.BUTTON_HEIGHT) + ((int) (CFG.BUTTON_HEIGHT * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i2;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i3, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i, getPosY() + i3, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.civInfoOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.civInfoOver).getWidth() / 2)) + i, getPosY() + i3, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.civInfoOver).getHeight()));
        super.draw(spriteBatch, i, i3, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
