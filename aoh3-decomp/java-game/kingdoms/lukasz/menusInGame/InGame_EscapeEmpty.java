package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_EscapeEmpty extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_EscapeEmpty$1, reason: invalid class name */
    class AnonymousClass1 extends Empty {
        AnonymousClass1(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_Escape(false);
        }
    }

    public InGame_EscapeEmpty() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT));
        arrayList.get(arrayList.size() - 1).setClickable(true);
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void onHovered() {
        super.onHovered();
        Game.menuManager.setOrderOfMenu_InGameEscape();
    }
}
