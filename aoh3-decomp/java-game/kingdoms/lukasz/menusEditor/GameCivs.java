package aoc.kingdoms.lukasz.menusEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ColorTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menus.Dialog;
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
public class GameCivs extends Menu {
    public static String chosen_AlphabetCharachter = "";
    public static String sSearch = "";
    private List<String> lCivsTags;
    private List<Image> lFlags = new ArrayList();
    private List<Integer> lLoadedFlags_TagsIDs = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.GameCivs$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.GameCivs$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
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
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Group") + ": ", CFG.FONT_REGULAR_SMALL));
                arrayList2.add(new MenuElement_HoverElement_Type_Text(RulersManager.groups.get(loadCivilizationDataLoadCivilization.GroupID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.GameCivs$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            ImageManager.getImage(Images.wiki).draw(spriteBatch, ((i + getPosX()) + (getWidth() / 2)) - (ImageManager.getImage(Images.wiki).getWidth() / 2), ((i2 + getPosY()) + (getHeight() / 2)) - (ImageManager.getImage(Images.wiki).getHeight() / 2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0207  */
    /* JADX WARN: Code duplicated, block: B:52:0x020f A[Catch: Exception -> 0x02df, TryCatch #0 {Exception -> 0x02df, blocks: (B:47:0x0201, B:50:0x0209, B:52:0x020f, B:55:0x0222, B:56:0x0225), top: B:68:0x0201 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0221  */
    /* JADX WARN: Code duplicated, block: B:84:0x0222 A[SYNTHETIC] */
    public GameCivs() {
        int height;
        int i;
        int i2;
        int i3;
        int i4;
        this.lCivsTags = null;
        ArrayList arrayList = new ArrayList();
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.BUTTON_HEIGHT;
        int i7 = CFG.GAME_WIDTH / 10;
        int i8 = CFG.GAME_HEIGHT / 10;
        int i9 = CFG.PADDING * 2;
        int i10 = CFG.PADDING;
        this.lCivsTags = new ArrayList();
        int i11 = i5 * 2;
        arrayList.add(new AnonymousClass1(null, 1, -1, i5, i9, CFG.LEFT_MENU_WIDTH - i11, true));
        int height2 = arrayList.get(arrayList.size() - 1).getHeight() + i9 + i9;
        String[] strArrSplit = FileManager.loadFile("game/Civilizations.txt").readString().split(";");
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (String str : strArrSplit) {
            arrayList4.add(str);
        }
        if (CFG.isDesktop()) {
            int i12 = 0;
            while (i12 < SteamManager.modsFoldersSize) {
                for (FileHandle fileHandle : FileManager.IS_MAC ? Gdx.files.external(SteamManager.modsFolders.get(i12) + "game/civilizations/").list() : Gdx.files.internal(SteamManager.modsFolders.get(i12) + "game/civilizations/").list()) {
                    arrayList4.add(fileHandle.name().replace(".json", ""));
                }
                i12++;
                height2 = height2;
            }
            height = height2;
            for (int i13 = 0; i13 < SteamManager.itemsInstalledSize; i13++) {
                for (FileHandle fileHandle2 : Gdx.files.absolute(SteamManager.itemsInstalled.get(i13).getFolder() + "/game/civilizations/").list()) {
                    arrayList4.add(fileHandle2.name().replace(".json", ""));
                }
            }
        } else {
            height = height2;
        }
        if (sSearch.length() <= 0) {
            if (chosen_AlphabetCharachter.length() > 0) {
                int size = arrayList4.size();
                for (int i14 = 0; i14 < size; i14++) {
                    if (Game.lang.getCiv((String) arrayList4.get(i14)).charAt(0) == chosen_AlphabetCharachter.charAt(0)) {
                        arrayList2.add(Game.lang.getCiv((String) arrayList4.get(i14)));
                        arrayList3.add((String) arrayList4.get(i14));
                    }
                }
            } else {
                i = 0;
                int size2 = arrayList4.size();
                for (int i15 = 0; i15 < size2; i15++) {
                    arrayList2.add(Game.lang.getCiv((String) arrayList4.get(i15)));
                    arrayList3.add((String) arrayList4.get(i15));
                }
            }
            while (arrayList2.size() > 0) {
                try {
                    i3 = i;
                    for (i4 = 1; i4 < arrayList2.size(); i4++) {
                        if (CFG.compareAlphabetic_TwoString((String) arrayList2.get(i3), (String) arrayList2.get(i4))) {
                            i3 = i4;
                        }
                    }
                    int i16 = i;
                    ArrayList arrayList5 = arrayList3;
                    i2 = i8;
                    ArrayList arrayList6 = arrayList2;
                    try {
                        arrayList.add(new AnonymousClass2(Game.lang.getCiv((String) arrayList3.get(i3)) + " [" + ((String) arrayList3.get(i3)) + "]", 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i5, height, (CFG.LEFT_MENU_WIDTH - i11) - CFG.BUTTON_HEIGHT, true));
                        int i17 = i5;
                        arrayList.add(new AnonymousClass3("", 1, CFG.PADDING * 2, ((CFG.LEFT_MENU_WIDTH + i5) - i11) - CFG.BUTTON_HEIGHT, height, CFG.BUTTON_HEIGHT, true));
                        height += arrayList.get(arrayList.size() - 1).getHeight() + i9;
                        this.lCivsTags.add((String) arrayList5.get(i3));
                        arrayList6.remove(i3);
                        arrayList5.remove(i3);
                        arrayList3 = arrayList5;
                        arrayList2 = arrayList6;
                        i8 = i2;
                        i5 = i17;
                        i = i16;
                    } catch (Exception e) {
                        e = e;
                        CFG.exceptionStack(e);
                        initMenu(new MenuTitle("", 1.0f, i6, true, true), i7, i6 + i2, CFG.LEFT_MENU_WIDTH, ((CFG.GAME_HEIGHT - i6) - i2) - (CFG.PADDING * 2), arrayList, true);
                    }
                } catch (Exception e2) {
                    e = e2;
                    i2 = i8;
                }
            }
            i2 = i8;
            initMenu(new MenuTitle("", 1.0f, i6, true, true), i7, i6 + i2, CFG.LEFT_MENU_WIDTH, ((CFG.GAME_HEIGHT - i6) - i2) - (CFG.PADDING * 2), arrayList, true);
        }
        int size3 = arrayList4.size();
        for (int i18 = 0; i18 < size3; i18++) {
            if (Game.lang.getCiv((String) arrayList4.get(i18)).toLowerCase().indexOf(sSearch.toLowerCase()) >= 0) {
                arrayList2.add(Game.lang.getCiv((String) arrayList4.get(i18)));
                arrayList3.add((String) arrayList4.get(i18));
            }
        }
        i = 0;
        while (arrayList2.size() > 0) {
            i3 = i;
            while (i4 < arrayList2.size()) {
                if (CFG.compareAlphabetic_TwoString((String) arrayList2.get(i3), (String) arrayList2.get(i4))) {
                    i3 = i4;
                }
            }
            int i19 = i;
            ArrayList arrayList7 = arrayList3;
            i2 = i8;
            ArrayList arrayList8 = arrayList2;
            arrayList.add(new AnonymousClass2(Game.lang.getCiv((String) arrayList3.get(i3)) + " [" + ((String) arrayList3.get(i3)) + "]", 1, (CFG.PADDING * 2) + CFG.CIV_FLAG_WIDTH, i5, height, (CFG.LEFT_MENU_WIDTH - i11) - CFG.BUTTON_HEIGHT, true));
            int i110 = i5;
            arrayList.add(new AnonymousClass3("", 1, CFG.PADDING * 2, ((CFG.LEFT_MENU_WIDTH + i5) - i11) - CFG.BUTTON_HEIGHT, height, CFG.BUTTON_HEIGHT, true));
            height += arrayList.get(arrayList.size() - 1).getHeight() + i9;
            this.lCivsTags.add((String) arrayList7.get(i3));
            arrayList8.remove(i3);
            arrayList7.remove(i3);
            arrayList3 = arrayList7;
            arrayList2 = arrayList8;
            i8 = i2;
            i5 = i110;
            i = i19;
        }
        i2 = i8;
        initMenu(new MenuTitle("", 1.0f, i6, true, true), i7, i6 + i2, CFG.LEFT_MENU_WIDTH, ((CFG.GAME_HEIGHT - i6) - i2) - (CFG.PADDING * 2), arrayList, true);
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
            super.actionElement(i);
            return;
        }
        if (i % 2 == 1) {
            GameCivsEdit.nCiv = Game.loadCivilization(this.lCivsTags.get((i - 1) / 2));
            GameCivsEdit.goBackTo = View.EDITOR_GAMECIVS;
            Game.menuManager.setViewID(View.EDITOR_GAMECIVS_EDIT);
        } else {
            try {
                Dialog.GO_TO_LINK = CFG.WWW_WIKI + Game.loadCivilization(this.lCivsTags.get((i - 1) / 2)).Wiki;
                Dialog.setDialogType(Dialog.DialogType.GO_TO_LINK);
            } catch (GdxRuntimeException unused) {
                Game.menuManager.addToast_Error(Game.lang.get("NoData"));
            }
        }
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
                    this.lFlags.get(getFlagID((i3 - 1) / 2)).draw(spriteBatch, getPosX() + getMenuElement(i3).getPosX() + CFG.PADDING + i, (((getMenuElement(i3).getPosY() + getMenuPosY()) + (getMenuElement(i3).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
                    ImageManager.getImage(Images.flag_rect).draw(spriteBatch, (((getPosX() + getMenuElement(i3).getPosX()) + (getMenuElement(i3).getTextPos() / 2)) - (CFG.CIV_FLAG_WIDTH / 2)) + i, (((getMenuElement(i3).getPosY() + getMenuPosY()) + (getMenuElement(i3).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2);
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
        FileManager.loadFile("game/Civilizations.txt").readString().split(";");
        getTitle().setText(Game.lang.get("GameCivilizations") + " [" + this.lCivsTags.size() + "]");
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
