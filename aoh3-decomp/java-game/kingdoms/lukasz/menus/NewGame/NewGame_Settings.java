package aoc.kingdoms.lukasz.menus.NewGame;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.AI.Government.nSju.IlLkpaQxs;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Ages;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame2;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Center;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG_Clear;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.security.IYT.MQYGMkZOAcS;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class NewGame_Settings extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame2 {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.FOG_OF_WAR = !Game.FOG_OF_WAR;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            LanguageManager languageManager;
            String str;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str2 = Game.lang.get("Fogofwar") + ": ";
            if (Game.FOG_OF_WAR) {
                languageManager = Game.lang;
                str = "On";
            } else {
                languageManager = Game.lang;
                str = "Off";
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str2, languageManager.get(str), Images.settings, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return Game.FOG_OF_WAR;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonGame2 {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.SPECTATOR_MODE = !Game.SPECTATOR_MODE;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            LanguageManager languageManager;
            String str;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str2 = Game.lang.get("SpectatorMode") + ": ";
            if (Game.SPECTATOR_MODE) {
                languageManager = Game.lang;
                str = "On";
            } else {
                languageManager = Game.lang;
                str = "Off";
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str2, languageManager.get(str), Images.settings, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return Game.SPECTATOR_MODE;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonGame2 {
        AnonymousClass11(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.SANDBOX = !Game.SANDBOX;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            LanguageManager languageManager;
            String str;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str2 = Game.lang.get(uiwPYaNhJS.JkSeLP) + ": ";
            if (Game.SANDBOX) {
                languageManager = Game.lang;
                str = "On";
            } else {
                languageManager = Game.lang;
                str = "Off";
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str2, languageManager.get(str), Images.sandbox, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return Game.SANDBOX;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame2 {
        int id;

        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
            this.id = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = NewGame_Settings.getHover_Difficulty(Game.difficultyID);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.id != Game.difficultyID) {
                this.id = Game.difficultyID;
                setText(Game.lang.get("Difficulty") + MQYGMkZOAcS.dEapHT + Game.lang.get(GameValues.difficulty.NAME[Game.difficultyID]));
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame2 {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.difficultyID = Math.max(0, Game.difficultyID - 1);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = NewGame_Settings.getHover_Difficulty(Math.max(0, Game.difficultyID - 1));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame2 {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.difficultyID = Math.min(GameValues.difficulty.NAME.length - 1, Game.difficultyID + 1);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = NewGame_Settings.getHover_Difficulty(Math.min(GameValues.difficulty.NAME.length - 1, Game.difficultyID + 1));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonGame2 {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.SCENARIO_EVENTS = !Game.SCENARIO_EVENTS;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            LanguageManager languageManager;
            String str;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str2 = Game.lang.get("Scenario") + ": " + Game.lang.get("Events") + ": ";
            if (Game.SCENARIO_EVENTS) {
                languageManager = Game.lang;
                str = "On";
            } else {
                languageManager = Game.lang;
                str = "Off";
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str2, languageManager.get(str), Images.settings, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return Game.SCENARIO_EVENTS;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonGame2 {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, i6, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.ENABLE_CALL_VASSALS = !Game.ENABLE_CALL_VASSALS;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            LanguageManager languageManager;
            String str;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            String str2 = Game.lang.get("CallAllies") + ": " + Game.lang.get(Game_Ages.getVassals()) + ": ";
            if (Game.ENABLE_CALL_VASSALS) {
                languageManager = Game.lang;
                str = lOow.ErNPaLMxJv;
            } else {
                languageManager = Game.lang;
                str = "Off";
            }
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str2, languageManager.get(str), Images.vassal, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return Game.ENABLE_CALL_VASSALS;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonGame2 {
        int id;

        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
            this.id = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Center(Game.lang.get("AIAggressiveness"), CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            String str = Game.lang.get("Default") + ": ";
            String str2 = gpVDKipRURuzw.TqkSLlxmyL;
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2 + Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHANCE + " + " + Game.lang.get("Extra") + " / " + Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_RANDOM_MAX, Images.ai, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("AIAggressiveness") + ", " + Game.lang.get("Extra") + ": ", str2 + Game.aiAggressivnes, Images.ai, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            if (this.id != Game.aiAggressivnes) {
                this.id = Game.aiAggressivnes;
                setText(Game.lang.get("AIAggressiveness") + ": " + Game.aiAggressivnes);
            }
            return super.getTextToDraw();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame2 {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (AA_KeyManager.CTRL_HOLD) {
                Game.aiAggressivnes -= GameValues.newGame.NEW_GAME_AI_AGGRESSIVENESS_PER_CLICK * 10;
            } else {
                Game.aiAggressivnes -= GameValues.newGame.NEW_GAME_AI_AGGRESSIVENESS_PER_CLICK;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AIAggressiveness") + ", " + Game.lang.get("Extra") + ": -" + GameValues.newGame.NEW_GAME_AI_AGGRESSIVENESS_PER_CLICK, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.ai, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("CTRL: ", "-" + (GameValues.newGame.NEW_GAME_AI_AGGRESSIVENESS_PER_CLICK * 10), Images.ai, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Default") + ": ", "" + Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHANCE + " + " + Game.lang.get("Extra") + " / " + Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_RANDOM_MAX, Images.ai, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame_Settings$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonGame2 {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
            super(str, i, i2, i3, i4, i5, z, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (AA_KeyManager.CTRL_HOLD) {
                Game.aiAggressivnes += GameValues.newGame.NEW_GAME_AI_AGGRESSIVENESS_PER_CLICK * 10;
            } else {
                Game.aiAggressivnes += GameValues.newGame.NEW_GAME_AI_AGGRESSIVENESS_PER_CLICK;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("AIAggressiveness") + ", " + Game.lang.get("Extra") + ": +" + GameValues.newGame.NEW_GAME_AI_AGGRESSIVENESS_PER_CLICK, CFG.FONT_BOLD_SMALL, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.ai, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus("CTRL: ", "+" + (GameValues.newGame.NEW_GAME_AI_AGGRESSIVENESS_PER_CLICK * 10), Images.ai, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Default") + ": ", fiRhHJntP.gZywxVctpK + Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_CHANCE + " + " + Game.lang.get("Extra") + " / " + Game.aiValuesDiplomacy.AI_PREPARE_FOR_WAR_RANDOM_MAX, Images.ai, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public NewGame_Settings() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = (CFG.LEFT_MENU_WIDTH * 4) / 5;
        int i4 = CFG.PADDING * 2;
        int height = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 3) + i2;
        int i5 = CFG.PADDING + (CFG.PADDING / 2);
        int i6 = i3 - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Fogofwar"), 1, -1, i, i5, i6, true, CFG.BUTTON_HEIGHT2, true));
        int height2 = i5 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass2(Game.lang.get("Difficulty") + ": " + Game.lang.get(GameValues.difficulty.NAME[Game.difficultyID]), 1, -1, i, height2, i6, true, CFG.BUTTON_HEIGHT3));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass3("<<", 1, -1, i, height3, (i6 - CFG.PADDING) / 2, true, CFG.BUTTON_HEIGHT2));
        arrayList.add(new AnonymousClass4(">>", 1, -1, ((i6 - CFG.PADDING) / 2) + i + CFG.PADDING, height3, (i6 - CFG.PADDING) / 2, true, CFG.BUTTON_HEIGHT2));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass5(Game.lang.get("Scenario") + ": " + Game.lang.get("Events"), 1, -1, i, height4, i6, true, CFG.BUTTON_HEIGHT2, true));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass6(Game.lang.get("CallAllies") + ": " + Game.lang.get(Game_Ages.getVassals()), 1, -1, i, height5, i6, true, CFG.BUTTON_HEIGHT2, true));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass7(Game.lang.get("AIAggressiveness") + ": " + Game.aiAggressivnes, 1, -1, i, height6, i6, true, CFG.BUTTON_HEIGHT3));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass8("<<", 1, -1, i, height7, (i6 - CFG.PADDING) / 2, true, CFG.BUTTON_HEIGHT2));
        arrayList.add(new AnonymousClass9(">>", 1, -1, ((i6 - CFG.PADDING) / 2) + i + CFG.PADDING, height7, (i6 - CFG.PADDING) / 2, true, CFG.BUTTON_HEIGHT2));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass10(Game.lang.get("SpectatorMode"), 1, -1, i, height8, i6, true, CFG.BUTTON_HEIGHT2, true));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass11(Game.lang.get("Sandbox"), 1, -1, i, height9, i6, true, CFG.BUTTON_HEIGHT2, true));
        initMenu(new MenuTitle(Game.lang.get("Settings"), 1.0f, i2, true, true), i4, height, i3, Math.min(height9 + arrayList.get(arrayList.size() - 1).getHeight() + i5, (CFG.GAME_HEIGHT - i2) - (height * 2)), arrayList, false, false);
    }

    public static MenuElement_Hover getHover_Difficulty(int i) {
        Color color;
        Color color2;
        Color color3;
        Color color4;
        Color color5;
        Color color6;
        Color color7;
        Color color8;
        Color color9;
        Color color10;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Difficulty") + ": ", CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG_Clear("" + Game.lang.get(GameValues.difficulty.NAME[i]), CFG.FONT_BOLD, Colors.HOVER_GOLD));
        arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.world, CFG.PADDING, 0));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Player") + ": ", "" + Game.lang.get("Bonuses"), Images.population, CFG.FONT_BOLD_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f = GameValues.difficulty.MONTHLY_INCOME[i];
        String str = Game.lang.get("MonthlyIncome") + ": ";
        String str2 = (f > 0.0f ? "+" : "") + CFG.getPrecision2(f, 100);
        int i2 = Images.gold;
        int i3 = CFG.FONT_REGULAR_SMALL;
        int i4 = CFG.FONT_BOLD_SMALL;
        Color color11 = Colors.HOVER_LEFT;
        if (f == 0.0f) {
            color = Colors.HOVER_NEUTRAL;
        } else {
            color = f > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str, str2, i2, i3, i4, color11, color));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f2 = GameValues.difficulty.INCOME_PRODUCTION[i];
        String str3 = Game.lang.get("IncomeProduction") + ": ";
        StringBuilder sbAppend = new StringBuilder().append(f2 > 0.0f ? "+" : "").append(CFG.getPrecision2(f2, 100));
        String str4 = IlLkpaQxs.PBDgpAFxeXv;
        String string = sbAppend.append(str4).toString();
        int i5 = Images.goods;
        int i6 = CFG.FONT_REGULAR_SMALL;
        int i7 = CFG.FONT_BOLD_SMALL;
        Color color12 = Colors.HOVER_LEFT;
        if (f2 == 0.0f) {
            color2 = Colors.HOVER_NEUTRAL;
        } else {
            color2 = f2 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str3, string, i5, i6, i7, color12, color2));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f3 = GameValues.difficulty.LEGACY[i] * 100.0f;
        String str5 = Game.lang.get("Legacy") + ": ";
        String str6 = (f3 > 0.0f ? "+" : "") + CFG.getPrecision2(f3, 100) + str4;
        int i8 = Images.legacy;
        int i9 = CFG.FONT_REGULAR_SMALL;
        int i10 = CFG.FONT_BOLD_SMALL;
        Color color13 = Colors.HOVER_LEFT;
        if (f3 == 0.0f) {
            color3 = Colors.HOVER_NEUTRAL;
        } else {
            color3 = f3 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str5, str6, i8, i9, i10, color13, color3));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f4 = GameValues.difficulty.MANPOWER[i] * 100.0f;
        String str7 = Game.lang.get("Manpower") + ": ";
        String str8 = (f4 > 0.0f ? "+" : "") + CFG.getPrecision2(f4, 100) + str4;
        int i11 = Game_Calendar.IMG_MANPOWER;
        int i12 = CFG.FONT_REGULAR_SMALL;
        int i13 = CFG.FONT_BOLD_SMALL;
        Color color14 = Colors.HOVER_LEFT;
        if (f4 == 0.0f) {
            color4 = Colors.HOVER_NEUTRAL;
        } else {
            color4 = f4 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str7, str8, i11, i12, i13, color14, color4));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f5 = GameValues.difficulty.RECRUIT_ARMY_COST[i];
        String str9 = Game.lang.get("ArmyRecruitmentCost") + ": ";
        String str10 = (f5 > 0.0f ? "+" : "") + CFG.getPrecision2(f5, 100) + str4;
        int i14 = Game_Calendar.IMG_MANPOWER;
        int i15 = CFG.FONT_REGULAR_SMALL;
        int i16 = CFG.FONT_BOLD_SMALL;
        Color color15 = Colors.HOVER_LEFT;
        if (f5 == 0.0f) {
            color5 = Colors.HOVER_NEUTRAL;
        } else {
            color5 = f5 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str9, str10, i14, i15, i16, color15, color5));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f6 = GameValues.difficulty.RECRUIT_ARMY_COST[i];
        String str11 = Game.lang.get("RecruitmentTime") + ": ";
        String str12 = (f6 > 0.0f ? "+" : "") + CFG.getPrecision2(f6, 100) + str4;
        int i17 = Game_Calendar.IMG_MANPOWER_TIME;
        int i18 = CFG.FONT_REGULAR_SMALL;
        int i19 = CFG.FONT_BOLD_SMALL;
        Color color16 = Colors.HOVER_LEFT;
        if (f6 == 0.0f) {
            color6 = Colors.HOVER_NEUTRAL;
        } else {
            color6 = f6 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str11, str12, i17, i18, i19, color16, color6));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f7 = GameValues.difficulty.REGIMENTS_LIMIT[i];
        String str13 = Game.lang.get("RegimentsLimit") + ": ";
        String str14 = (f7 > 0.0f ? "+" : "") + CFG.getPrecision2(f7, 100);
        int i20 = Images.regimentsLimit;
        int i21 = CFG.FONT_REGULAR_SMALL;
        int i22 = CFG.FONT_BOLD_SMALL;
        Color color17 = Colors.HOVER_LEFT;
        if (f7 == 0.0f) {
            color7 = Colors.HOVER_NEUTRAL;
        } else {
            color7 = f7 > 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str13, str14, i20, i21, i22, color17, color7));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f8 = GameValues.difficulty.CONSTRUCTION_COST[i] * 100.0f;
        String str15 = Game.lang.get(hQfu.SCTqr) + ": ";
        String str16 = (f8 > 0.0f ? "+" : "") + CFG.getPrecision2(f8, 100) + str4;
        int i23 = Images.construction;
        int i24 = CFG.FONT_REGULAR_SMALL;
        int i25 = CFG.FONT_BOLD_SMALL;
        Color color18 = Colors.HOVER_LEFT;
        if (f8 == 0.0f) {
            color8 = Colors.HOVER_NEUTRAL;
        } else {
            color8 = f8 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str15, str16, i23, i24, i25, color18, color8));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f9 = GameValues.difficulty.CORE_COST[i];
        String str17 = Game.lang.get("CoreConstruction") + ": ";
        String str18 = (f9 > 0.0f ? "+" : "") + CFG.getPrecision2(f9, 100) + str4;
        int i26 = Images.core;
        int i27 = CFG.FONT_REGULAR_SMALL;
        int i28 = CFG.FONT_BOLD_SMALL;
        Color color19 = Colors.HOVER_LEFT;
        if (f9 == 0.0f) {
            color9 = Colors.HOVER_NEUTRAL;
        } else {
            color9 = f9 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str17, str18, i26, i27, i28, color19, color9));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        float f10 = GameValues.difficulty.RELIGION_COST[i];
        String str19 = Game.lang.get("ReligionConversionCost") + ": ";
        String str20 = (f10 > 0.0f ? "+" : "") + CFG.getPrecision2(f10, 100) + str4;
        int i29 = Images.religion;
        int i30 = CFG.FONT_REGULAR_SMALL;
        int i31 = CFG.FONT_BOLD_SMALL;
        Color color20 = Colors.HOVER_LEFT;
        if (f10 == 0.0f) {
            color10 = Colors.HOVER_NEUTRAL;
        } else {
            color10 = f10 < 0.0f ? Colors.HOVER_POSITIVE : Colors.HOVER_NEGATIVE;
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(str19, str20, i29, i30, i31, color20, color10));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game_Ages.getVassals() + ": ", Game.lang.get("ProclaimIndependence"), GameValues.difficulty.CAN_VASSAL_PROCLAIM_INDEPENDENCE_AGAINST_PLAYER[i] ? Images.v : Images.x, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("FormACoalitionAgainst") + ": ", Game.lang.get("Player"), i > GameValues.difficulty.NORMAL_ID ? Images.v : Images.x, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
