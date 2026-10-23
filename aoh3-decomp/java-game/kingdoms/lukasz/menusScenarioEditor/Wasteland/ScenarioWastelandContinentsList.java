package aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioWastelandContinentsList extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWastelandContinentsList$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
            super(str, i, i2, i3, i4, i5, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int current = getCurrent();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < Game.getProvincesSize(); i3++) {
                if (Game.getProvince(i3).getContinent() == current) {
                    if (Game.getProvince(i3).getWasteland() >= 0) {
                        i++;
                    } else {
                        i2++;
                    }
                }
            }
            setCheckboxState(i > i2);
            for (int i4 = 0; i4 < Game.getProvincesSize(); i4++) {
                if (Game.getProvince(i4).getContinent() == current) {
                    Game.getProvince(i4).setWasteland(i < i2 ? 0 : -1);
                }
            }
            Game.buildWastelandLevels();
            Game.updateProvincesInView = true;
            Game.menuManager.addToast(getText() + ": " + Game.lang.get(i < i2 ? "Disabled" : "Enabled"));
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.continents.lContinents.get(getCurrent()).sName, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("NumberOfProvinces") + ": ", CFG.FONT_REGULAR_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.countContinentProvinces(getCurrent()), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public ScenarioWastelandContinentsList() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = (CFG.LEFT_MENU_WIDTH * 3) / 5;
        int i4 = (CFG.GAME_WIDTH - i3) - (CFG.PADDING * 4);
        int i5 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 5);
        int i6 = CFG.PADDING * 2;
        int height = i6;
        int i7 = 1;
        for (int size = Game.continents.lContinents.size(); i7 < size; size = size) {
            int i8 = height;
            int i9 = i7;
            arrayList.add(new AnonymousClass1("" + Game.continents.lContinents.get(i7).sName, 1, -1, i, i8, i3 - (i * 2), true, true));
            arrayList.get(arrayList.size() - 1).setCurrent(i9);
            height = i8 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
            i7 = i9 + 1;
        }
        initMenu(new MenuTitle(Game.lang.get("Continents"), 1.0f, i2, true, true), i4, i2 + i5, i3, Math.min(height, (CFG.GAME_HEIGHT - i2) - (i5 * 2)), arrayList, true, false);
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
        getTitle().setText(Game.lang.get("Continents"));
    }
}
