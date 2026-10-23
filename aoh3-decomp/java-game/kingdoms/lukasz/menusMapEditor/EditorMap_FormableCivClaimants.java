package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ColorTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMap_FormableCivClaimants extends Menu {
    private List<String> lCivsTags;
    private String sCivsTag = "";
    private List<Image> lFlags = new ArrayList();
    private List<Integer> lLoadedFlags_TagsIDs = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivClaimants$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMap_CivSelect.selectMode = EditorMap_CivSelect.SelectMode.FORMABLE_CLAIMANT;
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT_CIV_SELECT);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivClaimants$2, reason: invalid class name */
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
                arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("RemoveCivilization"), CFG.FONT_BOLD_SMALL));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                this.menuElementHover = new MenuElement_Hover(arrayList);
            } catch (IndexOutOfBoundsException unused) {
                super.buildElementHover();
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMap_FormableCivClaimants$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            ImageManager.getImage(Images.wiki).draw(spriteBatch, ((i + getPosX()) + (getWidth() / 2)) - (ImageManager.getImage(Images.wiki).getWidth() / 2), ((i2 + getPosY()) + (getHeight() / 2)) - (ImageManager.getImage(Images.wiki).getHeight() / 2));
        }
    }

    public EditorMap_FormableCivClaimants() {
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
        ScenarioCivilizations.listOfAllCivs = true;
        int i8 = i2 * 2;
        arrayList.add(new AnonymousClass1(Game.lang.get("AddCivilization"), 1, -1, i2, i6, CFG.LEFT_MENU_WIDTH - i8, true));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + i6 + i6;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int claimantsSize = FormableCivManager.activeFormableCiv.getClaimantsSize();
        for (int i9 = 0; i9 < claimantsSize; i9++) {
            arrayList2.add(Game.lang.getCiv(FormableCivManager.activeFormableCiv.ClaimantsTag.get(i9)));
            arrayList3.add(FormableCivManager.activeFormableCiv.ClaimantsTag.get(i9));
        }
        int height2 = height;
        while (arrayList2.size() > 0) {
            try {
                int i10 = 0;
                for (int i11 = 1; i11 < arrayList2.size(); i11++) {
                    if (CFG.compareAlphabetic_TwoString((String) arrayList2.get(i10), (String) arrayList2.get(i11))) {
                        i10 = i11;
                    }
                }
                int i12 = i10;
                i = i5;
                ArrayList arrayList4 = arrayList3;
                try {
                    arrayList.add(new AnonymousClass2(Game.lang.getCiv((String) arrayList3.get(i10)) + " [" + ((String) arrayList3.get(i10)) + "]", 1, (CFG.PADDING * 6) + CFG.CIV_FLAG_WIDTH, i2, height2, (CFG.LEFT_MENU_WIDTH - i8) - CFG.BUTTON_HEIGHT, true));
                    int i13 = i2;
                    arrayList.add(new AnonymousClass3("", 1, CFG.PADDING * 2, ((CFG.LEFT_MENU_WIDTH + i2) - i8) - CFG.BUTTON_HEIGHT, height2, CFG.BUTTON_HEIGHT, true));
                    height2 += arrayList.get(arrayList.size() - 1).getHeight() + i6;
                    this.lCivsTags.add((String) arrayList4.get(i12));
                    arrayList2.remove(i12);
                    arrayList4.remove(i12);
                    arrayList3 = arrayList4;
                    i5 = i;
                    i2 = i13;
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
            super.actionElement(i);
            return;
        }
        if (i % 2 == 1) {
            FormableCivManager.activeFormableCiv.removeClaimant(this.lCivsTags.get((i - 1) / 2));
            Game.menuManager.setViewIDWithoutAnimation(View.EDITOR_MAPS_EDIT_FORMABLE_CIV);
            return;
        }
        try {
            Dialog.GO_TO_LINK = CFG.WWW_WIKI + Game.loadCivilization(this.lCivsTags.get((i - 1) / 2)).Wiki;
            Dialog.setDialogType(Dialog.DialogType.GO_TO_LINK);
        } catch (GdxRuntimeException unused) {
            Game.menuManager.addToast_Error(Game.lang.get("NoData"));
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
        getTitle().setText(Game.lang.get("Claimants") + " [" + this.lCivsTags.size() + "]");
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
