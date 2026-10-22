package aoc.kingdoms.lukasz.menus;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.Steam.SteamPublishThread;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonCurrentSituation_Value;
import aoc.kingdoms.lukasz.menu_element.button.ButtonMain;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menus.LoadSave.Menu_Load_Workshop;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.loaders.Wkvw.nEtnPpUF;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class WorkshopMenu extends Menu {
    public static List<String> lMods = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.WorkshopMenu$1, reason: invalid class name */
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

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.WorkshopMenu$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonCurrentSituation_Value {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, boolean z, int i7) {
            super(str, i, i2, i3, i4, i5, i6, z, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!Gdx.files.internal(CFG.FILE_MODS_PATH + WorkshopMenu.lMods.get(getCurrent()) + "/mod.txt").exists() && (!FileManager.IS_MAC || !Gdx.files.external(CFG.FILE_MODS_PATH + WorkshopMenu.lMods.get(getCurrent()) + "/mod.txt").exists())) {
                Game.menuManager.addToast_Error(Game.lang.get("MissingFile") + ": mods/" + WorkshopMenu.lMods.get(getCurrent()) + "/mod.txt", Images.x);
                return;
            }
            Menu_Load_Workshop.uploaded = false;
            Game.menuManager.setViewIDWithoutAnimation(View.LOAD_WORKSHOP_PUBLISH);
            SteamPublishThread.key = WorkshopMenu.lMods.get(getCurrent());
            new SteamPublishThread().start();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Publish"), nEtnPpUF.BJSDUuWGoxplFr, Images.technology2, CFG.FONT_REGULAR, CFG.FONT_REGULAR, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Line());
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("AfterClickingTheGameFreezesAndAllFilesAreTransferredJustWait"), CFG.FONT_REGULAR, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover(arrayList);
        }
    }

    public WorkshopMenu() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING * 2;
        int i2 = CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT / 2);
        int i3 = CFG.GAME_WIDTH / 10;
        int i4 = CFG.GAME_HEIGHT / 10;
        int i5 = CFG.PADDING * 2;
        lMods.clear();
        int i6 = i * 2;
        arrayList.add(new AnonymousClass1(Game.lang.get("Back"), 1, -1, i, CFG.PADDING, CFG.LEFT_MENU_WIDTH2 - i6, true));
        int i7 = 0;
        int height = arrayList.get(0).getHeight() + i5 + i5;
        for (FileHandle fileHandle : FileManager.IS_MAC ? Gdx.files.external(CFG.FILE_MODS_PATH).list() : Gdx.files.local(CFG.FILE_MODS_PATH).list()) {
            lMods.add(fileHandle.name());
        }
        int height2 = height;
        while (i7 < lMods.size()) {
            if (!lMods.get(i7).equals("GameCivs")) {
                arrayList.add(new AnonymousClass2(lMods.get(i7), Images.technology2, i, height2, CFG.LEFT_MENU_WIDTH2 - i6, CFG.BUTTON_HEIGHT, ImageManager.getImage(Images.gold).getWidth() + (CFG.PADDING * 4), true, i7));
                height2 += arrayList.get(arrayList.size() - 1).getHeight() + i5;
            }
            i7++;
            i = i;
        }
        initMenu(new MenuTitle(CoLRpi.ISYlLwRRMiG, 1.0f, i2, true, true), i3, i2 + i4, CFG.LEFT_MENU_WIDTH2, ((CFG.GAME_HEIGHT - i2) - i4) - (CFG.PADDING * 2), arrayList, true, false);
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
        getTitle().setText(Game.lang.get("SubmitYourModsToTheSteamWorkshop"));
    }
}
