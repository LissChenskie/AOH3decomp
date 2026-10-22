package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menusEditor.GameCivs;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMap_FormableCivFormable extends Menu {
    private List<String> lCivsTags;
    private String sCivsTag = "";
    private List<Image> lFlags = new ArrayList();
    private List<Integer> lLoadedFlags_TagsIDs = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivFormable$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMap_CivSelect.selectMode = EditorMap_CivSelect.SelectMode.FORMABLE_CIV;
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_CIV_SELECT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivFormable$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince >= 0) {
                FormableCivManager.activeFormableCiv.CapitalProvinceID = Game.iActiveProvince;
                FormableCivManager.activeFormableCiv.addProvince(Game.iActiveProvince);
                setText(Game.lang.get("Capital") + ": " + (FormableCivManager.activeFormableCiv.CapitalProvinceID >= 0 ? Game.getProvince(FormableCivManager.activeFormableCiv.CapitalProvinceID).getProvinceName() : Game.lang.get("None")));
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivFormable$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivFormable$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            ImageManager.getImage(Images.wiki).draw(spriteBatch, ((i + getPosX()) + (getWidth() / 2)) - (ImageManager.getImage(Images.wiki).getWidth() / 2), ((i2 + getPosY()) + (getHeight() / 2)) - (ImageManager.getImage(Images.wiki).getHeight() / 2));
        }
    }

    public EditorMap_FormableCivFormable() {
        int i;
        this.lCivsTags = null;
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING * 2;
        int i3 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i4 = CFG.PADDING * 2;
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.PADDING * 2;
        int i7 = CFG.PADDING;
        this.lCivsTags = new ArrayList();
        ScenarioCivilizations.listOfAllCivs = true;
        GameCivs.sSearch = "";
        int i8 = i2 * 2;
        arrayList.add(new AnonymousClass1(Game.lang.get("SelectCivilization"), 1, -1, i2, i6, CFG.LEFT_MENU_WIDTH - i8, true));
        int height = i6 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
        arrayList.add(new AnonymousClass2(Game.lang.get("Capital") + ": " + (FormableCivManager.activeFormableCiv.CapitalProvinceID >= 0 ? Game.getProvince(FormableCivManager.activeFormableCiv.CapitalProvinceID).getProvinceName() : Game.lang.get("None")), 1, -1, i2, height, CFG.LEFT_MENU_WIDTH - i8, true));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + i6;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (FormableCivManager.activeFormableCiv.FormableCivTag != null) {
            arrayList2.add(Game.lang.getCiv(FormableCivManager.activeFormableCiv.FormableCivTag));
            arrayList3.add(FormableCivManager.activeFormableCiv.FormableCivTag);
        }
        int height3 = height2;
        while (arrayList2.size() > 0) {
            try {
                int i9 = 0;
                for (int i10 = 1; i10 < arrayList2.size(); i10++) {
                    if (CFG.compareAlphabetic_TwoString((String) arrayList2.get(i9), (String) arrayList2.get(i10))) {
                        i9 = i10;
                    }
                }
                i = i5;
                ArrayList arrayList4 = arrayList3;
                try {
                    arrayList.add(new AnonymousClass3(Game.lang.getCiv((String) arrayList3.get(i9)) + " [" + ((String) arrayList3.get(i9)) + "]", 1, (CFG.PADDING * 6) + CFG.CIV_FLAG_WIDTH, i2, height3, (CFG.LEFT_MENU_WIDTH - i8) - CFG.BUTTON_HEIGHT, true));
                    int i11 = i2;
                    arrayList.add(new AnonymousClass4("", 1, CFG.PADDING * 2, ((CFG.LEFT_MENU_WIDTH + i2) - i8) - CFG.BUTTON_HEIGHT, height3, CFG.BUTTON_HEIGHT, true));
                    height3 += arrayList.get(arrayList.size() - 1).getHeight() + i6;
                    this.lCivsTags.add((String) arrayList4.get(i9));
                    arrayList2.remove(i9);
                    arrayList4.remove(i9);
                    arrayList3 = arrayList4;
                    i5 = i;
                    i2 = i11;
                } catch (Exception e) {
                    e = e;
                    CFG.exceptionStack(e);
                    initMenu(new MenuTitle("", 1.0f, i3, true, false), i4, i3 + i, CFG.LEFT_MENU_WIDTH, Math.min(height3, (((((CFG.GAME_HEIGHT - i) - i3) - Game.mapBG.minimapOfCivilizations.getHeight()) - (Minimap.getPadding() * 2)) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 7)), arrayList, true);
                }
            } catch (Exception e2) {
                e = e2;
                i = i5;
            }
        }
        i = i5;
        initMenu(new MenuTitle("", 1.0f, i3, true, false), i4, i3 + i, CFG.LEFT_MENU_WIDTH, Math.min(height3, (((((CFG.GAME_HEIGHT - i) - i3) - Game.mapBG.minimapOfCivilizations.getHeight()) - (Minimap.getPadding() * 2)) - CFG.TEXT_HEIGHT) - (CFG.PADDING * 7)), arrayList, true);
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
                    this.lFlags.get(getFlagID((i3 - 2) / 2)).draw(spriteBatch, getPosX() + getMenuElement(i3).getPosX() + (CFG.PADDING * 3) + i, (((getMenuElement(i3).getPosY() + getMenuPosY()) + (getMenuElement(i3).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
                    ImageManager.getImage(Images.flag_rect).draw(spriteBatch, getPosX() + getMenuElement(i3).getPosX() + (CFG.PADDING * 3) + i, (((getMenuElement(i3).getPosY() + getMenuPosY()) + (getMenuElement(i3).getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2);
                }
            } catch (Exception unused) {
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
        getTitle().setText(Game.lang.get("FormableCivilization"));
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
