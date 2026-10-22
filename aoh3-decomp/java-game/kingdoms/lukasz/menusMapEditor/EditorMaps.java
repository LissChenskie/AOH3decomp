package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMainDescripted;
import aoc.kingdoms.lukasz.menus.Dialog;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMaps extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMaps$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMaps$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.GO_TO_LINK = "http://www.ageofhistorygame.com/mapEditorTutorial.html";
            Dialog.setDialogType(Dialog.DialogType.GO_TO_LINK);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Tutorial"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMaps$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMainDescripted {
        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(str, str2, i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.EDITOR_MAPS_EDIT);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonMainDescripted, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            super.drawText(spriteBatch, i, i2, z);
            Game.map.lMaps.get(getCurrent()).Icon.draw(spriteBatch, i + getPosX() + (CFG.PADDING * 2), ((i2 + getPosY()) + (getHeight() / 2)) - (Game.map.lMaps.get(getCurrent()).Icon.getHeight() / 2));
        }
    }

    public EditorMaps() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        int width = (CFG.PADDING * 4) + Game.map.lMaps.get(0).Icon.getWidth();
        int i6 = i * 2;
        arrayList.add(new AnonymousClass1(null, 1, -1, i, CFG.PADDING, CFG.LEFT_MENU_WIDTH - i6, true));
        arrayList.add(new AnonymousClass2("", 1, -1, i, i5, CFG.LEFT_MENU_WIDTH - i6, true));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + i5 + i5;
        int i7 = 0;
        for (int size = Game.map.lMaps.size(); i7 < size; size = size) {
            int i8 = i7;
            arrayList.add(new AnonymousClass3(Game.lang.get("MapType") + ": " + Game.map.lMaps.get(i7).mapData.Name + " | " + Game.map.lMaps.get(i7).mapData.NumOfProvinces, Game.lang.get("Author") + ": " + Game.map.lMaps.get(i7).mapData.Author, 1, width, i, height, CFG.LEFT_MENU_WIDTH - i6, true, i7 == Game.map.getActiveMapID()));
            arrayList.get(arrayList.size() - 1).setCurrent(i8);
            height += arrayList.get(arrayList.size() - 1).getHeight() + i5;
            i7 = i8 + 1;
        }
        initMenuWithBackButton(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH, Math.min(height + arrayList.get(0).getHeight() + i5, ((CFG.GAME_HEIGHT - i2) - i4) - (CFG.PADDING * 2)), arrayList, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void updateLanguage() {
        super.updateLanguage();
        getTitle().setText(Game.lang.get("MapEditor"));
    }
}
