package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.map.Ship.ShipLine;
import aoc.kingdoms.lukasz.map.map.Ship.ShipManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapLines extends Menu {
    public static ShipLine shipLine = new ShipLine();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapLines$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapLines$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            FileHandle saveType = FileManager.getSaveType("map/" + Game.map.getFile_ActiveMap_Path() + "data/Lines_Sea.txt");
            saveType.writeString("\n", true);
            for (int i = 0; i < EditorMapLines.shipLine.pointsSize; i++) {
                saveType.writeString((EditorMapLines.shipLine.points.get(i).getPosX() / Game.mapBG.iMapScale) + ";", true);
            }
            saveType.writeString("\n", true);
            for (int i2 = 0; i2 < EditorMapLines.shipLine.pointsSize; i2++) {
                saveType.writeString((EditorMapLines.shipLine.points.get(i2).getPosY() / Game.mapBG.iMapScale) + ";", true);
            }
            ShipManager.addShipLine(EditorMapLines.shipLine);
            EditorMapLines.shipLine = new ShipLine();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Save"));
        }
    }

    public EditorMapLines() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(null, 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass2(null, 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static boolean keyUp(int i) {
        if (i == 67) {
            shipLine.removePoint();
            return true;
        }
        if (i != 62) {
            return false;
        }
        shipLine.addNewPoint();
        return true;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, i, (((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH, (CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, true, false);
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, (((CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH) + i, (((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH, (CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, false, false);
        Renderer.glyphLayout.setText(Renderer.fontMain.get(0), "SPACE -> ADD POINT\nBACKSPACE -> REMOVE POINT");
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
        Renderer.drawBoxCorner(spriteBatch, (CFG.PADDING * 3) + i, (CFG.PADDING * 3) + i2, ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 2), ((int) Renderer.glyphLayout.height) + (CFG.PADDING * 2));
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, "SPACE -> ADD POINT\nBACKSPACE -> REMOVE POINT", (CFG.PADDING * 4) + i, (CFG.PADDING * 4) + i2, Colors.COLOR_TEXT_TITLE);
        super.draw(spriteBatch, i, i2, z, status);
        for (int i3 = 0; i3 < ShipManager.shipLinesSize; i3++) {
            ShipManager.shipLines.get(i3).draw(spriteBatch);
        }
        shipLine.draw(spriteBatch);
    }
}
