package aoc.kingdoms.lukasz.menusScenarioEditor;

import androidx.core.text.util.pRCP.IwYCCQBuFGwl;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMainReverse;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ColorTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menusEditor.GameCivs;
import aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioCores_List extends Menu {
    private List<String> lCivsTags;
    private String sCivsTag = "";
    private List<Image> lFlags = new ArrayList();
    private List<Integer> lLoadedFlags_TagsIDs = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCores_List$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMainReverse {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return super.getTextToDraw() + Keyboard.getKeyboardVerticalLine();
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCores_List$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCores_List$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCores_List$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            ImageManager.getImage(Images.wiki).draw(spriteBatch, ((i + getPosX()) + (getWidth() / 2)) - (ImageManager.getImage(Images.wiki).getWidth() / 2), ((i2 + getPosY()) + (getHeight() / 2)) - (ImageManager.getImage(Images.wiki).getHeight() / 2));
        }
    }

    public ScenarioCores_List() {
        int i;
        this.lCivsTags = null;
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING * 2;
        int i3 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i4 = (CFG.GAME_WIDTH - CFG.LEFT_MENU_WIDTH) - (CFG.PADDING * 4);
        int i5 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 6);
        int i6 = CFG.PADDING * 2;
        int i7 = CFG.PADDING;
        this.lCivsTags = new ArrayList();
        Keyboard keyboard = Game.keyboard;
        if (Keyboard.keyboardMode) {
            arrayList.add(new AnonymousClass1("", 1, -1, i2, i6, CFG.LEFT_MENU_WIDTH - (i2 * 2), true));
        } else {
            arrayList.add(new AnonymousClass2("", 1, -1, i2, i6, CFG.LEFT_MENU_WIDTH - (i2 * 2), true));
        }
        int i8 = 1;
        int height = i6 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
        ArrayList arrayList2 = new ArrayList();
        for (String str : FileManager.loadFile("game/Civilizations.txt").readString().split(";")) {
            arrayList2.add(str);
        }
        if (CFG.isDesktop()) {
            for (int i9 = 0; i9 < SteamManager.modsFoldersSize; i9++) {
                for (FileHandle fileHandle : FileManager.IS_MAC ? Gdx.files.external(SteamManager.modsFolders.get(i9) + "game/civilizations/").list() : Gdx.files.internal(SteamManager.modsFolders.get(i9) + "game/civilizations/").list()) {
                    arrayList2.add(fileHandle.name().replace(".json", ""));
                }
            }
            for (int i10 = 0; i10 < SteamManager.itemsInstalledSize; i10++) {
                for (FileHandle fileHandle2 : Gdx.files.absolute(SteamManager.itemsInstalled.get(i10).getFolder() + "/game/civilizations/").list()) {
                    arrayList2.add(fileHandle2.name().replace(".json", ""));
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        if (GameCivs.sSearch.length() > 0) {
            int size = arrayList2.size();
            for (int i11 = 0; i11 < size; i11++) {
                if (Game.lang.getCiv((String) arrayList2.get(i11)).toLowerCase().indexOf(GameCivs.sSearch.toLowerCase()) >= 0) {
                    arrayList3.add(Game.lang.getCiv((String) arrayList2.get(i11)));
                    arrayList4.add((String) arrayList2.get(i11));
                }
            }
        } else {
            int size2 = arrayList2.size();
            for (int i12 = 0; i12 < size2; i12++) {
                arrayList3.add(Game.lang.getCiv((String) arrayList2.get(i12)));
                arrayList4.add((String) arrayList2.get(i12));
            }
        }
        int height2 = height;
        while (arrayList3.size() > 0) {
            try {
                int i13 = 0;
                for (int i14 = i8; i14 < arrayList3.size(); i14++) {
                    if (CFG.compareAlphabetic_TwoString((String) arrayList3.get(i13), (String) arrayList3.get(i14))) {
                        i13 = i14;
                    }
                }
                int i15 = i2 * 2;
                int i16 = i13;
                i = i5;
                ArrayList arrayList5 = arrayList4;
                try {
                    arrayList.add(new AnonymousClass3(Game.lang.getCiv((String) arrayList4.get(i13)) + " [" + ((String) arrayList4.get(i13)) + IwYCCQBuFGwl.phSeDSZ, 1, (CFG.PADDING * 6) + CFG.CIV_FLAG_WIDTH, i2, height2, (CFG.LEFT_MENU_WIDTH - i15) - CFG.BUTTON_HEIGHT, true));
                    arrayList.add(new AnonymousClass4("", 1, CFG.PADDING * 2, ((CFG.LEFT_MENU_WIDTH + i2) - i15) - CFG.BUTTON_HEIGHT, height2, CFG.BUTTON_HEIGHT, true));
                    height2 += arrayList.get(arrayList.size() - 1).getHeight() + i6;
                    this.lCivsTags.add((String) arrayList5.get(i16));
                    arrayList3.remove(i16);
                    arrayList5.remove(i16);
                    i8 = 1;
                    arrayList4 = arrayList5;
                    i5 = i;
                } catch (Exception e) {
                    e = e;
                    CFG.exceptionStack(e);
                    initMenu(new MenuTitle("", 1.0f, i3, true, false), i4, i3 + i, CFG.LEFT_MENU_WIDTH, Math.min(height2, (((((CFG.GAME_HEIGHT - i) - i3) - Game.mapBG.minimapOfCivilizations.getHeight()) - (Minimap.getPadding() * 2)) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 7)), arrayList, true);
                }
            } catch (Exception e2) {
                e = e2;
                i = i5;
            }
        }
        i = i5;
        initMenu(new MenuTitle("", 1.0f, i3, true, false), i4, i3 + i, CFG.LEFT_MENU_WIDTH, Math.min(height2, (((((CFG.GAME_HEIGHT - i) - i3) - Game.mapBG.minimapOfCivilizations.getHeight()) - (Minimap.getPadding() * 2)) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 7)), arrayList, true);
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
            try {
                try {
                    try {
                        this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + this.lCivsTags.get(i) + ".png")), Texture.TextureFilter.Nearest));
                    } catch (GdxRuntimeException unused) {
                        this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/ran.png")), Texture.TextureFilter.Nearest));
                    }
                } catch (GdxRuntimeException unused2) {
                    this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + Game.ideologiesManager.getRealTag(this.lCivsTags.get(i)) + ".png")), Texture.TextureFilter.Nearest));
                }
            } catch (GdxRuntimeException unused3) {
                this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + Game.ideologiesManager.getRealTag(this.lCivsTags.get(i)) + ".png")), Texture.TextureFilter.Nearest));
            }
        } catch (GdxRuntimeException unused4) {
            this.lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + this.lCivsTags.get(i) + ".png")), Texture.TextureFilter.Nearest));
        }
        this.lLoadedFlags_TagsIDs.add(Integer.valueOf(i));
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionElement(int i) {
        if (i == 0) {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SEARCH_SCENARIO_CORES_CIVS, GameCivs.sSearch);
            Game.menuManager.rebuildScenarioCoresList();
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
        if (EditorSelectProvinces.selectedProvinces.size() > 0) {
            int i2 = (i - 1) / 2;
            int civID = Game.getCivID(this.lCivsTags.get(i2));
            if (civID < 0) {
                Game.addCivilization(this.lCivsTags.get(i2), Game.iActiveProvince, true, true, false, false, false);
                civID = Game.getCivID(this.lCivsTags.get(i2));
            }
            if (civID > 0) {
                for (int i3 = 0; i3 < EditorSelectProvinces.selectedProvinces.size(); i3++) {
                    Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i3).intValue()).addCore(civID);
                    ProvinceDrawDetails.updateDrawProvinceDetails_ScenarioCores(EditorSelectProvinces.selectedProvinces.get(i3).intValue());
                }
                Game.menuManager.rebuildScenarioCoresList_InProvince();
                Game.menuManager.addToastGold(Game.lang.get("Added"), Images.v);
            }
        }
        Game.hoverManager.resetHoverActive_Menu();
        Game.menuManager.rebuildScenarioCoresList();
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
        for (int i3 = 1; i3 < getMenuElementsSize(); i3 += 2) {
            try {
                if (getMenuElement(i3).getIsInView()) {
                    this.lFlags.get(getFlagID((i3 - 1) / 2)).draw(spriteBatch, getPosX() + getMenuElement(i3).getPosX() + (CFG.PADDING * 3) + i, (((getMenuElement(i3).getPosY() + getMenuPosY()) + (getMenuElement(i3).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
                    ImageManager.getImage(Images.flag_rect).draw(spriteBatch, getPosX() + getMenuElement(i3).getPosX() + (CFG.PADDING * 3) + i, (((getMenuElement(i3).getPosY() + getMenuPosY()) + (getMenuElement(i3).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2);
                }
            } catch (IndexOutOfBoundsException | NullPointerException unused) {
            }
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
        getTitle().setText(Game.lang.get(fiRhHJntP.mTZHcSsS) + " [" + this.lCivsTags.size() + "]");
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateMenuElements_IsInView() {
        super.updateMenuElements_IsInView();
        for (int i = 1; i < getMenuElementsSize(); i += 2) {
            int i2 = (i - 1) / 2;
            int isLoaded = getIsLoaded(this.lCivsTags.get(i2));
            if (getMenuElement(i).getIsInView()) {
                if (isLoaded < 0) {
                    loadFlag(i2);
                }
            } else if (isLoaded >= 0) {
                this.lFlags.get(isLoaded).getTexture().dispose();
                this.lFlags.set(isLoaded, null);
                this.lFlags.remove(isLoaded);
                this.lLoadedFlags_TagsIDs.remove(isLoaded);
            }
        }
    }
}
