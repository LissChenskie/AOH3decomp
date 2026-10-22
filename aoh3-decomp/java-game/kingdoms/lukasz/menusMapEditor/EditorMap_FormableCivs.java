package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMap_FormableCivs extends Menu {
    private List<String> lCivsTags;
    private List<Image> lFlags = new ArrayList();
    private List<Integer> lLoadedFlags_TagsIDs = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivs$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivs$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            FormableCivManager.activeFormableCiv = new FormableCivManager.FormableCiv();
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_FORMABLE_CIV);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("AddNewFormableCivilization"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivs$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            ImageManager.getImage(Images.wiki).draw(spriteBatch, ((i + getPosX()) + (getWidth() / 2)) - (ImageManager.getImage(Images.wiki).getWidth() / 2), ((i2 + getPosY()) + (getHeight() / 2)) - (ImageManager.getImage(Images.wiki).getHeight() / 2));
        }
    }

    public EditorMap_FormableCivs() {
        this.lCivsTags = null;
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.PADDING;
        this.lCivsTags = new ArrayList();
        int i7 = i * 2;
        arrayList.add(new AnonymousClass1(null, 1, -1, i, i5, CFG.LEFT_MENU_WIDTH - i7, true));
        int height = i5 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass2(null, 1, -1, i, height, CFG.LEFT_MENU_WIDTH - i7, true));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        if (FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/AoH.txt").exists()) {
            String[] strArrSplit = FileManager.loadFile("map/" + Game.map.getFile_ActiveMap_Path() + "formableCivs/AoH.txt").readString().replace(".txt", "").split(";");
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            int length = strArrSplit.length;
            for (int i8 = 0; i8 < length; i8++) {
                arrayList2.add(Game.lang.getCiv(strArrSplit[i8]));
                arrayList3.add(strArrSplit[i8]);
            }
            while (arrayList2.size() > 0) {
                try {
                    int i9 = 0;
                    for (int i10 = 1; i10 < arrayList2.size(); i10++) {
                        if (CFG.compareAlphabetic_TwoString((String) arrayList2.get(i9), (String) arrayList2.get(i10))) {
                            i9 = i10;
                        }
                    }
                    int i11 = i9;
                    arrayList.add(new ButtonMain(Game.lang.getCiv((String) arrayList3.get(i9)) + " [" + ((String) arrayList3.get(i9)) + "]", 1, CFG.CIV_FLAG_WIDTH + (CFG.PADDING * 2), i, height2, (CFG.LEFT_MENU_WIDTH - i7) - CFG.BUTTON_HEIGHT, true));
                    int i12 = i;
                    ArrayList arrayList4 = arrayList3;
                    arrayList.add(new AnonymousClass3("", 1, CFG.PADDING * 2, ((CFG.LEFT_MENU_WIDTH + i) - i7) - CFG.BUTTON_HEIGHT, height2, CFG.BUTTON_HEIGHT, true));
                    height2 += arrayList.get(arrayList.size() - 1).getHeight() + i5;
                    this.lCivsTags.add((String) arrayList4.get(i11));
                    arrayList2.remove(i11);
                    arrayList4.remove(i11);
                    arrayList3 = arrayList4;
                    i = i12;
                } catch (Exception e) {
                    CFG.exceptionStack(e);
                }
            }
        }
        initMenu(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH, (CFG.GAME_HEIGHT - i2) - (i4 * 2), arrayList, true);
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
        if (i < 2) {
            super.actionElement(i);
            return;
        }
        if (i % 2 != 0) {
            try {
                Dialog.GO_TO_LINK = CFG.WWW_WIKI + Game.loadCivilization(this.lCivsTags.get((i - 2) / 2)).Wiki;
                Dialog.setDialogType(Dialog.DialogType.GO_TO_LINK);
                return;
            } catch (GdxRuntimeException unused) {
                Game.menuManager.addToast_Error(Game.lang.get("NoData"));
                return;
            }
        }
        FormableCivManager.activeFormableCiv = new FormableCivManager.FormableCiv();
        FormableCivManager.loadActiveFormableCivilization(this.lCivsTags.get((i - 2) / 2) + ".txt");
        if (FormableCivManager.activeFormableCiv.FormableCivTag != null) {
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_FORMABLE_CIV);
            if (FormableCivManager.activeFormableCiv.CapitalProvinceID >= 0) {
                Game.mapCoords.centerToProvinceID(FormableCivManager.activeFormableCiv.CapitalProvinceID);
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
        for (int i3 = 2; i3 < getMenuElementsSize(); i3 += 2) {
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
        getTitle().setText(Game.lang.get("FormableCivilizations") + " [" + this.lCivsTags.size() + "]");
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateMenuElements_IsInView() {
        super.updateMenuElements_IsInView();
        for (int i = 2; i < getMenuElementsSize(); i += 2) {
            int i2 = (i - 2) / 2;
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
