package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapResourcesList extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapResourcesList$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapResources.currentResourceID = getCurrent();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            super.drawText(spriteBatch, i, i2, z);
            ResourcesManager.resourceImages.get(getCurrent()).draw(spriteBatch, getPosX() + CFG.PADDING + i, ((getPosY() + (getHeight() / 2)) - (ResourcesManager.resourceImages.get(getCurrent()).getHeight() / 2)) + i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getCheckboxState() {
            return getCurrent() == EditorMapResources.currentResourceID;
        }
    }

    public EditorMapResourcesList() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = (CFG.LEFT_MENU_WIDTH * 3) / 5;
        int i4 = (CFG.GAME_WIDTH - i3) - (CFG.PADDING * 4);
        int i5 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 4);
        int i6 = CFG.PADDING * 2;
        int height = i6;
        int i7 = 0;
        while (i7 < ResourcesManager.iResourcesSize) {
            int i8 = i7;
            arrayList.add(new AnonymousClass1("" + ResourcesManager.lResources.get(i7).Name, 1, -1, i, height, i3 - (i * 2), true, true));
            arrayList.get(arrayList.size() - 1).setCurrent(i8);
            height += arrayList.get(arrayList.size() - 1).getHeight() + i6;
            i7 = i8 + 1;
        }
        initMenu(new MenuTitle(Game.lang.get("Resources"), 1.0f, i2, true, true), i4, i2 + i5, i3, Math.min(height, (CFG.GAME_HEIGHT - i2) - (i5 * 2)), arrayList, true, false);
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
        getTitle().setText(Game.lang.get("Resources"));
    }
}
