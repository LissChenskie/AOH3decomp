package aoc.kingdoms.lukasz.menusEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.technology.Bhs.fiRhHJntP;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_Desc_Simple;
import aoc.kingdoms.lukasz.menus.Dialog;
import aoc.kingdoms.lukasz.menus.MainMenu;
import aoc.kingdoms.lukasz.menusMapEditor.EditorSelectProvinces;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Editor extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.Editor$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(View.MAINMENU);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("Back"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.Editor$10, reason: invalid class name */
    class AnonymousClass10 extends ButtonMain {
        AnonymousClass10(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Dialog.GO_TO_LINK = "https://lukaszjakowski.pl/";
            Dialog.setDialogType(Dialog.DialogType.GO_TO_LINK);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText("www.LukaszJakowski.pl");
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.Editor$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonMain {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MainMenu.canContinue = false;
            Game.reloadScenario = true;
            Game.menuManager.setViewID(View.EDITOR_GAMECIVS);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.Editor$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonMain {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MainMenu.canContinue = false;
            Game.reloadScenario = true;
            CreateCiv.saveFlag = false;
            CreateCiv.goBackTo = View.EDITOR;
            Game.menuManager.setViewID(View.CREATE_CIV);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.Editor$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonMain {
        AnonymousClass4(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MainMenu.canContinue = false;
            Game.reloadScenario = true;
            Game.menuManager.setViewID(View.EDITOR_SCENARIOS_LIST);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("CreateaScenario"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.Editor$5, reason: invalid class name */
    class AnonymousClass5 extends ButtonMain {
        AnonymousClass5(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            MainMenu.canContinue = false;
            Game.reloadScenario = true;
            CFG.selectMode = true;
            MenuManager.mapEditorDrawProvinces = true;
            Game.menuManager.setViewID(View.EDITOR_MAPS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("MapEditor"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.Editor$6, reason: invalid class name */
    class AnonymousClass6 extends ButtonMain {
        AnonymousClass6(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.MANAGE_MODS);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ManageMods"), "", Images.technology2, CFG.FONT_REGULAR, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("ManageMods"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.Editor$7, reason: invalid class name */
    class AnonymousClass7 extends ButtonMain {
        AnonymousClass7(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.WORKSHOP);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("SubmitYourModsToTheSteamWorkshop"), "", Images.technology2, CFG.FONT_REGULAR, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("SteamWorkshop"));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.Editor$8, reason: invalid class name */
    class AnonymousClass8 extends Text_Desc_Simple {
        AnonymousClass8(String str, int i, int i2, int i3) {
            super(str, i, i2, i3);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.addToastGold(fiRhHJntP.ydSZWYjvwR, Images.technology2);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.Editor$9, reason: invalid class name */
    class AnonymousClass9 extends ButtonMain {
        AnonymousClass9(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            CFG.selectMode = true;
            MenuManager.mapEditorDrawProvinces = true;
            EditorSelectProvinces.selectedProvinces.clear();
            Game.menuManager.setViewID(View.EDITOR_SELECT_PROVINCES);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void updateLanguage() {
            setText(Game.lang.get("SelectProvinces"));
        }
    }

    public Editor() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT;
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        int i6 = CFG.PADDING * 4;
        int i7 = i * 2;
        arrayList.add(new AnonymousClass1(null, 1, -1, i, CFG.PADDING, CFG.LEFT_MENU_WIDTH - i7, true));
        int height = arrayList.get(arrayList.size() - 1).getHeight() + i5 + i5;
        arrayList.add(new AnonymousClass2(Game.lang.get("GameCivilizations"), 1, i6, i, height, CFG.LEFT_MENU_WIDTH - i7, true));
        int height2 = height + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass3(Game.lang.get("CreateaCivilization"), 1, i6, i, height2, CFG.LEFT_MENU_WIDTH - i7, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass4(null, 1, i6, i, height3, CFG.LEFT_MENU_WIDTH - i7, true));
        int height4 = height3 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass5(null, 1, i6, i, height4, CFG.LEFT_MENU_WIDTH - i7, CFG.isDesktop()));
        int height5 = height4 + arrayList.get(arrayList.size() - 1).getHeight() + (i5 * 3);
        arrayList.add(new AnonymousClass6(null, 1, i6, i, height5, CFG.LEFT_MENU_WIDTH - i7, CFG.isDesktop()));
        int height6 = height5 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass7(null, 1, i6, i, height6, CFG.LEFT_MENU_WIDTH - i7, CFG.isDesktop()));
        int height7 = height6 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass8("All modifications, custom content, and user-generated assets created within or for the game are the sole property of Łukasz Jakowski Games. By creating or uploading any mods, you agree that Łukasz Jakowski Games retains full ownership and rights to use, modify, distribute, or remove the content at its discretion. Mod creators waive any claim to ownership or compensation for their creations.", i, height7, CFG.LEFT_MENU_WIDTH - i7));
        int height8 = height7 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass9(null, 1, i6, i, height8, CFG.LEFT_MENU_WIDTH - i7, CFG.isDesktop()));
        int height9 = height8 + arrayList.get(arrayList.size() - 1).getHeight() + i5;
        arrayList.add(new AnonymousClass10(null, 1, i6, i, height9, CFG.LEFT_MENU_WIDTH - i7, true));
        initMenu(new MenuTitle("", 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH, Math.min(height9 + arrayList.get(arrayList.size() - 1).getHeight() + i5 + arrayList.get(0).getHeight() + (i5 * 2), ((CFG.GAME_HEIGHT - i2) - i4) - (CFG.PADDING * 2)), arrayList, true, false);
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
        getTitle().setText(Game.lang.get("GameEditor"));
    }
}
