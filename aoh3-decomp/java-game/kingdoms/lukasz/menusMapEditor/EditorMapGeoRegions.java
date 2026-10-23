package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.map.civilization.stats.LQy.lJxd;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapGeoRegions extends Menu {
    protected static int currentGeoRegionID = 1;
    protected static List<UndoGeoRegion> lUndo = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapGeoRegions$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapGeoRegions$2, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapGeoRegions$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapGeoRegions.popUndo();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return EditorMapGeoRegions.lUndo.size() > 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Undo"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapGeoRegions$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
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

    public static class UndoGeoRegion {
        protected int iGeoRegion;
        protected int iProvinceID;

        public UndoGeoRegion(int i, int i2) {
            this.iProvinceID = i;
            this.iGeoRegion = i2;
        }
    }

    public EditorMapGeoRegions() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(null, 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass2("", 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true, false));
        arrayList.add(new AnonymousClass3(lJxd.kdrs, 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 3)) - (CFG.PADDING * 2), CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass4(null, 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static void actionUpdateData(boolean z) {
        if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
            return;
        }
        if (z) {
            addUndo(Game.iActiveProvince);
        }
        Game.getProvince(Game.iActiveProvince).setGeoRegion(currentGeoRegionID);
        ProvinceDrawDetails.updateDrawProvinceDetails_GeoRegion(Game.iActiveProvince);
    }

    private static final void addUndo(int i) {
        if (i < 0) {
            return;
        }
        if (lUndo.size() <= 0) {
            if (currentGeoRegionID != Game.getProvince(i).getGeoRegion()) {
                lUndo.add(new UndoGeoRegion(i, Game.getProvince(i).getGeoRegion()));
                return;
            }
            return;
        }
        List<UndoGeoRegion> list = lUndo;
        if (list.get(list.size() - 1).iProvinceID == i || currentGeoRegionID == Game.getProvince(i).getGeoRegion()) {
            return;
        }
        if (lUndo.size() > 50) {
            lUndo.remove(0);
        }
        lUndo.add(new UndoGeoRegion(i, Game.getProvince(i).getGeoRegion()));
    }

    protected static void popUndo() {
        if (lUndo.size() > 0) {
            List<UndoGeoRegion> list = lUndo;
            Game.iActiveProvince = list.get(list.size() - 1).iProvinceID;
            List<UndoGeoRegion> list2 = lUndo;
            currentGeoRegionID = list2.get(list2.size() - 1).iGeoRegion;
            actionUpdateData(false);
            if (!Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                Game.mapCoords.centerToProvinceID(Game.iActiveProvince);
            }
            List<UndoGeoRegion> list3 = lUndo;
            list3.remove(list3.size() - 1);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, i, (((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH, (CFG.BUTTON_WIDTH * 4) + (CFG.PADDING * 3) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, true, false);
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, (((CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 3)) - (CFG.PADDING * 3)) - Images.boxTitleBORDERWIDTH) + i, i2, (CFG.BUTTON_WIDTH * 3) + (CFG.PADDING * 3) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, false, true);
        drawEditorText(spriteBatch, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    public final void drawEditorText(SpriteBatch spriteBatch, int i, int i2) {
        String str = "Region: " + Game.geographicalRegions.lGeographicalRegions.get(currentGeoRegionID).sName;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(0), str);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
        Renderer.drawBoxCorner(spriteBatch, (CFG.PADDING * 4) + i, (CFG.PADDING * 4) + i2, (int) Renderer.glyphLayout.width, (int) Renderer.glyphLayout.height);
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, str, i + (CFG.PADDING * 4), i2 + (CFG.PADDING * 4), Colors.COLOR_TEXT_TITLE);
    }
}
