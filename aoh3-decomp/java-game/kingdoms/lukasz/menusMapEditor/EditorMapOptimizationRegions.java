package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameActiveProvince;
import aoc.kingdoms.lukasz.jakowski.Region;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.map.terrain.exjB.uiwPYaNhJS;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.FQy.TGqtTWl;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Slider;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.google.android.gms.internal.tasks.Vhe.SwmJtrccN;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapOptimizationRegions extends Menu {
    public static int activeRegion;
    public static List<UndoOptimizationRegions> lUndo = new ArrayList();
    public static List<Color> lColors = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapOptimizationRegions$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapOptimizationRegions.this.getMenuElement(1).setCurrent(EditorMapOptimizationRegions.this.getMenuElement(1).getCurrent() - 1);
            EditorMapOptimizationRegions.this.getMenuElement(1).setMax(Game.regions.iRegionsSize);
            EditorMapOptimizationRegions.activeRegion = EditorMapOptimizationRegions.this.getMenuElement(1).getCurrent();
            EditorMapOptimizationRegions.this.centerToActiveRegionID();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapOptimizationRegions$2, reason: invalid class name */
    class AnonymousClass2 extends Slider {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(str, i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapOptimizationRegions.activeRegion = getCurrent();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapOptimizationRegions$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapOptimizationRegions.this.getMenuElement(1).setCurrent(EditorMapOptimizationRegions.this.getMenuElement(1).getCurrent() + 1);
            EditorMapOptimizationRegions.this.getMenuElement(1).setMax(Game.regions.iRegionsSize);
            EditorMapOptimizationRegions.activeRegion = EditorMapOptimizationRegions.this.getMenuElement(1).getCurrent();
            EditorMapOptimizationRegions.this.centerToActiveRegionID();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapOptimizationRegions$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            EditorMapOptimizationRegions.saveRegions();
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
            Game.menuManager.addToast(Game.lang.get("Saved"));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Save"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapOptimizationRegions$5, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapOptimizationRegions$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonMain {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapOptimizationRegions.popUndo();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return EditorMapOptimizationRegions.lUndo.size() > 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Undo"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapOptimizationRegions$7, reason: invalid class name */
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
            setText(Game.lang.get(uiwPYaNhJS.QZfi));
        }
    }

    public static class UndoOptimizationRegions {
        public int iProvinceID;
        public int iRegionID;

        public UndoOptimizationRegions(int i, int i2) {
            this.iProvinceID = i;
            this.iRegionID = i2;
        }
    }

    public EditorMapOptimizationRegions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1("-", 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass2("SET TO REGION ID: ", CFG.BUTTON_WIDTH + (CFG.PADDING * 2), (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - (CFG.PADDING * 4), CFG.BUTTON_HEIGHT, 0, Game.regions.iRegionsSize, 0));
        arrayList.add(new AnonymousClass3("+", 1, -1, (CFG.GAME_WIDTH - CFG.PADDING) - CFG.BUTTON_WIDTH, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass4("", 1, -1, CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass5("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true, false));
        arrayList.add(new AnonymousClass6("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 3)) - (CFG.PADDING * 2), CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass7("", 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static void actionUpdateData(boolean z) {
        if (Game.iActiveProvince >= 0) {
            if (z) {
                addUndo(Game.iActiveProvince);
            }
            for (int i = 0; i < Game.regions.lRegions.size(); i++) {
                for (int i2 = 0; i2 < Game.regions.lRegions.get(i).getProvincesSize(); i2++) {
                    if (Game.regions.lRegions.get(i).getProvince(i2) == Game.iActiveProvince) {
                        Game.regions.lRegions.get(i).removeProvince(i2);
                        Game.regions.lRegions.get(i).buildRegionBounds();
                    }
                }
            }
            if (activeRegion >= Game.regions.lRegions.size()) {
                lColors.add(CFG.getRandomColor());
                Game.regions.lRegions.add(new Region());
                Game.regions.lRegions.get(Game.regions.lRegions.size() - 1).addProvince(Game.iActiveProvince);
                Game.regions.lRegions.get(Game.regions.lRegions.size() - 1).buildRegionBounds();
                Game.regions.updateRegionsSize();
            } else {
                Game.regions.lRegions.get(activeRegion).addProvince(Game.iActiveProvince);
                Game.regions.lRegions.get(activeRegion).buildRegionBounds();
            }
            ProvinceDrawDetails.updateDrawProvinceDetails_OptimizationRegions(Game.iActiveProvince);
        }
    }

    public static final void addUndo(int i) {
        if (i < 0) {
            return;
        }
        if (lUndo.size() <= 0) {
            if (activeRegion != Game.getRegionID(i)) {
                lUndo.add(new UndoOptimizationRegions(i, Game.getRegionID(i)));
                return;
            }
            return;
        }
        List<UndoOptimizationRegions> list = lUndo;
        if (list.get(list.size() - 1).iProvinceID == i || activeRegion == Game.getRegionID(i)) {
            return;
        }
        if (lUndo.size() <= 50) {
            lUndo.add(new UndoOptimizationRegions(i, Game.getRegionID(i)));
        } else {
            lUndo.remove(0);
            lUndo.add(new UndoOptimizationRegions(i, Game.getRegionID(i)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void centerToActiveRegionID() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            if (Game.regions.getRegionID(i) == activeRegion) {
                Game.mapCoords.centerToProvinceID(i);
                Game.iActiveProvince = i;
                return;
            }
        }
        Game.menuManager.addToast("0 PROVINCES");
    }

    public static void popUndo() {
        if (lUndo.size() > 0) {
            GameActiveProvince gameActiveProvince = Game.gameActiveProvince;
            List<UndoOptimizationRegions> list = lUndo;
            gameActiveProvince.setActiveProvinceID(list.get(list.size() - 1).iProvinceID);
            int i = activeRegion;
            List<UndoOptimizationRegions> list2 = lUndo;
            activeRegion = list2.get(list2.size() - 1).iRegionID;
            actionUpdateData(false);
            activeRegion = i;
            if (!Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                Game.mapCoords.centerToProvinceID(Game.iActiveProvince);
            }
            List<UndoOptimizationRegions> list3 = lUndo;
            list3.remove(list3.size() - 1);
        }
    }

    protected static final void saveRegions() {
        FileHandle saveType = FileManager.getSaveType(SwmJtrccN.uunvinZ + Game.map.getFile_ActiveMap_Path() + "data/ProvinceOptimizationRegions.txt");
        int i = 0;
        while (i < Game.regions.lRegions.size()) {
            if (Game.regions.lRegions.get(i).getProvincesSize() == 0) {
                Game.regions.lRegions.remove(i);
                Game.regions.iRegionsSize = Game.regions.lRegions.size();
                i--;
            }
            i++;
        }
        String str = "";
        for (int i2 = 0; i2 < Game.regions.lRegions.size(); i2++) {
            for (int i3 = 0; i3 < Game.regions.lRegions.get(i2).getProvincesSize(); i3++) {
                str = str + Game.regions.lRegions.get(i2).getProvince(i3) + ";";
            }
            if (i2 != Game.regions.lRegions.size() - 1) {
                str = str + "\n";
            }
        }
        saveType.writeString(str, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBox_EDGE_TOP_LR(spriteBatch, Images.boxSimple, i, ((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2), CFG.GAME_WIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2));
        Renderer.drawBox_EDGE_LorR(spriteBatch, Images.boxSimple, i, i2, (CFG.BUTTON_WIDTH * 4) + (CFG.PADDING * 3), CFG.BUTTON_HEIGHT + (CFG.PADDING * 2), true, true);
        Renderer.drawBox_EDGE_LorR(spriteBatch, Images.boxSimple, ((CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 3)) - (CFG.PADDING * 3)) + i, i2, (CFG.BUTTON_WIDTH * 3) + (CFG.PADDING * 3), CFG.BUTTON_HEIGHT + (CFG.PADDING * 2), false, true);
        drawEditorText(spriteBatch, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    public final void drawEditorText(SpriteBatch spriteBatch, int i, int i2) {
        String str = "SET TO REGION ID: " + activeRegion + (Game.iActiveProvince >= 0 ? "\n\nACTIVE PROVINCE REGION ID: " + Game.getRegionID(Game.iActiveProvince) + TGqtTWl.tHHhdIKMHg + Game.regions.lRegions.get(Game.getRegionID(Game.iActiveProvince)).getProvincesSize() + "\nWIDTH: " + (Game.regions.lRegions.get(Game.getRegionID(Game.iActiveProvince)).getMaxX() - Game.regions.lRegions.get(Game.getRegionID(Game.iActiveProvince)).getMinX()) + " [" + ((int) (((Game.regions.lRegions.get(Game.getRegionID(Game.iActiveProvince)).getMaxX() - Game.regions.lRegions.get(Game.getRegionID(Game.iActiveProvince)).getMinX()) * 100.0f) / Game.mapBG.getWidth())) + "%]\nHEIGHT:" + (Game.regions.lRegions.get(Game.getRegionID(Game.iActiveProvince)).getMaxY() - Game.regions.lRegions.get(Game.getRegionID(Game.iActiveProvince)).getMinY()) + " [" + ((int) (((Game.regions.lRegions.get(Game.getRegionID(Game.iActiveProvince)).getMaxY() - Game.regions.lRegions.get(Game.getRegionID(Game.iActiveProvince)).getMinY()) * 100.0f) / Game.mapBG.getHeight())) + "%]" : "");
        Renderer.glyphLayout.setText(Renderer.fontMain.get(0), str);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
        Renderer.drawBoxCorner(spriteBatch, (CFG.PADDING * 4) + i, (CFG.PADDING * 6) + i2 + CFG.BUTTON_HEIGHT, (int) Renderer.glyphLayout.width, (int) Renderer.glyphLayout.height);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, str, i + (CFG.PADDING * 4), i2 + (CFG.PADDING * 6) + CFG.BUTTON_HEIGHT, Colors.COLOR_TEXT_TITLE);
    }
}
