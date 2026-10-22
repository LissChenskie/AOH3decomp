package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMainDescripted;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMainReverse;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ColorTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menusEditor.GameCivs;
import aoc.kingdoms.lukasz.menusInGame.DrawOver.SQ.XjthpFh;
import aoc.kingdoms.lukasz.menusScenarioEditor.YGiX.gpVDKipRURuzw;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioCivilizationsList extends Menu {
    private List<String> lCivsTags;
    private List<Image> lFlags = new ArrayList();
    private List<Integer> lLoadedFlags_TagsIDs = new ArrayList();
    private String sCivsTag;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizationsList$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMainDescripted {
        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, str2, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ChangeTypeOfGovernmentTo") + ": "));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.ideologiesManager.getIdeology(getCurrent()).Name, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(getText(), CFG.FONT_REGULAR_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected Color getColor(boolean z) {
            return getCheckboxState() ? Colors.HOVER_GOLD : super.getColor(z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizationsList$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMainReverse {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + Keyboard.getKeyboardVerticalLine();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            if (GameCivs.sSearch.length() > 0) {
                setText(Game.lang.get("Search") + gpVDKipRURuzw.mvzrBJuym + GameCivs.sSearch);
            } else {
                setText(Game.lang.get("Search"));
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizationsList$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            if (GameCivs.sSearch.length() > 0) {
                setText(Game.lang.get("Search") + ": " + GameCivs.sSearch);
            } else {
                setText(Game.lang.get("Search"));
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizationsList$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMainReverse {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            try {
                Game.LoadCivilizationData loadCivilizationDataLoadCivilization = Game.loadCivilization(getText().substring(getText().indexOf("[") + 1, getText().indexOf("]")));
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new MenuElement_HoverElement_Type_ColorTitle(new Color(loadCivilizationDataLoadCivilization.iR / 255.0f, loadCivilizationDataLoadCivilization.iG / 255.0f, loadCivilizationDataLoadCivilization.iB / 255.0f, 1.0f), CFG.FONT_BOLD_SMALL, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.getCiv(loadCivilizationDataLoadCivilization.Tag), Colors.HOVER_TITLE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(LBhZogys.FYuhBSCErpagu) + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(loadCivilizationDataLoadCivilization.ReligionID).Name, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text("Wiki: ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.getCiv(loadCivilizationDataLoadCivilization.Wiki), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover(arrayList);
            } catch (IndexOutOfBoundsException unused) {
                super.buildElementHover();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizationsList$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMainReverse {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            ImageManager.getImage(Images.wiki).draw(spriteBatch, ((i + getPosX()) + (getWidth() / 2)) - (ImageManager.getImage(Images.wiki).getWidth() / 2), ((i2 + getPosY()) + (getHeight() / 2)) - (ImageManager.getImage(Images.wiki).getHeight() / 2));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizationsList$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonMain {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            try {
                Game.LoadCivilizationData loadCivilizationDataLoadCivilization = Game.loadCivilization(getText().substring(getText().indexOf("[") + 1, getText().indexOf("]")));
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new MenuElement_HoverElement_Type_ColorTitle(new Color(loadCivilizationDataLoadCivilization.iR / 255.0f, loadCivilizationDataLoadCivilization.iG / 255.0f, loadCivilizationDataLoadCivilization.iB / 255.0f, 1.0f), CFG.FONT_BOLD_SMALL, CFG.PADDING));
                arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.getCiv(loadCivilizationDataLoadCivilization.Tag), Colors.HOVER_TITLE));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Line());
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Religion") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.religionManager.getReligion(loadCivilizationDataLoadCivilization.ReligionID).Name, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Text("Wiki: ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.getCiv(loadCivilizationDataLoadCivilization.Wiki), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover(arrayList);
            } catch (IndexOutOfBoundsException unused) {
                super.buildElementHover();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizationsList$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonMain {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            ImageManager.getImage(Images.wiki).draw(spriteBatch, ((i + getPosX()) + (getWidth() / 2)) - (ImageManager.getImage(Images.wiki).getWidth() / 2), ((i2 + getPosY()) + (getHeight() / 2)) - (ImageManager.getImage(Images.wiki).getHeight() / 2));
        }
    }

    public ScenarioCivilizationsList() {
        int i;
        String str;
        int i2;
        String str2;
        int height;
        this.sCivsTag = "";
        this.lCivsTags = null;
        ArrayList arrayList = new ArrayList();
        int i3 = CFG.PADDING * 2;
        int i4 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i5 = (CFG.GAME_WIDTH - CFG.LEFT_MENU_WIDTH) - (CFG.PADDING * 4);
        int i6 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 6);
        int i7 = CFG.PADDING;
        int i8 = CFG.PADDING;
        this.lCivsTags = new ArrayList();
        int i9 = 0;
        if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0 || Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCapitalProvinceID() != Game.iActiveProvince) {
            i = i5;
            ScenarioCivilizations.listOfAllCivs = true;
            Keyboard keyboard = Game.keyboard;
            if (Keyboard.keyboardMode) {
                arrayList.add(new AnonymousClass2("", 1, -1, i3, i7, CFG.LEFT_MENU_WIDTH - (i3 * 2), true));
            } else {
                arrayList.add(new AnonymousClass3("", 1, -1, i3, i7, CFG.LEFT_MENU_WIDTH - (i3 * 2), true));
            }
            int height2 = i7 + arrayList.get(arrayList.size() - 1).getHeight() + i7;
            ArrayList arrayList2 = new ArrayList();
            for (String str3 : FileManager.loadFile("game/Civilizations.txt").readString().split(";")) {
                arrayList2.add(str3);
            }
            if (CFG.isDesktop()) {
                for (int i10 = 0; i10 < SteamManager.modsFoldersSize; i10++) {
                    boolean z = FileManager.IS_MAC;
                    String str4 = XjthpFh.ptdX;
                    for (FileHandle fileHandle : z ? Gdx.files.external(SteamManager.modsFolders.get(i10) + str4).list() : Gdx.files.internal(SteamManager.modsFolders.get(i10) + str4).list()) {
                        arrayList2.add(fileHandle.name().replace(".json", ""));
                    }
                }
                for (int i11 = 0; i11 < SteamManager.itemsInstalledSize; i11++) {
                    for (FileHandle fileHandle2 : Gdx.files.absolute(SteamManager.itemsInstalled.get(i11).getFolder() + "/game/civilizations/").list()) {
                        arrayList2.add(fileHandle2.name().replace(".json", ""));
                    }
                }
            }
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            if (GameCivs.sSearch.length() > 0) {
                int size = arrayList2.size();
                for (int i12 = 0; i12 < size; i12++) {
                    if (Game.lang.getCiv((String) arrayList2.get(i12)).toLowerCase().indexOf(GameCivs.sSearch.toLowerCase()) >= 0) {
                        arrayList3.add(Game.lang.getCiv((String) arrayList2.get(i12)));
                        arrayList4.add((String) arrayList2.get(i12));
                    }
                }
            } else {
                int size2 = arrayList2.size();
                for (int i13 = 0; i13 < size2; i13++) {
                    arrayList3.add(Game.lang.getCiv((String) arrayList2.get(i13)));
                    arrayList4.add((String) arrayList2.get(i13));
                }
            }
            String str5 = "]";
            String str6 = " [";
            if (Game.iActiveProvince >= 0) {
                List<String> listLoadSuggestedCivs = Game.loadSuggestedCivs(Game.iActiveProvince);
                height = height2;
                int i14 = 0;
                while (i14 < listLoadSuggestedCivs.size()) {
                    int i15 = i3 * 2;
                    int i16 = i14;
                    List<String> list = listLoadSuggestedCivs;
                    int i17 = height;
                    arrayList.add(new AnonymousClass4(Game.lang.getCiv(listLoadSuggestedCivs.get(i14)) + str6 + listLoadSuggestedCivs.get(i14) + str5, 1, (CFG.PADDING * 6) + CFG.CIV_FLAG_WIDTH, i3, i17, (CFG.LEFT_MENU_WIDTH - i15) - CFG.BUTTON_HEIGHT, true));
                    arrayList.add(new AnonymousClass5("", 1, CFG.PADDING * 2, ((CFG.LEFT_MENU_WIDTH + i3) - i15) - CFG.BUTTON_HEIGHT, i17, CFG.BUTTON_HEIGHT, true));
                    height += arrayList.get(arrayList.size() - 1).getHeight() + i7;
                    this.lCivsTags.add(list.get(i16));
                    i14 = i16 + 1;
                    listLoadSuggestedCivs = list;
                    str5 = str5;
                    i4 = i4;
                    str6 = str6;
                }
                str = str6;
                i2 = i4;
                str2 = str5;
            } else {
                str = " [";
                i2 = i4;
                str2 = "]";
                height = height2;
            }
            while (arrayList3.size() > 0) {
                try {
                    int i18 = 0;
                    for (int i19 = 1; i19 < arrayList3.size(); i19++) {
                        if (CFG.compareAlphabetic_TwoString((String) arrayList3.get(i18), (String) arrayList3.get(i19))) {
                            i18 = i19;
                        }
                    }
                    String str7 = str;
                    int i20 = i3 * 2;
                    String str8 = str2;
                    arrayList.add(new AnonymousClass6(Game.lang.getCiv((String) arrayList4.get(i18)) + str7 + ((String) arrayList4.get(i18)) + str2, 1, (CFG.PADDING * 6) + CFG.CIV_FLAG_WIDTH, i3, height, (CFG.LEFT_MENU_WIDTH - i20) - CFG.BUTTON_HEIGHT, true));
                    arrayList.add(new AnonymousClass7("", 1, CFG.PADDING * 2, ((CFG.LEFT_MENU_WIDTH + i3) - i20) - CFG.BUTTON_HEIGHT, height, CFG.BUTTON_HEIGHT, true));
                    height += arrayList.get(arrayList.size() - 1).getHeight() + i7;
                    this.lCivsTags.add((String) arrayList4.get(i18));
                    arrayList3.remove(i18);
                    arrayList4.remove(i18);
                    str2 = str8;
                    str = str7;
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        } else {
            ScenarioCivilizations.listOfAllCivs = false;
            this.sCivsTag = Game.ideologiesManager.getRealTag(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivTag());
            height = i7;
            while (i9 < Game.ideologiesManager.getIdeologiesSize()) {
                int i21 = i5;
                int i22 = i9;
                arrayList.add(new AnonymousClass1("" + Game.lang.getCiv(this.sCivsTag + Game.ideologiesManager.getIdeology(i9).Extra_Tag), Game.ideologiesManager.getIdeology(i9).Name, 1, (CFG.PADDING * 6) + CFG.CIV_FLAG_WIDTH, i3, height, CFG.LEFT_MENU_WIDTH - (i3 * 2), true));
                height += arrayList.get(arrayList.size() - 1).getHeight() + i7;
                this.lCivsTags.add(this.sCivsTag + Game.ideologiesManager.getIdeology(i22).Extra_Tag);
                arrayList.get(arrayList.size() - 1).setCurrent(i22);
                if (Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivTag().equals(this.sCivsTag + Game.ideologiesManager.getIdeology(i22).Extra_Tag)) {
                    arrayList.get(arrayList.size() - 1).setCheckboxState(true);
                }
                i9 = i22 + 1;
                i5 = i21;
            }
            i = i5;
            i2 = i4;
        }
        initMenu(new MenuTitle("", 1.0f, i2, true, false), i, i2 + i6, CFG.LEFT_MENU_WIDTH, Math.min(height, (((((CFG.GAME_HEIGHT - i6) - i2) - Game.mapBG.minimapOfCivilizations.getHeight()) - (Minimap.getPadding() * 2)) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 7)), arrayList, true);
    }

    private final int getFlagID(int i) {
        for (int i2 = 0; i2 < this.lLoadedFlags_TagsIDs.size(); i2++) {
            if (this.lLoadedFlags_TagsIDs.get(i2).intValue() == i) {
                return i2;
            }
        }
        return 0;
    }

    private final int getIsLoaded(String str) {
        for (int i = 0; i < this.lLoadedFlags_TagsIDs.size(); i++) {
            if (this.lCivsTags.get(this.lLoadedFlags_TagsIDs.get(i).intValue()).equals(str)) {
                return i;
            }
        }
        return -1;
    }

    private final void loadFlag(int i) {
        try {
            if (FileManager.loadFile("gfx/flags/" + this.lCivsTags.get(i) + ".png").exists()) {
                this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + this.lCivsTags.get(i) + ".png")), Texture.TextureFilter.Nearest));
            } else if (FileManager.loadFile("gfx/flags/" + Game.ideologiesManager.getRealTag(this.lCivsTags.get(i)) + ".png").exists()) {
                this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + Game.ideologiesManager.getRealTag(this.lCivsTags.get(i)) + ".png")), Texture.TextureFilter.Nearest));
            } else if (FileManager.loadFile("gfx/flagsXH/" + this.lCivsTags.get(i) + ".png").exists()) {
                this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + this.lCivsTags.get(i) + ".png")), Texture.TextureFilter.Nearest));
            } else if (FileManager.loadFile("gfx/flagsXH/" + Game.ideologiesManager.getRealTag(this.lCivsTags.get(i)) + ".png").exists()) {
                this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + Game.ideologiesManager.getRealTag(this.lCivsTags.get(i)) + ".png")), Texture.TextureFilter.Nearest));
            } else if (FileManager.loadFile("GameCivs/gfx/flagsH/" + this.lCivsTags.get(i) + ".png").exists()) {
                this.lFlags.add(new Image(new Texture(FileManager.loadFile("GameCivs/gfx/flagsH/" + this.lCivsTags.get(i) + ".png")), Texture.TextureFilter.Linear));
            } else if (FileManager.loadFile("GameCivs/gfx/flagsH/" + Game.ideologiesManager.getRealTag(this.lCivsTags.get(i)) + ".png").exists()) {
                this.lFlags.add(new Image(new Texture(FileManager.loadFile("GameCivs/gfx/flagsH/" + Game.ideologiesManager.getRealTag(this.lCivsTags.get(i)) + ".png")), Texture.TextureFilter.Linear));
            } else {
                this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/ran.png")), Texture.TextureFilter.Nearest));
            }
        } catch (Exception unused) {
            this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/ran.png")), Texture.TextureFilter.Nearest));
        }
        this.lLoadedFlags_TagsIDs.add(Integer.valueOf(i));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionElement(int i) {
        if (!ScenarioCivilizations.listOfAllCivs) {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            Game.updateCivilizationIdeology(Game.getProvince(Game.iActiveProvince).getCivID(), this.sCivsTag + Game.ideologiesManager.getIdeology(i).Extra_Tag);
            Game.hoverManager.resetHoverActive_Menu();
            Game.menuManager.rebuildScenarioCivilizationsList();
            return;
        }
        if (i == 0) {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SEARCH_SCENARIO_CIVS, GameCivs.sSearch);
            Game.menuManager.rebuildScenarioCivilizationsList();
            super.actionElement(i);
            return;
        }
        if (i % 2 != 1) {
            try {
                Dialog.GO_TO_LINK = CFG.WWW_WIKI + Game.loadCivilization(this.lCivsTags.get((i - 1) / 2)).Wiki;
                Dialog.setDialogType(Dialog.DialogType.GO_TO_LINK);
                return;
            } catch (GdxRuntimeException unused) {
                Game.menuManager.addToast_Error(Game.lang.get("NoData"));
                return;
            }
        }
        if (Game.iActiveProvince >= 0 && !Game.getProvince(Game.iActiveProvince).getSeaProvince() && Game.getProvince(Game.iActiveProvince).getWasteland() < 0 && Game.addCivilization(this.lCivsTags.get((i - 1) / 2), Game.iActiveProvince, true, true, false, true, false)) {
            Game.updateProvinceBorder(Game.iActiveProvince);
            Game.updateProvincesInView = true;
            CivilizationRegionsManager.updateRegionsInView = true;
            CivilizationRegionsManager.buildCivilizationsRegion(Game.getCivsSize() - 1);
        }
        Game.hoverManager.resetHoverActive_Menu();
        Game.menuManager.rebuildScenarioCivilizationsList();
    }

    public void disposeData() {
        for (int i = 0; i < this.lFlags.size(); i++) {
            this.lFlags.get(i).getTexture().dispose();
        }
        this.lFlags.clear();
        this.lLoadedFlags_TagsIDs.clear();
        this.lCivsTags.clear();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight(), i, i2);
        super.beginClip(spriteBatch, i, i2, z);
        super.drawMenu(spriteBatch, i, i2, z);
        try {
            if (ScenarioCivilizations.listOfAllCivs) {
                for (int i3 = 1; i3 < getMenuElementsSize(); i3 += 2) {
                    if (getMenuElement(i3).getIsInView()) {
                        this.lFlags.get(getFlagID((i3 - 1) / 2)).draw(spriteBatch, getPosX() + getMenuElement(i3).getPosX() + (CFG.PADDING * 3) + i, (((getMenuElement(i3).getPosY() + getMenuPosY()) + (getMenuElement(i3).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
                        ImageManager.getImage(Images.flag_rect).draw(spriteBatch, getPosX() + getMenuElement(i3).getPosX() + (CFG.PADDING * 3) + i, (((getMenuElement(i3).getPosY() + getMenuPosY()) + (getMenuElement(i3).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2);
                    }
                }
            } else {
                for (int i4 = 0; i4 < getMenuElementsSize(); i4++) {
                    if (getMenuElement(i4).getIsInView()) {
                        this.lFlags.get(getFlagID(i4)).draw(spriteBatch, getPosX() + getMenuElement(i4).getPosX() + (CFG.PADDING * 3) + i, (((getMenuElement(i4).getPosY() + getMenuPosY()) + (getMenuElement(i4).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
                        ImageManager.getImage(Images.flag_rect).draw(spriteBatch, getPosX() + getMenuElement(i4).getPosX() + (CFG.PADDING * 3) + i, (((getMenuElement(i4).getPosY() + getMenuPosY()) + (getMenuElement(i4).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2);
                    }
                }
            }
        } catch (IndexOutOfBoundsException | NullPointerException unused) {
        }
        super.endClip(spriteBatch, i, i2, z, status);
    }

    public final void drawEditorMenuBG(SpriteBatch spriteBatch, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = i + i5;
        Renderer.drawBoxCorner(spriteBatch, i7, (i2 - getTitle().getHeight()) + i6, i3, getTitle().getHeight() + i4 + CFG.PADDING);
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.mainBox, i7, i2 + i6, i3, i4 + CFG.PADDING, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        if (z) {
            return;
        }
        disposeData();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        if (ScenarioCivilizations.listOfAllCivs) {
            getTitle().setText(Game.lang.get("AddCivilization") + " [" + this.lCivsTags.size() + "]");
        } else {
            getTitle().setText(Game.lang.get("Government") + " [" + this.sCivsTag + "]");
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateMenuElements_IsInView() {
        super.updateMenuElements_IsInView();
        if (!ScenarioCivilizations.listOfAllCivs) {
            for (int i = 0; i < getMenuElementsSize(); i++) {
                int isLoaded = getIsLoaded(this.lCivsTags.get(i));
                if (getMenuElement(i).getIsInView()) {
                    if (isLoaded < 0) {
                        loadFlag(i);
                    }
                } else if (isLoaded >= 0) {
                    this.lFlags.get(isLoaded).getTexture().dispose();
                    this.lFlags.set(isLoaded, null);
                    this.lFlags.remove(isLoaded);
                    this.lLoadedFlags_TagsIDs.remove(isLoaded);
                }
            }
            return;
        }
        for (int i2 = 1; i2 < getMenuElementsSize(); i2 += 2) {
            int i3 = (i2 - 1) / 2;
            int isLoaded2 = getIsLoaded(this.lCivsTags.get(i3));
            if (getMenuElement(i2).getIsInView()) {
                if (isLoaded2 < 0) {
                    loadFlag(i3);
                }
            } else if (isLoaded2 >= 0) {
                this.lFlags.get(isLoaded2).getTexture().dispose();
                this.lFlags.set(isLoaded2, null);
                this.lFlags.remove(isLoaded2);
                this.lLoadedFlags_TagsIDs.remove(isLoaded2);
            }
        }
    }
}
