package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawDetails;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioCores_InProvinces extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCores_InProvinces$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        int id;

        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
            this.id = 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            for (int i = 0; i < EditorSelectProvinces.selectedProvinces.size(); i++) {
                Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i).intValue()).removeCore_ScenarioEditor(this.id);
                ProvinceDrawDetails.updateDrawProvinceDetails_ScenarioCores(EditorSelectProvinces.selectedProvinces.get(i).intValue());
            }
            Game.menuManager.addToastPositive(Game.lang.get("Removed"), "", Images.v);
            Game.menuManager.rebuildScenarioCoresList_InProvince();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Remove") + ": " + Game.lang.get("Core"), Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.x, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void setCurrent(int i) {
            this.id = i;
        }
    }

    public ScenarioCores_InProvinces() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = (CFG.LEFT_MENU_WIDTH * 3) / 5;
        int i4 = CFG.PADDING * 4;
        int i5 = CFG.BUTTON_HEIGHT + (CFG.PADDING * 5);
        int i6 = CFG.PADDING * 2;
        ArrayList arrayList2 = new ArrayList();
        for (int i7 = 0; i7 < EditorSelectProvinces.selectedProvinces.size(); i7++) {
            for (int i8 = 0; i8 < Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i7).intValue()).iCoresSize; i8++) {
                if (!arrayList2.contains(Integer.valueOf(Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i7).intValue()).getCore(i8)))) {
                    arrayList2.add(Integer.valueOf(Game.getProvince(EditorSelectProvinces.selectedProvinces.get(i7).intValue()).getCore(i8)));
                }
            }
        }
        int height = i6;
        int i9 = 0;
        while (i9 < arrayList2.size()) {
            int i10 = i3 - (i * 2);
            int i11 = height;
            int i12 = i;
            int i13 = i9;
            int i14 = i;
            ArrayList arrayList3 = arrayList2;
            arrayList.add(new AnonymousClass1(Game.getCiv(((Integer) arrayList2.get(i9)).intValue()).getCivName(), 1, -1, i12, i11, i10, true));
            arrayList.get(arrayList.size() - 1).setCurrent(((Integer) arrayList3.get(i13)).intValue());
            height = i11 + arrayList.get(arrayList.size() - 1).getHeight() + i6;
            i9 = i13 + 1;
            arrayList2 = arrayList3;
            i = i14;
        }
        initMenu(new MenuTitle(Game.lang.get("Cores"), 1.0f, i2, true, true), i4, i2 + i5, i3, Math.min(height, (CFG.GAME_HEIGHT - i2) - (i5 * 2)), arrayList, arrayList.size() > 0, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
