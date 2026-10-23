package aoc.kingdoms.lukasz.menusScenarioEditor;

import androidx.lifecycle.livedata.core.jzw.jkEBdieJhbh;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.LanguageManager;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.allianceHRE.Alliance;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Title_v2Center;
import aoc.kingdoms.lukasz.menusInGame.Court.zHJ.lOow;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioCreateAllianceList extends Menu {
    public static Alliance editAlliance = null;
    public static String sMessageFirstTier = "";
    public static String sMessageFlag = "";
    public static String sMessageLeader = "";
    public static String sMessageName = "";
    public static String sMessageRest = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$1, reason: invalid class name */
    class AnonymousClass1 extends Text_StaticBG_Write {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CREATE_ALLIANCE_NAME, ScenarioCreateAllianceList.sMessageName);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("Name of the Alliance", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("Example: ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("Holy Roman Empire", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return ScenarioCreateAllianceList.sMessageName + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_CREATE_ALLIANCE_NAME ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$10, reason: invalid class name */
    class AnonymousClass10 extends Text_StaticBG_Write {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CREATE_ALLIANCE_REST, ScenarioCreateAllianceList.sMessageRest);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return ScenarioCreateAllianceList.sMessageRest + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_CREATE_ALLIANCE_REST ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$11, reason: invalid class name */
    class AnonymousClass11 extends ButtonGame {
        AnonymousClass11(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            ScenarioCreateAllianceList.editAlliance.addSecondTier(Game.getProvince(Game.iActiveProvince).getCivID());
            Game.menuManager.rebuildInGame_ScenarioEditorCreateAlliance_Edit_SavePos();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SelectProvince"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$12, reason: invalid class name */
    class AnonymousClass12 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass12(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioCreateAllianceList.editAlliance.removeSecondTier(getCurrent());
            Game.menuManager.addToastGold(Game.lang.get("Removed"), Images.v);
            Game.menuManager.rebuildInGame_ScenarioEditorCreateAlliance_Edit_SavePos();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Remove"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return ScenarioCreateAllianceList.sMessageRest + ": " + this.sText;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_Write {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CREATE_ALLIANCE_FLAG, ScenarioCreateAllianceList.sMessageFlag);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("Flag of the Alliance", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("Path: ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("gfx/flagsXH/" + ScenarioCreateAllianceList.sMessageFlag + ".png", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return ScenarioCreateAllianceList.sMessageFlag + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_CREATE_ALLIANCE_FLAG ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {
        AnonymousClass3(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonGame {
        AnonymousClass4(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioCreateAllianceList.editAlliance.incTypeOfAlliance();
            Game.menuManager.rebuildInGame_ScenarioEditorCreateAlliance_Edit_SavePos();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$5, reason: invalid class name */
    class AnonymousClass5 extends Text_StaticBG_Write {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CREATE_ALLIANCE_LEADER, ScenarioCreateAllianceList.sMessageLeader);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("Name of the Leader", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.alliance, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("Example: ", CFG.FONT_BOLD, Colors.HOVER_LEFT));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("Emperor", CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return ScenarioCreateAllianceList.sMessageLeader + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_CREATE_ALLIANCE_LEADER ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$6, reason: invalid class name */
    class AnonymousClass6 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            ScenarioCreateAllianceList.editAlliance.setLeader(Game.getProvince(Game.iActiveProvince).getCivID());
            this.id = ScenarioCreateAllianceList.editAlliance.iLeaderCivID;
            setText(ScenarioCreateAllianceList.editAlliance.iLeaderCivID == 0 ? Game.lang.get("SelectCivilization") : Game.getCiv(ScenarioCreateAllianceList.editAlliance.iLeaderCivID).getCivName());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SelectProvince"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$7, reason: invalid class name */
    class AnonymousClass7 extends Text_StaticBG_Write {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SCENARIO_CREATE_ALLIANCE_FIRST_TIER, ScenarioCreateAllianceList.sMessageFirstTier);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return ScenarioCreateAllianceList.sMessageFirstTier + (Keyboard.keyboardActionType == Keyboard.KeyboardActionType.SCENARIO_CREATE_ALLIANCE_FIRST_TIER ? Keyboard.getKeyboardVerticalLine() : "");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonGame {
        AnonymousClass8(String str, int i, int i2, int i3, int i4) {
            super(str, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            ScenarioCreateAllianceList.editAlliance.addFirstTier(Game.getProvince(Game.iActiveProvince).getCivID());
            Game.menuManager.rebuildInGame_ScenarioEditorCreateAlliance_Edit_SavePos();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SelectProvince"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCreateAllianceList$9, reason: invalid class name */
    class AnonymousClass9 extends Text_StaticBG_ID_FlagCiv {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            ScenarioCreateAllianceList.editAlliance.removeFirstTier(getCurrent());
            Game.menuManager.addToastGold(Game.lang.get("Removed"), Images.v);
            Game.menuManager.rebuildInGame_ScenarioEditorCreateAlliance_Edit_SavePos();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(lOow.nebDL), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_ID_FlagCiv, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return ScenarioCreateAllianceList.sMessageFirstTier + ": " + this.sText;
        }
    }

    public ScenarioCreateAllianceList() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = CFG.PADDING * 4;
        int i4 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 4) + Images.boxTitleBORDERWIDTH;
        int i5 = CFG.PADDING;
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        sMessageName = editAlliance.Name_Alliance;
        sMessageLeader = editAlliance.Name_Leader;
        sMessageFirstTier = editAlliance.Name_FirstTier;
        sMessageRest = editAlliance.Name_Rest;
        sMessageFlag = editAlliance.FlagTag;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("AllianceName"), -1, Images.boxTitleBORDERWIDTH, 0, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING + 0;
        StringBuilder sb = new StringBuilder();
        LanguageManager languageManager = Game.lang;
        String str = jkEBdieJhbh.gvdSgmE;
        int i6 = width - (i * 2);
        arrayList.add(new AnonymousClass1(sb.append(languageManager.get(str)).append(": ").toString(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height, i6, CFG.BUTTON_HEIGHT2));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass2(Game.lang.get("Flag") + ", " + Game.lang.get("Tag") + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height2, i6, CFG.BUTTON_HEIGHT2));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass3("Type of the Alliance: " + editAlliance.getTypeOfAlliance_Name(), i, height3, (i6 - CFG.BUTTON_WIDTH) - CFG.PADDING, CFG.BUTTON_HEIGHT));
        arrayList.add(new AnonymousClass4(">>", ((i6 - CFG.BUTTON_WIDTH) - CFG.PADDING) + i + CFG.PADDING, height3, CFG.BUTTON_WIDTH, CFG.BUTTON_HEIGHT));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2Center(Game.lang.get(LBhZogys.DHVjuo), -1, Images.boxTitleBORDERWIDTH, height4, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass5(Game.lang.get(str) + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height5, i6, CFG.BUTTON_HEIGHT2));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass6(editAlliance.iLeaderCivID == 0 ? Game.lang.get("SelectCivilization") : Game.getCiv(editAlliance.iLeaderCivID).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height6, i6, CFG.BUTTON_HEIGHT4, editAlliance.iLeaderCivID));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Electors"), -1, Images.boxTitleBORDERWIDTH, height7, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass7(Game.lang.get(str) + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height8, i6, CFG.BUTTON_HEIGHT2));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        String str2 = "AddCivilization";
        arrayList.add(new AnonymousClass8(Game.lang.get("AddCivilization"), i, height9, i6, CFG.BUTTON_HEIGHT));
        int height10 = height9 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        int i7 = 0;
        while (i7 < editAlliance.firstTier.size()) {
            arrayList.add(new AnonymousClass9(Game.getCiv(editAlliance.firstTier.get(i7).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, height10, i6, CFG.BUTTON_HEIGHT4, editAlliance.firstTier.get(i7).intValue()));
            height10 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            i7++;
            i = i;
            str2 = str2;
        }
        int i8 = i;
        arrayList.add(new Text_Title_v2Center(Game.lang.get("Princes"), -1, Images.boxTitleBORDERWIDTH, height10, width - (Images.boxTitleBORDERWIDTH * 2), CFG.TEXT_HEIGHT + (CFG.PADDING * 6)));
        int height11 = height10 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass10(Game.lang.get(str) + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i8, height11, i6, CFG.BUTTON_HEIGHT2));
        int height12 = height11 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        arrayList.add(new AnonymousClass11(Game.lang.get(str2), i8, height12, i6, CFG.BUTTON_HEIGHT));
        int height13 = height12 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        for (int i9 = 0; i9 < editAlliance.secondTier.size(); i9++) {
            arrayList.add(new AnonymousClass12(Game.getCiv(editAlliance.secondTier.get(i9).intValue()).getCivName(), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i8, height13, i6, CFG.BUTTON_HEIGHT4, editAlliance.secondTier.get(i9).intValue()));
            height13 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        initMenu(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, width, Math.min(height13, (CFG.GAME_HEIGHT - i2) - (i4 * 2)), arrayList, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight(), i, i2);
        super.beginClip(spriteBatch, i, i2, z);
        super.drawMenu(spriteBatch, i, i2, z);
        super.endClip(spriteBatch, i, i2, z, status);
    }

    public final void drawEditorMenuBG(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i + i5;
        Renderer.drawBoxCorner(spriteBatch, i7, (i2 - getTitle().getHeight()) + i6, i3, getTitle().getHeight() + i4 + CFG.PADDING);
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.mainBox, i7, i2 + i6, i3, i4 + CFG.PADDING, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("CreateAlliance"));
    }
}
