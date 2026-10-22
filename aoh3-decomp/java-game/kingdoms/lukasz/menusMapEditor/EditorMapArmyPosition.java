package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.AA_KeyManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.backends.android.surfaceview.JuyF.CvuNnwgYwe;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapArmyPosition extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapArmyPosition$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapArmyPosition$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
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

    public EditorMapArmyPosition() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(null, 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass2(null, 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static boolean keyUp(int i) {
        if (Game.iActiveProvince < 0) {
            return false;
        }
        if (i == 21) {
            Game.getProvince(Game.iActiveProvince).setShiftX(Game.getProvince(Game.iActiveProvince).getShiftX() - 1);
            return true;
        }
        if (i == 22) {
            Game.getProvince(Game.iActiveProvince).setShiftX(Game.getProvince(Game.iActiveProvince).getShiftX() + 1);
            return true;
        }
        if (i == 19) {
            Game.getProvince(Game.iActiveProvince).setShiftY(Game.getProvince(Game.iActiveProvince).getShiftY() - 1);
            return true;
        }
        if (i == 20) {
            Game.getProvince(Game.iActiveProvince).setShiftY(Game.getProvince(Game.iActiveProvince).getShiftY() + 1);
            return true;
        }
        if (AA_KeyManager.CTRL_HOLD) {
            if (i == 29) {
                Game.getProvince(Game.iActiveProvince).setShiftX(Game.getProvince(Game.iActiveProvince).getShiftX() - 25);
                return true;
            }
            if (i == 32) {
                Game.getProvince(Game.iActiveProvince).setShiftX(Game.getProvince(Game.iActiveProvince).getShiftX() + 25);
                return true;
            }
            if (i == 51) {
                Game.getProvince(Game.iActiveProvince).setShiftY(Game.getProvince(Game.iActiveProvince).getShiftY() - 25);
                return true;
            }
            if (i != 47) {
                return false;
            }
            Game.getProvince(Game.iActiveProvince).setShiftY(Game.getProvince(Game.iActiveProvince).getShiftY() + 25);
            return true;
        }
        if (i == 29) {
            Game.getProvince(Game.iActiveProvince).setShiftX(Game.getProvince(Game.iActiveProvince).getShiftX() - 5);
            return true;
        }
        if (i == 32) {
            Game.getProvince(Game.iActiveProvince).setShiftX(Game.getProvince(Game.iActiveProvince).getShiftX() + 5);
            return true;
        }
        if (i == 51) {
            Game.getProvince(Game.iActiveProvince).setShiftY(Game.getProvince(Game.iActiveProvince).getShiftY() - 5);
            return true;
        }
        if (i != 47) {
            return false;
        }
        Game.getProvince(Game.iActiveProvince).setShiftY(Game.getProvince(Game.iActiveProvince).getShiftY() + 5);
        return true;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, i, (((CFG.GAME_HEIGHT + i2) - CFG.BUTTON_HEIGHT) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH, (CFG.BUTTON_WIDTH * 4) + (CFG.PADDING * 3) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, true, false);
        drawEditorText(spriteBatch, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    public final void drawEditorText(SpriteBatch spriteBatch, int i, int i2) {
        String str = CvuNnwgYwe.endgcvQs + Game.iActiveProvince;
        Renderer.glyphLayout.setText(Renderer.fontMain.get(0), str);
        spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.6f));
        Renderer.drawBoxCorner(spriteBatch, (CFG.PADDING * 3) + i, (CFG.PADDING * 3) + i2, ((int) Renderer.glyphLayout.width) + (CFG.PADDING * 2), ((int) Renderer.glyphLayout.height) + (CFG.PADDING * 2));
        spriteBatch.setColor(Color.WHITE);
        Renderer.drawText(spriteBatch, str, i + (CFG.PADDING * 4), i2 + (CFG.PADDING * 4), Colors.COLOR_TEXT_TITLE);
    }
}
