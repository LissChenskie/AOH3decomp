package aoc.kingdoms.lukasz.jakowski;

import androidx.arch.core.ht.qIuEvFbUtcea;
import aoc.kingdoms.lukasz.jakowski.FBO.FBOProvinceNames;
import aoc.kingdoms.lukasz.jakowski.FBO.idYW.HjHDSSkYG;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.map.map.MapScenarios;
import aoc.kingdoms.lukasz.map.province.ProvinceNamesManager;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.ColorPicker;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menusEditor.CreateCiv;
import aoc.kingdoms.lukasz.menusEditor.GameCivs;
import aoc.kingdoms.lukasz.menusEditor.GameCivsEdit;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Provinces;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldCivs;
import aoc.kingdoms.lukasz.menusInGame.Court.World.InGame_Court_WorldSearch;
import aoc.kingdoms.lukasz.menusInGame.InGame_Console;
import aoc.kingdoms.lukasz.menusInGame.InGame_Encyclopedia;
import aoc.kingdoms.lukasz.menusInGame.InGame_Ranking;
import aoc.kingdoms.lukasz.menusInGame.InGame_SaveGame;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioPopulation_List;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioSettings;
import aoc.kingdoms.lukasz.menusScenarioEditor.Scenario_Calendar;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.utils.compression.spWT.QefTqRjwAJmEDy;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Keyboard {
    public static int VERTICAL_LINE_UPDATE_TIME = 375;
    public static Keyboard_Action keyboardAction = null;
    public static String keyboardMessage = "";
    public static boolean keyboardMode;
    public static boolean keyboardVerticalLine;
    public static long verticalLineTime = CFG.currentTimeMillis;
    public static KeyboardActionType keyboardActionType = KeyboardActionType.NONE;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$1, reason: invalid class name */
    class AnonymousClass1 implements Keyboard_Action {
        AnonymousClass1() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            GameCivs.sSearch = Keyboard.keyboardMessage;
            GameCivs.chosen_AlphabetCharachter = "";
            Game.menuManager.rebuildEditorGameCivs();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            GameCivs.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildEditorGameCivs();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            GameCivs.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildEditorGameCivs();
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$10, reason: invalid class name */
    class AnonymousClass10 implements Keyboard_Action {
        AnonymousClass10() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioCreateAllianceList.sMessageFirstTier = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioCreateAllianceList.sMessageFirstTier = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioCreateAllianceList.sMessageFirstTier = Keyboard.keyboardMessage;
            ScenarioCreateAllianceList.editAlliance.Name_FirstTier = ScenarioCreateAllianceList.sMessageFirstTier;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$11, reason: invalid class name */
    class AnonymousClass11 implements Keyboard_Action {
        AnonymousClass11() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioCreateAllianceList.sMessageFlag = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioCreateAllianceList.sMessageFlag = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioCreateAllianceList.sMessageFlag = Keyboard.keyboardMessage;
            ScenarioCreateAllianceList.editAlliance.FlagTag = ScenarioCreateAllianceList.sMessageFlag;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$12, reason: invalid class name */
    class AnonymousClass12 implements Keyboard_Action {
        AnonymousClass12() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioCreateAllianceList.sMessageLeader = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioCreateAllianceList.sMessageLeader = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioCreateAllianceList.sMessageLeader = Keyboard.keyboardMessage;
            ScenarioCreateAllianceList.editAlliance.Name_Leader = ScenarioCreateAllianceList.sMessageLeader;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$13, reason: invalid class name */
    class AnonymousClass13 implements Keyboard_Action {
        AnonymousClass13() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioCreateAllianceList.sMessageName = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioCreateAllianceList.sMessageName = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioCreateAllianceList.sMessageName = Keyboard.keyboardMessage;
            ScenarioCreateAllianceList.editAlliance.Name_Alliance = ScenarioCreateAllianceList.sMessageName;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$14, reason: invalid class name */
    class AnonymousClass14 implements Keyboard_Action {
        AnonymousClass14() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            InGame_Console.sMessage = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            InGame_Console.sMessage = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            InGame_Console.sMessage = Keyboard.keyboardMessage;
            InGame_Console.execute(InGame_Console.sMessage);
            InGame_Console.sMessage = "";
            Game.menuManager.rebuildInGame_Console();
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$15, reason: invalid class name */
    class AnonymousClass15 implements Keyboard_Action {
        AnonymousClass15() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            InGame_SaveGame.sSaveName = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            InGame_SaveGame.sSaveName = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            InGame_SaveGame.sSaveName = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$16, reason: invalid class name */
    class AnonymousClass16 implements Keyboard_Action {
        AnonymousClass16() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            Scenario_Calendar.sYear = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            Scenario_Calendar.sYear = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            Scenario_Calendar.sYear = Keyboard.keyboardMessage;
            try {
                Game_Calendar.currentYear = Integer.parseInt(Scenario_Calendar.sYear);
            } catch (Exception unused) {
                Scenario_Calendar.sYear = "" + Game_Calendar.currentYear;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$17, reason: invalid class name */
    class AnonymousClass17 implements Keyboard_Action {
        AnonymousClass17() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sGold = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sGold = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sGold = Keyboard.keyboardMessage;
            try {
                MapScenarios.scenarioEditorDetails.CivDefault_Gold = Integer.parseInt(ScenarioSettings.sGold);
            } catch (Exception unused) {
                ScenarioSettings.sGold = "" + MapScenarios.scenarioEditorDetails.CivDefault_Gold;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$18, reason: invalid class name */
    class AnonymousClass18 implements Keyboard_Action {
        AnonymousClass18() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sGoldRandom = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sGoldRandom = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sGoldRandom = Keyboard.keyboardMessage;
            try {
                MapScenarios.scenarioEditorDetails.CivDefault_GoldRandom = Integer.parseInt(ScenarioSettings.sGoldRandom);
            } catch (Exception unused) {
                ScenarioSettings.sGoldRandom = "" + MapScenarios.scenarioEditorDetails.CivDefault_GoldRandom;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$19, reason: invalid class name */
    class AnonymousClass19 implements Keyboard_Action {
        AnonymousClass19() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sLegacy = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sLegacy = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sLegacy = Keyboard.keyboardMessage;
            try {
                MapScenarios.scenarioEditorDetails.CivDefault_Legacy = Integer.parseInt(ScenarioSettings.sLegacy);
            } catch (Exception unused) {
                ScenarioSettings.sLegacy = "" + MapScenarios.scenarioEditorDetails.CivDefault_Legacy;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$2, reason: invalid class name */
    class AnonymousClass2 implements Keyboard_Action {
        AnonymousClass2() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            InGame_Court_WorldCivs.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildInGame_CourtSearchCivs();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = fiRhHJntP.hiLxECO;
            }
            InGame_Court_WorldCivs.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildInGame_CourtSearchCivs();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            InGame_Court_WorldCivs.sSearch = Keyboard.keyboardMessage;
            if (Game.menuManager.getVisibleInGame_Court()) {
                Game.menuManager.rebuildInGame_CourtSearchCivs();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$20, reason: invalid class name */
    class AnonymousClass20 implements Keyboard_Action {
        AnonymousClass20() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sLegacyRandom = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = HjHDSSkYG.iVPlGVR;
            }
            ScenarioSettings.sLegacyRandom = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sLegacyRandom = Keyboard.keyboardMessage;
            try {
                MapScenarios.scenarioEditorDetails.CivDefault_LegacyRandom = Integer.parseInt(ScenarioSettings.sLegacyRandom);
            } catch (Exception unused) {
                ScenarioSettings.sLegacyRandom = "" + MapScenarios.scenarioEditorDetails.CivDefault_LegacyRandom;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$21, reason: invalid class name */
    class AnonymousClass21 implements Keyboard_Action {
        AnonymousClass21() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sManpower = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sManpower = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sManpower = Keyboard.keyboardMessage;
            try {
                MapScenarios.scenarioEditorDetails.CivDefault_ManpowerPercentage = Integer.parseInt(ScenarioSettings.sManpower);
            } catch (Exception unused) {
                ScenarioSettings.sManpower = "" + MapScenarios.scenarioEditorDetails.CivDefault_ManpowerPercentage;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$22, reason: invalid class name */
    class AnonymousClass22 implements Keyboard_Action {
        AnonymousClass22() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Nukes = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Nukes = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Nukes = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
                ScenarioPopulation_List.sPopulation = "0";
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$23, reason: invalid class name */
    class AnonymousClass23 implements Keyboard_Action {
        AnonymousClass23() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Legacy = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Legacy = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Legacy = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
                ScenarioPopulation_List.sPopulation = qIuEvFbUtcea.JKJLHNySVfwt;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$24, reason: invalid class name */
    class AnonymousClass24 implements Keyboard_Action {
        AnonymousClass24() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.v = Integer.parseInt(ScenarioPopulation_List.sPopulation);
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.v = Integer.parseInt(ScenarioPopulation_List.sPopulation);
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.v = Integer.parseInt(ScenarioPopulation_List.sPopulation);
            } catch (Exception unused) {
                ScenarioPopulation_List.sPopulation = "0";
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$25, reason: invalid class name */
    class AnonymousClass25 implements Keyboard_Action {
        AnonymousClass25() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Gold = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Gold = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Gold = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
                ScenarioPopulation_List.sPopulation = "0";
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$26, reason: invalid class name */
    class AnonymousClass26 implements Keyboard_Action {
        AnonymousClass26() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Manpower = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Manpower = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Manpower = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
                ScenarioPopulation_List.sPopulation = "0";
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$27, reason: invalid class name */
    class AnonymousClass27 implements Keyboard_Action {
        AnonymousClass27() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.TaxEff = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.TaxEff = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.TaxEff = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
                ScenarioPopulation_List.sPopulation = "0";
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$28, reason: invalid class name */
    class AnonymousClass28 implements Keyboard_Action {
        AnonymousClass28() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Economy = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Economy = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Economy = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
                ScenarioPopulation_List.sPopulation = "0";
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$29, reason: invalid class name */
    class AnonymousClass29 implements Keyboard_Action {
        AnonymousClass29() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Population = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Population = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioPopulation_List.sPopulation = Keyboard.keyboardMessage;
            try {
                Game.getCiv(ScenarioPopulation_List.iCivID).scenarioEditorData.Population = Math.max(0, Integer.parseInt(ScenarioPopulation_List.sPopulation));
            } catch (Exception unused) {
                ScenarioPopulation_List.sPopulation = "0";
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$3, reason: invalid class name */
    class AnonymousClass3 implements Keyboard_Action {
        AnonymousClass3() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            InGame_Encyclopedia.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildInGame_Encyclopedia();
            InGame_Encyclopedia.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            InGame_Encyclopedia.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildInGame_Encyclopedia();
            InGame_Encyclopedia.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            InGame_Court_WorldSearch.sSearch = Keyboard.keyboardMessage;
            if (Game.menuManager.getVisibleInGame_PopUp() && MenuManager.IN_GAME_POP_UP_MENU_ID == 15) {
                InGame_Encyclopedia.sSearch = Keyboard.keyboardMessage;
                Game.menuManager.rebuildInGame_Encyclopedia();
                InGame_Encyclopedia.lTime = 0L;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$30, reason: invalid class name */
    class AnonymousClass30 implements Keyboard_Action {
        AnonymousClass30() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sProvinceDefault_Population = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sProvinceDefault_Population = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sProvinceDefault_Population = Keyboard.keyboardMessage;
            try {
                MapScenarios.scenarioEditorDetails.ProvinceDefault_Population = Integer.parseInt(ScenarioSettings.sProvinceDefault_Population);
            } catch (Exception unused) {
                ScenarioSettings.sProvinceDefault_Population = "" + MapScenarios.scenarioEditorDetails.ProvinceDefault_Population;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$31, reason: invalid class name */
    class AnonymousClass31 implements Keyboard_Action {
        AnonymousClass31() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sProvinceDefault_Economy = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sProvinceDefault_Economy = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sProvinceDefault_Economy = Keyboard.keyboardMessage;
            try {
                MapScenarios.scenarioEditorDetails.ProvinceDefault_Economy = Integer.parseInt(ScenarioSettings.sProvinceDefault_Economy);
            } catch (Exception unused) {
                ScenarioSettings.sProvinceDefault_Economy = "" + MapScenarios.scenarioEditorDetails.ProvinceDefault_Economy;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$32, reason: invalid class name */
    class AnonymousClass32 implements Keyboard_Action {
        AnonymousClass32() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sProvinceDefault_TaxEfficiency = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sProvinceDefault_TaxEfficiency = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sProvinceDefault_TaxEfficiency = Keyboard.keyboardMessage;
            try {
                MapScenarios.scenarioEditorDetails.ProvinceDefault_TaxEfficiency = Integer.parseInt(ScenarioSettings.sProvinceDefault_TaxEfficiency);
            } catch (Exception unused) {
                ScenarioSettings.sProvinceDefault_TaxEfficiency = "" + MapScenarios.scenarioEditorDetails.ProvinceDefault_TaxEfficiency;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$33, reason: invalid class name */
    class AnonymousClass33 implements Keyboard_Action {
        AnonymousClass33() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sProvinceDefault_Manpower = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sProvinceDefault_Manpower = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sProvinceDefault_Manpower = Keyboard.keyboardMessage;
            try {
                MapScenarios.scenarioEditorDetails.ProvinceDefault_Manpower = Integer.parseInt(ScenarioSettings.sProvinceDefault_Manpower);
            } catch (Exception unused) {
                ScenarioSettings.sProvinceDefault_Manpower = "" + MapScenarios.scenarioEditorDetails.ProvinceDefault_Manpower;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$34, reason: invalid class name */
    class AnonymousClass34 implements Keyboard_Action {
        AnonymousClass34() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            CreateCiv.nCiv.Tag = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            CreateCiv.nCiv.Tag = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            CreateCiv.nCiv.Tag = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$35, reason: invalid class name */
    class AnonymousClass35 implements Keyboard_Action {
        AnonymousClass35() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            GameCivsEdit.nCiv.Tag = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            GameCivsEdit.nCiv.Tag = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            GameCivsEdit.nCiv.Tag = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$36, reason: invalid class name */
    class AnonymousClass36 implements Keyboard_Action {
        AnonymousClass36() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            GameCivsEdit.nCiv.Name = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            GameCivsEdit.nCiv.Name = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            GameCivsEdit.nCiv.Name = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$37, reason: invalid class name */
    class AnonymousClass37 implements Keyboard_Action {
        AnonymousClass37() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            CreateCiv.nCiv.Name = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            CreateCiv.nCiv.Name = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            CreateCiv.nCiv.Name = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$38, reason: invalid class name */
    class AnonymousClass38 implements Keyboard_Action {
        AnonymousClass38() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            GameCivsEdit.nCiv.Wiki = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            GameCivsEdit.nCiv.Wiki = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            GameCivsEdit.nCiv.Wiki = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$39, reason: invalid class name */
    class AnonymousClass39 implements Keyboard_Action {
        AnonymousClass39() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            CreateCiv.nCiv.Wiki = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            CreateCiv.nCiv.Wiki = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            CreateCiv.nCiv.Wiki = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$4, reason: invalid class name */
    class AnonymousClass4 implements Keyboard_Action {
        AnonymousClass4() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            InGame_Ranking.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            InGame_Ranking.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            InGame_Ranking.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
            InGame_Ranking.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            InGame_Court_WorldSearch.sSearch = Keyboard.keyboardMessage;
            if (Game.menuManager.getVisibleInGame_CurrentSituation_Ranking()) {
                InGame_Ranking.sSearch = Keyboard.keyboardMessage;
                Game.menuManager.rebuildInGame_CurrentSituation_Ranking();
                InGame_Ranking.lTime = 0L;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$40, reason: invalid class name */
    class AnonymousClass40 implements Keyboard_Action {
        AnonymousClass40() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            GameCivs.sSearch = Keyboard.keyboardMessage;
            GameCivs.chosen_AlphabetCharachter = "";
            Game.menuManager.rebuildScenarioCivilizationsList();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            GameCivs.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildScenarioCivilizationsList();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            GameCivs.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildScenarioCivilizationsList();
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$41, reason: invalid class name */
    class AnonymousClass41 implements Keyboard_Action {
        AnonymousClass41() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            GameCivs.sSearch = Keyboard.keyboardMessage;
            GameCivs.chosen_AlphabetCharachter = "";
            Game.menuManager.rebuildScenarioCoresList();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            GameCivs.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildScenarioCoresList();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            GameCivs.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildScenarioCoresList();
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$42, reason: invalid class name */
    class AnonymousClass42 implements Keyboard_Action {
        AnonymousClass42() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            GameCivs.sSearch = Keyboard.keyboardMessage;
            GameCivs.chosen_AlphabetCharachter = "";
            Game.menuManager.rebuildEditorCivSelect();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            GameCivs.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildEditorCivSelect();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            GameCivs.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildEditorCivSelect();
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$43, reason: invalid class name */
    class AnonymousClass43 implements Keyboard_Action {
        AnonymousClass43() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sName = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sName = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sName = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$44, reason: invalid class name */
    class AnonymousClass44 implements Keyboard_Action {
        AnonymousClass44() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            Game.getCiv(InGame_Court.iActiveCivID).ruler.Name = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            Game.getCiv(InGame_Court.iActiveCivID).ruler.Name = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            Game.getCiv(InGame_Court.iActiveCivID).ruler.Name = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$45, reason: invalid class name */
    class AnonymousClass45 implements Keyboard_Action {
        AnonymousClass45() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorAdministration.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$46, reason: invalid class name */
    class AnonymousClass46 implements Keyboard_Action {
        AnonymousClass46() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorEconomy.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$47, reason: invalid class name */
    class AnonymousClass47 implements Keyboard_Action {
        AnonymousClass47() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorTechnology.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$48, reason: invalid class name */
    class AnonymousClass48 implements Keyboard_Action {
        AnonymousClass48() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            try {
                Game.getCiv(InGame_Court.iActiveCivID).advisorMilitary.sName = Keyboard.keyboardMessage;
            } catch (Exception unused) {
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$49, reason: invalid class name */
    class AnonymousClass49 implements Keyboard_Action {
        AnonymousClass49() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sAuthor = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sAuthor = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sAuthor = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$5, reason: invalid class name */
    class AnonymousClass5 implements Keyboard_Action {
        AnonymousClass5() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            InGame_Court_WorldSearch.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            InGame_Court_WorldSearch.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildInGame_CourtSearch();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            InGame_Court_WorldSearch.sSearch = Keyboard.keyboardMessage;
            if (Game.menuManager.getVisibleInGame_Court()) {
                Game.menuManager.rebuildInGame_CourtSearch();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$50, reason: invalid class name */
    class AnonymousClass50 implements Keyboard_Action {
        AnonymousClass50() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sWiki = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioSettings.sWiki = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sWiki = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$51, reason: invalid class name */
    class AnonymousClass51 implements Keyboard_Action {
        AnonymousClass51() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioSettings.sTag = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = QefTqRjwAJmEDy.BMeDxQLu;
            }
            ScenarioSettings.sTag = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioSettings.sTag = Keyboard.keyboardMessage;
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$52, reason: invalid class name */
    class AnonymousClass52 implements Keyboard_Action {
        AnonymousClass52() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            String str2 = ATsAGKCnv.QAMHOlKuN;
            try {
                if (str.charAt(0) < '0' || str.charAt(0) > '9') {
                    return;
                }
                if (Keyboard.keyboardMessage.charAt(0) == '0') {
                    Keyboard.keyboardMessage = str;
                } else {
                    Keyboard.keyboardMessage += str;
                }
                try {
                    if (Integer.parseInt(Keyboard.keyboardMessage) > 255) {
                        Keyboard.keyboardMessage = str2;
                    }
                } catch (IllegalArgumentException unused) {
                    Keyboard.keyboardMessage = str2;
                }
                Game.menuManager.getColorPicker();
                int i = ColorPicker.activeRGB;
                if (i == 0) {
                    Game.menuManager.getColorPicker().getActiveColor().r = Integer.parseInt(Keyboard.keyboardMessage) / 255.0f;
                } else if (i == 1) {
                    Game.menuManager.getColorPicker().getActiveColor().g = Integer.parseInt(Keyboard.keyboardMessage) / 255.0f;
                } else if (i == 2) {
                    Game.menuManager.getColorPicker().getActiveColor().b = Integer.parseInt(Keyboard.keyboardMessage) / 255.0f;
                }
                Game.menuManager.getColorPicker().RGBtoHSV((int) (Game.menuManager.getColorPicker().getActiveColor().r * 255.0f), (int) (Game.menuManager.getColorPicker().getActiveColor().g * 255.0f), (int) (Game.menuManager.getColorPicker().getActiveColor().b * 255.0f));
                Game.menuManager.getColorPicker().getColorPickerAction().update();
                Game.menuManager.getColorPicker().updateRGBWidth();
            } catch (IndexOutOfBoundsException unused2) {
            }
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "0";
            }
            Game.menuManager.getColorPicker();
            int i = ColorPicker.activeRGB;
            if (i == 0) {
                Game.menuManager.getColorPicker().getActiveColor().r = Integer.parseInt(Keyboard.keyboardMessage) / 255.0f;
            } else if (i == 1) {
                Game.menuManager.getColorPicker().getActiveColor().g = Integer.parseInt(Keyboard.keyboardMessage) / 255.0f;
            } else if (i == 2) {
                Game.menuManager.getColorPicker().getActiveColor().b = Integer.parseInt(Keyboard.keyboardMessage) / 255.0f;
            }
            Game.menuManager.getColorPicker().RGBtoHSV((int) (Game.menuManager.getColorPicker().getActiveColor().r * 255.0f), (int) (Game.menuManager.getColorPicker().getActiveColor().g * 255.0f), (int) (Game.menuManager.getColorPicker().getActiveColor().b * 255.0f));
            Game.menuManager.getColorPicker().getColorPickerAction().update();
            Game.menuManager.getColorPicker().updateRGBWidth();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$53, reason: invalid class name */
    class AnonymousClass53 implements Keyboard_Action {
        AnonymousClass53() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$54, reason: invalid class name */
    static /* synthetic */ class AnonymousClass54 {
        static final /* synthetic */ int[] $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType;

        static {
            int[] iArr = new int[KeyboardActionType.values().length];
            $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType = iArr;
            try {
                iArr[KeyboardActionType.SEARCH_GAMECIVS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SEARCH_COURT_ALL_CIVS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SEARCH_ENCYCLOPEDIA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SEARCH_RANKING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SEARCH_COURT_ALL_PROVINCES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.INGAME_RENAME_PROVINCE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.INGAME_RENAME_CIV.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SEARCH_COURT_PROVINCES.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CREATE_ALLIANCE_REST.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CREATE_ALLIANCE_FIRST_TIER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CREATE_ALLIANCE_FLAG.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CREATE_ALLIANCE_LEADER.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CREATE_ALLIANCE_NAME.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.CONSOLE.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SAVE_NAME.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_YEAR.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_GOLD.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_GOLD_RANDOM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_LEGACY.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_LEGACY_RANDOM.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_MANPOWER_PERC.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CIV_NUKES.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CIV_LEGACY.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CIV_AI_AGGRESSIVENESS.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CIV_GOLD.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CIV_MANPOWER.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CIV_TAX_EFFICIENCY.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CIV_ECONOMY.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_CIV_POPULATION.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_PROVINCE_POPULATION.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_PROVINCE_ECONOMY.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_PROVINCE_TAX_EFFICIENCY.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_PROVINCE_MANPOWER.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.CREATE_CIV_EDIT.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.GAMECIVS_EDIT.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.GAMECIVS_EDIT_NAME.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.CREATE_CIV_EDIT_NAME.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.GAMECIVS_EDIT_WIKI.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.CREATE_CIV_EDIT_WIKI.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SEARCH_SCENARIO_CIVS.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SEARCH_SCENARIO_CORES_CIVS.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SEARCH_CIV_SELECT.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_NAME.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.INGAME_RULER_NAME.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.INGAME_ADVISOR_ADMINISTRATIVE_NAME.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.INGAME_ADVISOR_ECONOMIC_NAME.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.INGAME_ADVISOR_INNOVATION_NAME.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.INGAME_ADVISOR_MILITARY_NAME.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_AUTHOR.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_WIKI.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.SCENARIO_TAG.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[KeyboardActionType.COLORPICKER.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$6, reason: invalid class name */
    class AnonymousClass6 implements Keyboard_Action {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$6$1, reason: invalid class name */
        class AnonymousClass1 extends Game.SimpleTask {
            AnonymousClass1(String str, int i) {
                super(str, i);
            }

            @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
            public void update() {
                ProvinceNamesManager.buildProvNameData(this.id, true);
            }
        }

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$6$2, reason: invalid class name */
        class AnonymousClass2 extends Game.SimpleTask {
            AnonymousClass2(String str, int i) {
                super(str, i);
            }

            @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
            public void update() {
                ProvinceNamesManager.buildProvNameData(this.id, true);
            }
        }

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$6$3, reason: invalid class name */
        class AnonymousClass3 extends Game.SimpleTask {
            AnonymousClass3(String str, int i) {
                super(str, i);
            }

            @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
            public void update() {
                ProvinceNamesManager.buildProvNameData(this.id, true);
            }
        }

        AnonymousClass6() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            InGame_ProvinceInfo.renameProvince = Keyboard.keyboardMessage;
            if (InGame_ProvinceInfo.renameProvince.length() > 2) {
                if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCitiesSize() > 0) {
                    Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCity(0).setCityName(InGame_ProvinceInfo.iProvinceID, InGame_ProvinceInfo.renameProvince);
                } else {
                    Game.getProvince(InGame_ProvinceInfo.iProvinceID).setProvinceName(InGame_ProvinceInfo.renameProvince);
                    Game.addSimpleTask(new AnonymousClass1("rebuildProvNameData" + InGame_ProvinceInfo.iProvinceID, InGame_ProvinceInfo.iProvinceID));
                }
            }
            Game.menuManager.getInGame_ProvinceInfo_updateLanguage();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            InGame_ProvinceInfo.renameProvince = Keyboard.keyboardMessage;
            if (InGame_ProvinceInfo.renameProvince.length() > 2) {
                if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCitiesSize() > 0) {
                    Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCity(0).setCityName(InGame_ProvinceInfo.iProvinceID, InGame_ProvinceInfo.renameProvince);
                } else {
                    Game.getProvince(InGame_ProvinceInfo.iProvinceID).setProvinceName(InGame_ProvinceInfo.renameProvince);
                    Game.addSimpleTask(new AnonymousClass2("rebuildProvNameData" + InGame_ProvinceInfo.iProvinceID, InGame_ProvinceInfo.iProvinceID));
                }
            }
            Game.menuManager.getInGame_ProvinceInfo_updateLanguage();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            InGame_ProvinceInfo.renameProvince = Keyboard.keyboardMessage;
            if (InGame_ProvinceInfo.renameProvince.length() > 2) {
                if (Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCitiesSize() > 0) {
                    Game.getProvince(InGame_ProvinceInfo.iProvinceID).getCity(0).setCityName(InGame_ProvinceInfo.iProvinceID, InGame_ProvinceInfo.renameProvince);
                } else {
                    Game.getProvince(InGame_ProvinceInfo.iProvinceID).setProvinceName(InGame_ProvinceInfo.renameProvince);
                    Game.addSimpleTask(new AnonymousClass3("rebuildProvNameData" + InGame_ProvinceInfo.iProvinceID, InGame_ProvinceInfo.iProvinceID));
                }
            }
            FBOProvinceNames.redrawnProvinceNames();
            Game.menuManager.getInGame_ProvinceInfo_updateLanguage();
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$7, reason: invalid class name */
    class AnonymousClass7 implements Keyboard_Action {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$7$1, reason: invalid class name */
        class AnonymousClass1 extends Game.SimpleTask {
            AnonymousClass1(String str, int i) {
                super(str, i);
            }

            @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
            public void update() {
                CivilizationRegionsManager.buildCivilizationsRegions_TextOver(this.id);
            }
        }

        AnonymousClass7() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            InGame_Civ.renameCiv = Keyboard.keyboardMessage;
            if (InGame_Civ.renameCiv.length() > 2) {
                Game.getCiv(InGame_Civ.iActiveCivID).setCivName(InGame_Civ.renameCiv);
            }
            Game.menuManager.getInGame_Civ_updateLanguage();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            InGame_Civ.renameCiv = Keyboard.keyboardMessage;
            if (InGame_Civ.renameCiv.length() > 2) {
                Game.getCiv(InGame_Civ.iActiveCivID).setCivName(InGame_Civ.renameCiv);
            }
            Game.menuManager.getInGame_Civ_updateLanguage();
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            InGame_Civ.renameCiv = Keyboard.keyboardMessage;
            if (InGame_Civ.renameCiv.length() > 2) {
                Game.getCiv(InGame_Civ.iActiveCivID).setCivName(InGame_Civ.renameCiv);
                Renderer.addSimpleTaskCivsNames(new AnonymousClass1("" + InGame_Civ.iActiveCivID, InGame_Civ.iActiveCivID));
            }
            Game.menuManager.getInGame_Civ_updateLanguage();
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$8, reason: invalid class name */
    class AnonymousClass8 implements Keyboard_Action {
        AnonymousClass8() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            InGame_Court_Provinces.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            InGame_Court_Provinces.sSearch = Keyboard.keyboardMessage;
            Game.menuManager.rebuildInGame_CourtProvinces();
            Game.menuManager.setVisibleInGame_Court(true);
            InGame_Court.lTime = 0L;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            InGame_Court_Provinces.sSearch = Keyboard.keyboardMessage;
            if (Game.menuManager.getVisibleInGame_Court()) {
                Game.menuManager.rebuildInGame_CourtProvinces();
                Game.menuManager.setVisibleInGame_Court(true);
                InGame_Court.lTime = 0L;
            }
            Keyboard.this.hideKeyboard();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Keyboard$9, reason: invalid class name */
    class AnonymousClass9 implements Keyboard_Action {
        AnonymousClass9() {
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void actionType(String str) {
            Keyboard.keyboardMessage += str;
            ScenarioCreateAllianceList.sMessageRest = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void delete() {
            if (Keyboard.keyboardMessage.length() > 1) {
                Keyboard.keyboardMessage = Keyboard.keyboardMessage.substring(0, Keyboard.keyboardMessage.length() - 1);
            } else {
                Keyboard.keyboardMessage = "";
            }
            ScenarioCreateAllianceList.sMessageRest = Keyboard.keyboardMessage;
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Keyboard.Keyboard_Action
        public void save() {
            ScenarioCreateAllianceList.sMessageRest = Keyboard.keyboardMessage;
            ScenarioCreateAllianceList.editAlliance.Name_Rest = ScenarioCreateAllianceList.sMessageRest;
            Keyboard.this.hideKeyboard();
        }
    }

    public enum KeyboardActionType {
        NONE,
        SEARCH_GAMECIVS,
        GAMECIVS_EDIT,
        GAMECIVS_EDIT_NAME,
        GAMECIVS_EDIT_WIKI,
        CREATE_CIV_EDIT,
        CREATE_CIV_EDIT_NAME,
        CREATE_CIV_EDIT_WIKI,
        SEARCH_SCENARIO_CIVS,
        SEARCH_SCENARIO_CORES_CIVS,
        SEARCH_CIV_SELECT,
        CONSOLE,
        SAVE_NAME,
        SCENARIO_YEAR,
        SEARCH_COURT_PROVINCES,
        SEARCH_COURT_ALL_PROVINCES,
        SEARCH_COURT_ALL_CIVS,
        SEARCH_ENCYCLOPEDIA,
        SEARCH_RANKING,
        INGAME_RENAME_CIV,
        INGAME_RENAME_PROVINCE,
        INGAME_RULER_NAME,
        INGAME_ADVISOR_ADMINISTRATIVE_NAME,
        INGAME_ADVISOR_ECONOMIC_NAME,
        INGAME_ADVISOR_INNOVATION_NAME,
        INGAME_ADVISOR_MILITARY_NAME,
        SCENARIO_GOLD,
        SCENARIO_GOLD_RANDOM,
        SCENARIO_LEGACY,
        SCENARIO_LEGACY_RANDOM,
        SCENARIO_MANPOWER_PERC,
        SCENARIO_PROVINCE_POPULATION,
        SCENARIO_PROVINCE_ECONOMY,
        SCENARIO_PROVINCE_TAX_EFFICIENCY,
        SCENARIO_PROVINCE_MANPOWER,
        SCENARIO_CIV_POPULATION,
        SCENARIO_CIV_ECONOMY,
        SCENARIO_CIV_TAX_EFFICIENCY,
        SCENARIO_CIV_MANPOWER,
        SCENARIO_CIV_GOLD,
        SCENARIO_CIV_LEGACY,
        SCENARIO_CIV_AI_AGGRESSIVENESS,
        SCENARIO_CIV_NUKES,
        SCENARIO_CREATE_ALLIANCE_NAME,
        SCENARIO_CREATE_ALLIANCE_LEADER,
        SCENARIO_CREATE_ALLIANCE_FIRST_TIER,
        SCENARIO_CREATE_ALLIANCE_REST,
        SCENARIO_CREATE_ALLIANCE_FLAG,
        SCENARIO_NAME,
        SCENARIO_AUTHOR,
        SCENARIO_TAG,
        SCENARIO_WIKI,
        COLORPICKER
    }

    public interface Keyboard_Action {
        void actionType(String str);

        void delete();

        void save();
    }

    public static String getKeyboardVerticalLine() {
        return keyboardVerticalLine ? "|" : "";
    }

    public static void updateKeyboardVerticalLine() {
        if (!keyboardMode || verticalLineTime + ((long) VERTICAL_LINE_UPDATE_TIME) >= CFG.currentTimeMillis) {
            return;
        }
        keyboardVerticalLine = !keyboardVerticalLine;
        verticalLineTime = CFG.currentTimeMillis;
    }

    public final void hideKeyboard() {
        if (keyboardMode) {
            try {
                if (keyboardAction != null && keyboardActionType != KeyboardActionType.NONE) {
                    KeyboardActionType keyboardActionType2 = keyboardActionType;
                    keyboardActionType = KeyboardActionType.NONE;
                    if (keyboardActionType2 != KeyboardActionType.CONSOLE) {
                        keyboardAction.save();
                    }
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
            keyboardMode = false;
            keyboardMessage = "";
            keyboardVerticalLine = false;
            keyboardActionType = KeyboardActionType.NONE;
            keyboardAction = new AnonymousClass53();
            if (CFG.isDesktop()) {
                return;
            }
            try {
                Gdx.input.setOnscreenKeyboardVisible(false);
            } catch (Exception e2) {
                CFG.exceptionStack(e2);
            }
        }
    }

    public final void showKeyboard(KeyboardActionType keyboardActionType2, String str) {
        keyboardMode = true;
        keyboardMessage = str;
        verticalLineTime = CFG.currentTimeMillis;
        keyboardVerticalLine = true;
        keyboardActionType = keyboardActionType2;
        if (!CFG.isDesktop()) {
            try {
                Gdx.input.setOnscreenKeyboardVisible(true, Input.OnscreenKeyboardType.Default);
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        switch (AnonymousClass54.$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType[keyboardActionType2.ordinal()]) {
            case 1:
                keyboardAction = new AnonymousClass1();
                break;
            case 2:
                keyboardAction = new AnonymousClass2();
                break;
            case 3:
                keyboardAction = new AnonymousClass3();
                break;
            case 4:
                keyboardAction = new AnonymousClass4();
                break;
            case 5:
                keyboardAction = new AnonymousClass5();
                break;
            case 6:
                keyboardAction = new AnonymousClass6();
                break;
            case 7:
                keyboardAction = new AnonymousClass7();
                break;
            case 8:
                keyboardAction = new AnonymousClass8();
                break;
            case 9:
                keyboardAction = new AnonymousClass9();
                break;
            case 10:
                keyboardAction = new AnonymousClass10();
                break;
            case 11:
                keyboardAction = new AnonymousClass11();
                break;
            case 12:
                keyboardAction = new AnonymousClass12();
                break;
            case 13:
                keyboardAction = new AnonymousClass13();
                break;
            case 14:
                keyboardAction = new AnonymousClass14();
                break;
            case 15:
                keyboardAction = new AnonymousClass15();
                break;
            case 16:
                keyboardAction = new AnonymousClass16();
                break;
            case 17:
                keyboardAction = new AnonymousClass17();
                break;
            case 18:
                keyboardAction = new AnonymousClass18();
                break;
            case 19:
                keyboardAction = new AnonymousClass19();
                break;
            case 20:
                keyboardAction = new AnonymousClass20();
                break;
            case 21:
                keyboardAction = new AnonymousClass21();
                break;
            case 22:
                keyboardAction = new AnonymousClass22();
                break;
            case 23:
                keyboardAction = new AnonymousClass23();
                break;
            case 24:
                keyboardAction = new AnonymousClass24();
                break;
            case 25:
                keyboardAction = new AnonymousClass25();
                break;
            case 26:
                keyboardAction = new AnonymousClass26();
                break;
            case 27:
                keyboardAction = new AnonymousClass27();
                break;
            case 28:
                keyboardAction = new AnonymousClass28();
                break;
            case Input.Keys.A /* 29 */:
                keyboardAction = new AnonymousClass29();
                break;
            case 30:
                keyboardAction = new AnonymousClass30();
                break;
            case Input.Keys.C /* 31 */:
                keyboardAction = new AnonymousClass31();
                break;
            case 32:
                keyboardAction = new AnonymousClass32();
                break;
            case 33:
                keyboardAction = new AnonymousClass33();
                break;
            case 34:
                keyboardAction = new AnonymousClass34();
                break;
            case 35:
                keyboardAction = new AnonymousClass35();
                break;
            case 36:
                keyboardAction = new AnonymousClass36();
                break;
            case 37:
                keyboardAction = new AnonymousClass37();
                break;
            case 38:
                keyboardAction = new AnonymousClass38();
                break;
            case 39:
                keyboardAction = new AnonymousClass39();
                break;
            case 40:
                keyboardAction = new AnonymousClass40();
                break;
            case 41:
                keyboardAction = new AnonymousClass41();
                break;
            case 42:
                keyboardAction = new AnonymousClass42();
                break;
            case 43:
                keyboardAction = new AnonymousClass43();
                break;
            case 44:
                keyboardAction = new AnonymousClass44();
                break;
            case 45:
                keyboardAction = new AnonymousClass45();
                break;
            case 46:
                keyboardAction = new AnonymousClass46();
                break;
            case 47:
                keyboardAction = new AnonymousClass47();
                break;
            case Input.Keys.T /* 48 */:
                keyboardAction = new AnonymousClass48();
                break;
            case Input.Keys.U /* 49 */:
                keyboardAction = new AnonymousClass49();
                break;
            case Input.Keys.V /* 50 */:
                keyboardAction = new AnonymousClass50();
                break;
            case Input.Keys.W /* 51 */:
                keyboardAction = new AnonymousClass51();
                break;
            case Input.Keys.X /* 52 */:
                keyboardAction = new AnonymousClass52();
                break;
        }
    }
}
