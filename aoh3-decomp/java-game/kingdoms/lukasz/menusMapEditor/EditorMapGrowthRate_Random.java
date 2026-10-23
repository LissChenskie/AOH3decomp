package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Slider;
import aoc.kingdoms.lukasz.menu_element.Status;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapGrowthRate_Random extends Menu {
    public static int iRandom;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapGrowthRate_Random$1, reason: invalid class name */
    class AnonymousClass1 extends Slider {
        AnonymousClass1(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(i, i2, i3, i4, i5, i6, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            EditorMapGrowthRate_Random.iRandom = getCurrent();
        }
    }

    public EditorMapGrowthRate_Random() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = (CFG.LEFT_MENU_WIDTH * 3) / 5;
        int i4 = (CFG.GAME_WIDTH - i3) - (CFG.PADDING * 4);
        int i5 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 4);
        int i6 = CFG.PADDING * 2;
        arrayList.add(new AnonymousClass1(i, i6, i3 - (i * 2), CFG.BUTTON_HEIGHT, 0, 20, iRandom));
        initMenu(new MenuTitle(Game.lang.get("Random"), 1.0f, i2, true, true), i4, i2 + i5, i3, Math.min(i6 + arrayList.get(arrayList.size() - 1).getHeight() + i6, (CFG.GAME_HEIGHT - i2) - (i5 * 2)), arrayList, true, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
