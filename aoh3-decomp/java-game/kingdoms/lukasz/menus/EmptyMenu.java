package aoc.kingdoms.lukasz.menus;

import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Empty;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EmptyMenu extends Menu {
    public EmptyMenu() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Empty(0, 0, 1, 1));
        initMenu(null, 0, 0, 2, 2, arrayList, false);
        getMenuElement(0).setVisible(false);
    }
}
