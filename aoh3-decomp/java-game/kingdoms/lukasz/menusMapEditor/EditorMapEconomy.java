package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameActiveProvince;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Slider;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapEconomy extends Menu {
    public static float currentEconomy = 50.0f;
    public static List<EditorMapGrowthRate.UndoGrowthRate> lUndo = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapEconomy.this.getMenuElement(1).setCurrent(EditorMapEconomy.this.getMenuElement(1).getCurrent() - 1);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy$2, reason: invalid class name */
    class AnonymousClass2 extends Slider {
        AnonymousClass2(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapEconomy.currentEconomy = getCurrent();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public Color getColorLEFT() {
            return CFG.getGrowthRateColor(getCurrent(), 1.0f);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.Slider
        public String getDrawText() {
            return getCurrent() + "%";
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapEconomy.this.getMenuElement(1).setCurrent(EditorMapEconomy.this.getMenuElement(1).getCurrent() + 1);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SaveManager.saveProvinceDetails();
            CFG.brushTool = false;
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
            Game.menuManager.addToast(Game.lang.get("Saved"));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Save"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonMain {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapEconomy.popUndo();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return EditorMapEconomy.lUndo.size() > 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Undo"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonMain {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapEconomy$8, reason: invalid class name */
    class AnonymousClass8 extends ButtonMain {
        AnonymousClass8(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
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

    public EditorMapEconomy() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1("-", 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass2(CFG.BUTTON_WIDTH + (CFG.PADDING * 2), (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - (CFG.PADDING * 4), CFG.BUTTON_HEIGHT, 0, 100, 50));
        arrayList.add(new AnonymousClass3("+", 1, -1, (CFG.GAME_WIDTH - CFG.PADDING) - CFG.BUTTON_WIDTH, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass4("", 1, -1, CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass5("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true, false));
        arrayList.add(new AnonymousClass6("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 3)) - (CFG.PADDING * 2), CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass7("", 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass8("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 4)) - (CFG.PADDING * 3), CFG.PADDING, CFG.BUTTON_WIDTH, MenuManager.mapEditorDrawProvinces));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static void actionUpdateData(boolean z) {
        if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
            return;
        }
        if (z) {
            addUndo(Game.iActiveProvince);
        }
        Game.getProvince(Game.iActiveProvince).BaseDevelopment = currentEconomy + (EditorMapEconomy_Random.iRandom > 0 ? Game.oR.nextInt(EditorMapEconomy_Random.iRandom + 1) : 0);
        ProvinceDrawDetails.updateDrawProvinceDetails_Economy(Game.iActiveProvince);
    }

    public static final void addUndo(int i) {
        if (i < 0) {
            return;
        }
        if (lUndo.size() <= 0) {
            if (currentEconomy != Game.getProvince(i).getGrowthRate()) {
                lUndo.add(new EditorMapGrowthRate.UndoGrowthRate(i, Game.getProvince(i).getGrowthRate()));
                return;
            }
            return;
        }
        List<EditorMapGrowthRate.UndoGrowthRate> list = lUndo;
        if (list.get(list.size() - 1).iProvinceID == i || currentEconomy == Game.getProvince(i).getGrowthRate()) {
            return;
        }
        if (lUndo.size() <= 50) {
            lUndo.add(new EditorMapGrowthRate.UndoGrowthRate(i, Game.getProvince(i).getGrowthRate()));
        } else {
            lUndo.remove(0);
            lUndo.add(new EditorMapGrowthRate.UndoGrowthRate(i, Game.getProvince(i).getGrowthRate()));
        }
    }

    public static void popUndo() {
        if (lUndo.size() > 0) {
            GameActiveProvince gameActiveProvince = Game.gameActiveProvince;
            List<EditorMapGrowthRate.UndoGrowthRate> list = lUndo;
            gameActiveProvince.setActiveProvinceID(list.get(list.size() - 1).iProvinceID);
            float f = currentEconomy;
            List<EditorMapGrowthRate.UndoGrowthRate> list2 = lUndo;
            currentEconomy = list2.get(list2.size() - 1).fGrowthRate;
            actionUpdateData(false);
            currentEconomy = f;
            if (!Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                Game.mapCoords.centerToProvinceID(Game.iActiveProvince);
            }
            List<EditorMapGrowthRate.UndoGrowthRate> list3 = lUndo;
            list3.remove(list3.size() - 1);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.boxSimple, i, ((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2), CFG.GAME_WIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2));
        Renderer.drawBox_EDGE_LorR(spriteBatch, Images.boxSimple, i, i2, (CFG.BUTTON_WIDTH * 4) + (CFG.PADDING * 3), CFG.BUTTON_HEIGHT + (CFG.PADDING * 2), true, true);
        Renderer.drawBox_EDGE_LorR(spriteBatch, Images.boxSimple, ((CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 4)) - (CFG.PADDING * 4)) + i, i2, (CFG.BUTTON_WIDTH * 4) + (CFG.PADDING * 4), CFG.BUTTON_HEIGHT + (CFG.PADDING * 2), false, true);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
