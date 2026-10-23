package aoc.kingdoms.lukasz.menusEditor;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamManager;
import aoc.kingdoms.lukasz.map.allianceHRE.JgPF.HTGgowNjn;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation_Value_Mods;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class ManageMods extends Menu {

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.ManageMods$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonMain {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Renderer.drawArmyInProvince = true;
            Game.menuManager.setViewID(View.EDITOR);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.ManageMods$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonCurrentSituation_Value_Mods {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, boolean z2) {
            super(str, i, i2, i3, i4, i5, i6, z, i7, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SteamManager.addModsTurnedOff(SteamManager.itemsInstalledAll.get(getCurrent()).getFolder());
            setCheckboxState(SteamManager.isTurnedOn(SteamManager.itemsInstalledAll.get(getCurrent()).getFolder()));
            Game.menuManager.addToastGold(Game.lang.get(HTGgowNjn.bEMrRwDmDLscnjT), Images.settings);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("On") + " / " + Game.lang.get("Off"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusEditor.ManageMods$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonCurrentSituation_Value_Mods {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7, boolean z2) {
            super(str, i, i2, i3, i4, i5, i6, z, i7, z2);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SteamManager.addModsTurnedOff(SteamManager.modsFoldersAll.get(getCurrent()));
            setCheckboxState(SteamManager.isTurnedOn(SteamManager.modsFoldersAll.get(getCurrent())));
            Game.menuManager.addToastGold(Game.lang.get("GameNeedsToBeRestartedToApplyTheChanges"), Images.settings);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("On") + " / " + Game.lang.get("Off"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    public ManageMods() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        int i6 = i * 2;
        arrayList.add(new AnonymousClass1(Game.lang.get("Back"), 1, -1, i, CFG.PADDING, CFG.LEFT_MENU_WIDTH2 - i6, true));
        int i7 = 0;
        int height = arrayList.get(0).getHeight() + i5 + i5;
        while (i7 < SteamManager.itemsInstalledAll.size()) {
            int i8 = i7;
            arrayList.add(new AnonymousClass2(SteamManager.modsFoldersAll_ModName.get(i7), Images.technology2, i, height, CFG.LEFT_MENU_WIDTH2 - i6, CFG.BUTTON_HEIGHT, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true, i8, SteamManager.isTurnedOn(SteamManager.itemsInstalledAll.get(i7).getFolder())));
            height += arrayList.get(arrayList.size() - 1).getHeight() + i5;
            i7 = i8 + 1;
        }
        int i9 = 0;
        while (i9 < SteamManager.modsFoldersAll.size()) {
            arrayList.add(new AnonymousClass3(SteamManager.modsFoldersAll.get(i9), Images.technology2, i, height, CFG.LEFT_MENU_WIDTH2 - i6, CFG.BUTTON_HEIGHT, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true, i9, SteamManager.isTurnedOn(SteamManager.modsFoldersAll.get(i9))));
            height += arrayList.get(arrayList.size() - 1).getHeight() + i5;
            i9++;
            i = i;
        }
        initMenu(new MenuTitle(Game.lang.get("InstalledMods"), 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH2, ((CFG.GAME_HEIGHT - i2) - i4) - (CFG.PADDING * 2), arrayList, true, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawEditorMenuBG(spriteBatch, getPosX(), getPosY(), getWidth(), getHeight() + CFG.PADDING, i, i2);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
