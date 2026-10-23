package aoc.kingdoms.lukasz.menusMapEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.advisors.VjN.hQfu;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import com.badlogic.gdx.assets.loaders.Wkvw.PZBvyl;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class EditorMapProvinceConnectionsList extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceConnectionsList$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapCoords.centerToProvinceID(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(getCurrent()).getProvinceName(), CFG.FONT_BOLD_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Province") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(getCurrent()).getProvinceID(), CFG.FONT_REGULAR_SMALL, Colors.BUTTON_TEXT_ACTIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("Terrain") + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.terrainManager.terrains.get(Game.getProvince(getCurrent()).getTerrainID()).Name, CFG.FONT_REGULAR_SMALL, Colors.BUTTON_TEXT_ACTIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusMapEditor.EditorMapProvinceConnectionsList$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapCoords.centerToProvinceID(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.getProvince(getCurrent()).getProvinceName(), CFG.FONT_BOLD_SMALL));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(hQfu.Tee) + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.getProvince(getCurrent()).getProvinceID(), CFG.FONT_REGULAR_SMALL, Colors.BUTTON_TEXT_ACTIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(PZBvyl.inOb) + ": ", CFG.FONT_BOLD_SMALL));
            arrayList2.add(new MenuElement_HoverElement_Type_Text("" + Game.terrainManager.terrains.get(Game.getProvince(getCurrent()).getTerrainID()).Name, CFG.FONT_REGULAR_SMALL, Colors.BUTTON_TEXT_ACTIVE));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public EditorMapProvinceConnectionsList() {
        int i;
        String str;
        ArrayList arrayList = new ArrayList();
        int i2 = CFG.PADDING * 2;
        int i3 = CFG.BUTTON_HEIGHT;
        int i4 = CFG.LEFT_MENU_WIDTH / 2;
        int i5 = (CFG.GAME_WIDTH - i4) - (CFG.PADDING * 4);
        int i6 = CFG.PADDING * 4;
        int i7 = CFG.PADDING * 2;
        if (EditorMapProvinceConnections.activeProvinceID >= 0) {
            int height = i7;
            int i8 = 0;
            while (true) {
                str = "";
                if (i8 >= Game.getProvince(EditorMapProvinceConnections.activeProvinceID).getNeighboringProvincesSize()) {
                    break;
                }
                int i9 = i5;
                int i10 = i8;
                arrayList.add(new AnonymousClass1("" + Game.getProvince(EditorMapProvinceConnections.activeProvinceID).getNeighboringProvinces(i8), 1, -1, i2, height, i4 - (i2 * 2), true));
                arrayList.get(arrayList.size() - 1).setCurrent(Game.getProvince(EditorMapProvinceConnections.activeProvinceID).getNeighboringProvinces(i10));
                height += arrayList.get(arrayList.size() - 1).getHeight() + i7;
                i8 = i10 + 1;
                i5 = i9;
            }
            i = i5;
            int i11 = 0;
            while (i11 < Game.getProvince(EditorMapProvinceConnections.activeProvinceID).getNeighboringSeaProvincesSize()) {
                arrayList.add(new AnonymousClass2(str + Game.getProvince(EditorMapProvinceConnections.activeProvinceID).getNeighboringSeaProvinces(i11), 1, -1, i2, height, i4 - (i2 * 2), true));
                arrayList.get(arrayList.size() - 1).setCurrent(Game.getProvince(EditorMapProvinceConnections.activeProvinceID).getNeighboringSeaProvinces(i11));
                height += arrayList.get(arrayList.size() - 1).getHeight() + i7;
                i11++;
                i2 = i2;
                str = str;
            }
            i7 = height;
        } else {
            i = i5;
        }
        initMenu(new MenuTitle(Game.lang.get("Province") + ": " + EditorMapProvinceConnections.activeProvinceID, 1.0f, i3, true, true), i, i3 + i6, i4, Math.min(i7, (CFG.GAME_HEIGHT - i3) - (i6 * 2)), arrayList, EditorMapProvinceConnections.activeProvinceID >= 0, false);
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
        getTitle().setText(Game.lang.get("Province") + ": " + EditorMapProvinceConnections.activeProvinceID);
    }
}
