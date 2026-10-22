package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapTerrainType extends Menu {
    protected static int currentTerrainTypeID = 1;
    protected static List<UndoTerrain> lUndo = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapTerrainType$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SaveManager.saveProvinceDetails();
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
            Game.menuManager.addToast(Game.lang.get("Saved"));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Save"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapTerrainType$2, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapTerrainType$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapTerrainType.popUndo();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return EditorMapTerrainType.lUndo.size() > 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Undo"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapTerrainType$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapTerrainType$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
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

    public static class UndoTerrain {
        protected int iProvinceID;
        protected int iTerrainID;

        public UndoTerrain(int i, int i2) {
            this.iProvinceID = i;
            this.iTerrainID = i2;
        }
    }

    public EditorMapTerrainType() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(null, 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass2("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true, false));
        arrayList.add(new AnonymousClass3("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 3)) - (CFG.PADDING * 2), CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass4("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 4)) - (CFG.PADDING * 3), CFG.PADDING, CFG.BUTTON_WIDTH, MenuManager.mapEditorDrawProvinces));
        arrayList.add(new AnonymousClass5(null, 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static void actionUpdateData(boolean z) {
        if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
            return;
        }
        if (z) {
            addUndo(Game.iActiveProvince);
        }
        Game.getProvince(Game.iActiveProvince).setTerrainID(currentTerrainTypeID);
        ProvinceDrawDetails.updateDrawProvinceDetails_Terrain(Game.iActiveProvince);
    }

    private static final void addUndo(int i) {
        if (i < 0) {
            return;
        }
        if (lUndo.size() <= 0) {
            if (currentTerrainTypeID != Game.getProvince(i).getTerrainID()) {
                lUndo.add(new UndoTerrain(i, Game.getProvince(i).getTerrainID()));
                return;
            }
            return;
        }
        List<UndoTerrain> list = lUndo;
        if (list.get(list.size() - 1).iProvinceID == i || currentTerrainTypeID == Game.getProvince(i).getTerrainID()) {
            return;
        }
        if (lUndo.size() > 50) {
            lUndo.remove(0);
        }
        lUndo.add(new UndoTerrain(i, Game.getProvince(i).getTerrainID()));
    }

    protected static void popUndo() {
        if (lUndo.size() > 0) {
            List<UndoTerrain> list = lUndo;
            Game.iActiveProvince = list.get(list.size() - 1).iProvinceID;
            List<UndoTerrain> list2 = lUndo;
            currentTerrainTypeID = list2.get(list2.size() - 1).iTerrainID;
            actionUpdateData(false);
            if (!Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                Game.mapCoords.centerToProvinceID(Game.iActiveProvince);
            }
            List<UndoTerrain> list3 = lUndo;
            list3.remove(list3.size() - 1);
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
        String str = Game.lang.get("Terrain") + ": " + Game.terrainManager.terrains.get(currentTerrainTypeID).Name;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(0), str);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
        Renderer.drawBoxCorner(spriteBatch, (CFG.PADDING * 4) + i, (CFG.PADDING * 4) + i2, (int) Renderer.glyphLayout.width, (int) Renderer.glyphLayout.height);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, str, i + (CFG.PADDING * 4), i2 + (CFG.PADDING * 4), Colors.COLOR_TEXT_TITLE);
    }
}
