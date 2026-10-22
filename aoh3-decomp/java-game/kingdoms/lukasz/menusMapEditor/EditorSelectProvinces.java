package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorSelectProvinces extends Menu {
    public static List<Integer> selectedProvinces = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            Game.menuManager.setViewID(View.EDITOR);
            Game.menuManager.addToast(Game.lang.get("Saved"));
            if (EditorSelectProvinces.selectedProvinces.size() > 0) {
                FileHandle saveType = FileManager.getSaveType(CFG.FILE_SELECTED_PROVINCES);
                saveType.writeString("", false);
                for (int i = 0; i < EditorSelectProvinces.selectedProvinces.size(); i++) {
                    saveType.writeString(EditorSelectProvinces.selectedProvinces.get(i) + ";", true);
                }
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle("List of selected provinces will be saved in this file: ", CFG.FONT_REGULAR));
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(CFG.FILE_SELECTED_PROVINCES, CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle(Images.provinces, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Save"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = !CFG.brushTool;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return CFG.brushTool;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Brush"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            Game.menuManager.setViewID(View.EDITOR);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.selectMode = !CFG.selectMode;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return CFG.selectMode;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Select"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MenuManager.mapEditorDrawProvinces = !MenuManager.mapEditorDrawProvinces;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return MenuManager.mapEditorDrawProvinces;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Map"));
        }
    }

    public EditorSelectProvinces() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(null, 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass2("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true, false));
        arrayList.add(new AnonymousClass3(null, 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass4("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 3)) - (CFG.PADDING * 2), CFG.PADDING, CFG.BUTTON_WIDTH, CFG.selectMode, false));
        arrayList.add(new AnonymousClass5(hQfu.PGWNCodCbpHVLKd, 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 4)) - (CFG.PADDING * 3), CFG.PADDING, CFG.BUTTON_WIDTH, MenuManager.mapEditorDrawProvinces));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static final void addSelectedProvince(int i) {
        if (selectedProvinces.contains(Integer.valueOf(i))) {
            return;
        }
        selectedProvinces.add(Integer.valueOf(i));
    }

    public static final void removeSelectedProvince(int i) {
        for (int i2 = 0; i2 < selectedProvinces.size(); i2++) {
            if (selectedProvinces.get(i2).intValue() == i) {
                selectedProvinces.remove(i2);
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.boxSimple, i, ((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2), (CFG.BUTTON_WIDTH * 4) + (CFG.PADDING * 3), CFG.BUTTON_HEIGHT + (CFG.PADDING * 2));
        Renderer.drawBox_EDGE_LorR(spriteBatch, Images.boxSimple, ((CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 4)) - (CFG.PADDING * 4)) + i, i2, (CFG.BUTTON_WIDTH * 4) + (CFG.PADDING * 4), CFG.BUTTON_HEIGHT + (CFG.PADDING * 2), false, true);
        drawEditorText(spriteBatch, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    public final void drawEditorText(SpriteBatch spriteBatch, int i, int i2) {
    }
}
