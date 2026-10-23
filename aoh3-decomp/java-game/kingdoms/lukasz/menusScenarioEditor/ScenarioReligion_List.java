package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces;
import aoc.kingdoms.lukasz.menusScenarioEditor.Diplomacy.ScenarioDiplomacy;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioReligion_List extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioReligion_List$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        int id;

        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
            this.id = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int i = 0;
            if (ScenarioDiplomacy.goBackTo == View.IN_GAME) {
                while (i < EditorSelectProvinces.selectedProvinces.size()) {
                    Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).setReligion(this.id);
                    ProvinceDrawDetails.updateDrawProvinceDetails_ScenarioReligion(EditorSelectProvinces.selectedProvinces.get(i).intValue());
                    Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).getCivID());
                    i++;
                }
            } else {
                while (i < EditorSelectProvinces.selectedProvinces.size()) {
                    Game.mapScenarios.editorProvinceReligion.set(EditorSelectProvinces.selectedProvinces.get(i).intValue(), Integer.valueOf(this.id));
                    ProvinceDrawDetails.updateDrawProvinceDetails_ScenarioReligion(EditorSelectProvinces.selectedProvinces.get(i).intValue());
                    i++;
                }
            }
            Game.menuManager.addToastPositive(Game.lang.get("Done"), "", Images.v);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Religion") + ": " + getText(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioReligion_List$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        int id;

        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
            this.id = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            int i = 0;
            if (ScenarioDiplomacy.goBackTo == View.IN_GAME) {
                while (i < EditorSelectProvinces.selectedProvinces.size()) {
                    Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).setReligion(this.id);
                    ProvinceDrawDetails.updateDrawProvinceDetails_ScenarioReligion(EditorSelectProvinces.selectedProvinces.get(i).intValue());
                    Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).updateProvinceIncome();
                    Game.gameThread.addCivUpdateTotalIncomePerMonth(Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).getCivID());
                    i++;
                }
            } else {
                while (i < EditorSelectProvinces.selectedProvinces.size()) {
                    Game.mapScenarios.editorProvinceReligion.set(EditorSelectProvinces.selectedProvinces.get(i).intValue(), Integer.valueOf(this.id));
                    ProvinceDrawDetails.updateDrawProvinceDetails_ScenarioReligion(EditorSelectProvinces.selectedProvinces.get(i).intValue());
                    i++;
                }
            }
            Game.menuManager.addToastPositive(Game.lang.get("Done"), "", Images.v);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Religion") + ": " + getText(), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.religion, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    public ScenarioReligion_List() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = (CFG.LEFT_MENU_WIDTH * 3) / 5;
        int i4 = CFG.PADDING * 4;
        int i5 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 5);
        int i6 = CFG.PADDING * 2;
        int i7 = i3 - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Default"), 1, -1, i, i6, i7, true));
        arrayList.get(arrayList.size() - 1).setCurrent(-1);
        int height = arrayList.get(arrayList.size() - 1).getHeight() + i6 + i6;
        int i8 = 0;
        while (i8 < Game.religionManager.getReligionsSize()) {
            int i9 = i;
            int i10 = i8;
            arrayList.add(new AnonymousClass2(Game.religionManager.getReligion(i8).Name, 1, -1, i, height, i7, true));
            arrayList.get(arrayList.size() - 1).setCurrent(i10);
            height += arrayList.get(arrayList.size() - 1).getHeight() + i6;
            i8 = i10 + 1;
            i = i9;
        }
        initMenu(new MenuTitle(Game.lang.get("Religion"), 1.0f, i2, true, true), i4, i2 + i5, i3, Math.min(height, (CFG.GAME_HEIGHT - i2) - (i5 * 2)), arrayList, arrayList.size() > 0, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
