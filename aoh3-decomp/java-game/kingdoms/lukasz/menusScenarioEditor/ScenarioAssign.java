package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.civilization.CivilizationRegionsManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menusEditor.GameCivs;
import aoc.kingdoms.lukasz.menusScenarioEditor.Wasteland.ScenarioWasteland;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioAssign extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign$2, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AssignProvinces"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ClickAProvinceOnTheMapToAssignProvinceToCivilization"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
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
            return (ScenarioAssign.this.getMenuElement(0).getPosY() - CFG.PADDING) - getHeight();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            GameCivs.sSearch = "";
            Game.mapBG.requestToDisposeMinimap = true;
            CFG.brushTool = false;
            ScenarioWasteland.lUndo.clear();
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
            setText("Back");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign$4, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("AssignProvinces"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ClickAProvinceOnTheMapToAssignProvinceToCivilization"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.mapBG.requestToDisposeMinimap = true;
            CFG.brushTool = false;
            ScenarioWasteland.lUndo.clear();
            Game.menuManager.setViewID(View.SCENARIO_SETTINGS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("ScenarioSettings"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("Next");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonTopFlag {
        AnonymousClass6(int i, int i2, boolean z) {
            super(i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTopFlag
        protected void drawBG(SpriteBatch spriteBatch, int i, int i2, boolean z) {
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTopFlag
        public int getFlagCivID() {
            return CFG.iCreateScenario_AssignProvinces_Civ;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign$7, reason: invalid class name */
    class AnonymousClass7 extends Game.SimpleTask {
        AnonymousClass7(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.buildCivilizationsRegion(this.id);
            Game.updateProvincesInView = true;
            CivilizationRegionsManager.updateRegionsInView = true;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioAssign$8, reason: invalid class name */
    class AnonymousClass8 extends Game.SimpleTask {
        AnonymousClass8(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            CivilizationRegionsManager.buildCivilizationsRegion(this.id);
            Game.updateProvincesInView = true;
            CivilizationRegionsManager.updateRegionsInView = true;
        }
    }

    public ScenarioAssign() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(0, 0));
        arrayList.add(new AnonymousClass2(Game.lang.get("AssignProvinces"), CFG.PADDING, CFG.BUTTON_HEIGHT + (CFG.PADDING * 3)));
        arrayList.add(new AnonymousClass3(null, 1, -1, CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass4("", 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass5(null, 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass6((CFG.PADDING * 5) + (CFG.BUTTON_WIDTH * 3) + Images.boxTitleBORDERWIDTH, CFG.PADDING * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static void actionUpdateData(boolean z) {
        try {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getSeaProvince() || Game.getProvince(Game.iActiveProvince).getWasteland() >= 0 || Game.getProvince(Game.iActiveProvince).getCivID() == CFG.iCreateScenario_AssignProvinces_Civ) {
                return;
            }
            if (Game.getProvince(Game.iActiveProvince).isCapital) {
                if (!CFG.brushTool) {
                    Dialog.setDialogType(Dialog.DialogType.CREATE_SCENARIO_ASSIGN_CIVILIZATION);
                    return;
                } else {
                    if (CFG.actionBrush) {
                        return;
                    }
                    Dialog.setDialogType(Dialog.DialogType.CREATE_SCENARIO_ASSIGN_CIVILIZATION);
                    return;
                }
            }
            if (z) {
                addUndo(Game.iActiveProvince);
            }
            if (Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
                int civID = Game.getProvince(Game.iActiveProvince).getCivID();
                Game.getProvince(Game.iActiveProvince).setCivID_RemoveOldAddNewToCiv(CFG.iCreateScenario_AssignProvinces_Civ);
                Game.gameThreadUpdate.addSimpleTask(new AnonymousClass7("buildCivilizationsRegion" + civID, civID));
            } else {
                Game.getProvince(Game.iActiveProvince).setCivID_RemoveOldAddNewToCiv(CFG.iCreateScenario_AssignProvinces_Civ);
            }
            Game.updateProvinceBorder(Game.iActiveProvince);
            if (CFG.iCreateScenario_AssignProvinces_Civ > 0) {
                Game.gameThreadUpdate.addSimpleTask(new AnonymousClass8("buildCivilizationsRegion" + CFG.iCreateScenario_AssignProvinces_Civ, CFG.iCreateScenario_AssignProvinces_Civ));
            }
        } catch (IndexOutOfBoundsException e) {
            CFG.exceptionStack(e);
        }
    }

    private static final void addUndo(int i) {
        if (i >= 0 && Game.getProvince(i).getCivID() != CFG.iCreateScenario_AssignProvinces_Civ) {
            if (ScenarioWasteland.lUndo.size() > 50) {
                ScenarioWasteland.lUndo.remove(0);
            }
            ScenarioWasteland.lUndo.add(new ScenarioWasteland.Undo(i, Game.getProvince(i).getCivID()));
        }
    }

    public static void popUndo() {
        if (ScenarioWasteland.lUndo.size() > 0) {
            int i = CFG.iCreateScenario_AssignProvinces_Civ;
            Game.iActiveProvince = ScenarioWasteland.lUndo.get(ScenarioWasteland.lUndo.size() - 1).iProvinceID;
            CFG.iCreateScenario_AssignProvinces_Civ = ScenarioWasteland.lUndo.get(ScenarioWasteland.lUndo.size() - 1).iState;
            actionUpdateData(false);
            CFG.iCreateScenario_AssignProvinces_Civ = i;
            if (!Game.getProvince(Game.iActiveProvince).getDrawProvince()) {
                Game.mapCoords.centerToProvinceID(Game.iActiveProvince);
            }
            ScenarioWasteland.lUndo.remove(ScenarioWasteland.lUndo.size() - 1);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, i, i2, (CFG.BUTTON_WIDTH * 3) + (CFG.PADDING * 3) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, true, true);
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, (((CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH) + i, i2, (CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, false, true);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
