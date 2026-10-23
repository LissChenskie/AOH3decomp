package aoc.kingdoms.lukasz.menusScenarioEditor;

import aoc.kingdoms.lukasz.jakowski.AI.Values.nvwi.cIUGJCqyPXfp;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_FlagTitle;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Static;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g3d.model.data.xlbt.LBhZogys;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ScenarioCivilizations extends Menu {
    public static boolean listOfAllCivs = true;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations$2, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ManageCivilizations"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ClickAprovinceOnTheMapToAddOrRemoveCivilization"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
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
            return (ScenarioCivilizations.this.getMenuElement(0).getPosY() - CFG.PADDING) - getHeight();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.hideKeyboard();
            Game.mapBG.requestToDisposeMinimap = true;
            Game.menuManager.setViewID(View.SCENARIO_WASTELAND);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("CustomizeWasteland"), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("Back");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations$4, reason: invalid class name */
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
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get("ManageCivilizations"), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text(Game.lang.get(cIUGJCqyPXfp.vllgSZQtupeJ), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT2));
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.hideKeyboard();
            Game.mapBG.requestToDisposeMinimap = true;
            CFG.iCreateScenario_AssignProvinces_Civ = 0;
            Game.menuManager.setViewID(View.SCENARIO_ASSIGN);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(HTGgowNjn.RjICUOzDsdapp), Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("Next");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonMain {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.iCreateScenario_ActiveProvinceID = Game.iActiveProvince;
            Dialog.setDialogType(Dialog.DialogType.CREATE_SCENARIO_REMOVE_CIVILIZATION);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            try {
                if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get(LBhZogys.gJNmuIEShdP)));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    this.menuElementHover = new MenuElement_Hover(arrayList);
                } else {
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    arrayList4.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iActiveProvince).getCivID()));
                    arrayList4.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("RemoveCivilization") + ": "));
                    arrayList4.add(new MenuElement_HoverElement_Type_TextTitle(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName(), Colors.HOVER_GOLD));
                    arrayList3.add(new MenuElement_HoverElement(arrayList4));
                    arrayList4.clear();
                    this.menuElementHover = new MenuElement_Hover(arrayList3);
                }
            } catch (IndexOutOfBoundsException unused) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        public void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            if (!getClickable()) {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.7f));
            }
            Game.getCiv(Game.iActiveProvince >= 0 ? Game.getProvince(Game.iActiveProvince).getCivID() : 0).getFlag().draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
            ImageManager.getImage(Images.flag_rect).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2);
            spriteBatch.setColor(Color.WHITE);
            super.drawText(spriteBatch, CFG.CIV_FLAG_WIDTH + CFG.PADDING + i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getTextWidth() {
            return super.getTextWidth() + CFG.PADDING + CFG.CIV_FLAG_WIDTH;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("Remove");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusScenarioEditor.ScenarioCivilizations$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonMain {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                return;
            }
            if (Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCapitalProvinceID() >= 0 && Game.getProvince(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCapitalProvinceID()).getCivID() == Game.getProvince(Game.iActiveProvince).getCivID()) {
                Game.getProvince(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCapitalProvinceID()).setIsCapital(false);
            }
            Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).setCapitalProvinceID(Game.iActiveProvince);
            Game.getProvince(Game.iActiveProvince).setIsCapital(true);
            Game.getProvince(Game.iActiveProvince).setDrawCities(true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            try {
                if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SelectProvince")));
                    arrayList.add(new MenuElement_HoverElement(arrayList2));
                    arrayList2.clear();
                    this.menuElementHover = new MenuElement_Hover(arrayList);
                } else {
                    ArrayList arrayList3 = new ArrayList();
                    ArrayList arrayList4 = new ArrayList();
                    arrayList4.add(new MenuElement_HoverElement_Type_FlagTitle(Game.getProvince(Game.iActiveProvince).getCivID()));
                    arrayList4.add(new MenuElement_HoverElement_Type_TextTitle(Game.lang.get("SetCapital") + ": "));
                    arrayList4.add(new MenuElement_HoverElement_Type_TextTitle(Game.getProvince(Game.iActiveProvince).getProvinceName(), Colors.HOVER_GOLD));
                    arrayList3.add(new MenuElement_HoverElement(arrayList4));
                    arrayList4.clear();
                    this.menuElementHover = new MenuElement_Hover(arrayList3);
                }
            } catch (IndexOutOfBoundsException unused) {
                this.menuElementHover = null;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button
        public void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            if (!getClickable()) {
                spriteBatch.setColor(new Color(1.0f, 1.0f, 1.0f, 0.7f));
            }
            Game.getCiv(Game.iActiveProvince >= 0 ? Game.getProvince(Game.iActiveProvince).getCivID() : 0).getFlag().draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2, CFG.CIV_FLAG_WIDTH, CFG.CIV_FLAG_HEIGHT);
            ImageManager.getImage(Images.flag_rect).draw(spriteBatch, ((getPosX() + (getWidth() / 2)) - (getTextWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (CFG.CIV_FLAG_HEIGHT / 2)) + i2);
            spriteBatch.setColor(Color.WHITE);
            super.drawText(spriteBatch, CFG.CIV_FLAG_WIDTH + CFG.PADDING + i, i2, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public boolean getClickable() {
            return Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button, aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getTextWidth() {
            return super.getTextWidth() + CFG.PADDING + CFG.CIV_FLAG_WIDTH;
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("SetCapital"));
        }
    }

    public ScenarioCivilizations() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(0, 0));
        arrayList.add(new AnonymousClass2(Game.lang.get("ManageCivilizations"), CFG.PADDING, CFG.BUTTON_HEIGHT + (CFG.PADDING * 3)));
        arrayList.add(new AnonymousClass3(null, 1, -1, CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass4("", 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), CFG.PADDING, CFG.BUTTON_WIDTH, true));
        arrayList.add(new AnonymousClass5(null, 1, -1, (CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - CFG.PADDING, CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass6(null, 1, -1, CFG.PADDING, (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        arrayList.add(new AnonymousClass7(null, 1, -1, (CFG.PADDING * 2) + (CFG.BUTTON_WIDTH * 2), (CFG.GAME_HEIGHT - CFG.BUTTON_HEIGHT) - CFG.PADDING, CFG.BUTTON_WIDTH * 2, true));
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static void actionUpdateData() {
        if (!listOfAllCivs) {
            Game.hoverManager.resetHoverActive_Menu();
            Game.menuManager.rebuildScenarioCivilizationsList();
        } else if (Game.iActiveProvince < 0 || Game.getProvince(Game.iActiveProvince).getCivID() <= 0 || Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCapitalProvinceID() != Game.iActiveProvince) {
            if (Game.iActiveProvince >= 0) {
                Game.menuManager.rebuildScenarioCivilizationsList();
            }
        } else {
            Game.keyboard.hideKeyboard();
            Game.hoverManager.resetHoverActive_Menu();
            Game.menuManager.rebuildScenarioCivilizationsList();
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, i, i2, (CFG.BUTTON_WIDTH * 3) + (CFG.PADDING * 3) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, true, true);
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, (((CFG.GAME_WIDTH - (CFG.BUTTON_WIDTH * 2)) - (CFG.PADDING * 2)) - Images.boxTitleBORDERWIDTH) + i, i2, (CFG.BUTTON_WIDTH * 2) + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, false, true);
        ImageManager.getImage(Images.boxBIG).draw2(spriteBatch, i, (CFG.GAME_HEIGHT - ((CFG.BUTTON_HEIGHT + (CFG.PADDING * 2)) + Images.boxTitleBORDERWIDTH)) + i2, (CFG.BUTTON_WIDTH * 4) + (CFG.PADDING * 3) + Images.boxTitleBORDERWIDTH, CFG.BUTTON_HEIGHT + (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH, true, false);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
