package aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menusEditor.GameCivs;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioWasteland extends Menu {
    public static boolean bSetWasteland_AvailableProvinces = true;
    public static List<Undo> lUndo = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWasteland$1, reason: invalid class name */
    class AnonymousClass1 extends Minimap {
        AnonymousClass1(int i, int i2) {
            super(i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return CFG.GAME_WIDTH - getWidth();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosY() {
            return CFG.GAME_HEIGHT - getHeight();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWasteland$2, reason: invalid class name */
    class AnonymousClass2 extends Text_Static {
        AnonymousClass2(String str, int i, int i2) {
            super(str, i, i2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Help")));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CustomizeWasteland"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SetWhichProvincesOfTheWorldAreWasteland"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, boolean z2) {
            Images.statsBG.draw2(spriteBatch, (getPosX() - (CFG.PADDING * 3)) + i, (getPosY() - (CFG.PADDING * 2)) + i2, Images.statsBG.getWidth(), (CFG.PADDING * 4) + getHeight());
            Images.statsBG2.draw2(spriteBatch, (getPosX() - (CFG.PADDING * 3)) + Images.statsBG.getWidth() + i, (getPosY() - (CFG.PADDING * 2)) + i2, (getWidth() + (CFG.PADDING * 6)) - Images.statsBG.getWidth(), getHeight() + (CFG.PADDING * 4), true, false);
            super.draw(spriteBatch, i, i2, z, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosX() {
            return (CFG.GAME_WIDTH - (CFG.PADDING * 4)) - getTextWidth();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getPosY() {
            return (ScenarioWasteland.this.getMenuElement(0).getPosY() - CFG.PADDING) - getHeight();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWasteland$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.brushTool = false;
            Game.menuManager.setViewID(View.SCENARIO_WASTELAND_CONTINENTS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SelectRegions"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("Back");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWasteland$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("Help")));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("CustomizeWasteland"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("SetWhichProvincesOfTheWorldAreWasteland"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(Colors.getColorTopStats(z, getIsHovered()));
            ImageManager.getImage(Images.information).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.information).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(Images.information).getHeight() / 2)) + i2);
            spriteBatch.setColor(Color.WHITE);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWasteland$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            GameCivs.sSearch = "";
            ScenarioWasteland.lUndo.clear();
            Game.iActiveProvince = -1;
            CFG.brushTool = false;
            Game.menuManager.setViewID(View.SCENARIO_CIVILIZATIONS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ManageCivilizations"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("Next");
        }
    }

    public static class Undo {
        public int iProvinceID;
        public int iState;

        public Undo(int i, int i2) {
            this.iProvinceID = i;
            this.iState = i2;
        }
    }

    public ScenarioWasteland() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(0, 0));
        arrayList.add(new AnonymousClass2(Game.lang.get("CustomizeWasteland"), CFG.PADDING, CFG.BUTTON_HEIGHT + (CFG.PADDING * 3)));
        arrayList.add(new AnonymousClass3(null, 1, -1, CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass4("", 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass5(null, 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static void actionUpdateData(boolean z) {
        if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince()) {
            return;
        }
        if (Game.getProvince(Game.iActiveProvince).isCapital && bSetWasteland_AvailableProvinces) {
            return;
        }
        if (z) {
            addUndo(Game.iActiveProvince);
        }
        if (bSetWasteland_AvailableProvinces && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
            int civID = Game.getProvince(Game.iActiveProvince).getCivID();
            Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).removeProvince(Game.iActiveProvince);
            Game.getProvince(Game.iActiveProvince).setCivID_Just(0);
            CivilizationRegionsManager.buildCivilizationsRegion(civID);
        }
        Game.getProvince(Game.iActiveProvince).setWasteland(bSetWasteland_AvailableProvinces ? 1 : -1);
        Game.updateProvincesInView = true;
        CivilizationRegionsManager.updateRegionsInView = true;
    }

    private static final void addUndo(int i) {
        if (i < 0) {
            return;
        }
        if ((Game.getProvince(i).getWasteland() >= 0) != bSetWasteland_AvailableProvinces) {
            if (lUndo.size() > 50) {
                lUndo.remove(0);
            }
            lUndo.add(new Undo(i, Game.getProvince(i).getWasteland()));
        }
    }

    protected static void popUndo() {
        if (lUndo.size() > 0) {
            List<Undo> list = lUndo;
            Game.iActiveProvince = list.get(list.size() - 1).iProvinceID;
            List<Undo> list2 = lUndo;
            bSetWasteland_AvailableProvinces = list2.get(list2.size() - 1).iState >= 0;
            actionUpdateData(false);
            if (!Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                Game.mapCoords.centerToProvinceID(Game.iActiveProvince);
            }
            List<Undo> list3 = lUndo;
            list3.remove(list3.size() - 1);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, i, i2, (CFG.BUTTON_WIDTH * 3) + (CFG.PADDING * 3) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, true, true);
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, (((CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH) + i, i2, (CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, false, true);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
