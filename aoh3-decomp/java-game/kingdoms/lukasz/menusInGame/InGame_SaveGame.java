package aoc.kingdoms.lukasz.menusInGame;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadSavedGameManager;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.Button_LoadGame;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write;
import aoc.kingdoms.lukasz.menus.Menu_LoadGames_List;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_SaveGame extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime = 0;
    public static String sSaveName = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_SaveGame$1, reason: invalid class name */
    class AnonymousClass1 extends Text_StaticBG_Write {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.SAVE_NAME, InGame_SaveGame.sSaveName);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return InGame_SaveGame.sSaveName + Keyboard.getKeyboardVerticalLine();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_SaveGame$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonGame {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_SaveGame(false);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_SaveGame$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonGame {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setVisibleInGame_SaveGame(false);
            if (InGame_SaveGame.sSaveName.length() > 0) {
                SaveGameManager.saveKey = InGame_SaveGame.sSaveName;
            } else {
                SaveGameManager.saveKey = "" + CFG.currentTimeMillis;
            }
            SaveGameManager.saveKey = SaveGameManager.saveKey.replace(" ", "_").replace(CoLRpi.IwKFQ, "_").replace(";", "_").replace(",", "_").replace(".", "_");
            Game.menuManager.setViewIDWithoutAnimation(View.LOAD_SAVE_GAME);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_SaveGame$4, reason: invalid class name */
    class AnonymousClass4 extends Button_LoadGame {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4) {
            super(str, str2, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame_SaveGame.sSaveName = Menu_LoadGames_List.savedGamesKey.get(getCurrent());
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_LoadGame, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("SaveTheGame"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.save, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_SaveGame$5, reason: invalid class name */
    class AnonymousClass5 extends MenuTitleIMG {
        AnonymousClass5(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_SaveGame.lTime;
        }
    }

    public InGame_SaveGame(boolean z) {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int i2 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title500).getHeight();
        int i3 = CFG.PADDING * 2;
        int i4 = Images.boxTitleBORDERWIDTH;
        int i5 = CFG.PADDING;
        int i6 = CFG.TEXT_HEIGHT;
        int i7 = CFG.PADDING;
        sSaveName = "" + Game.getCiv(Game.player.iCivID).getCivName().replace(" ", "_").replace(":", "_").replace(";", "_").replace(",", "_").replace(".", "_") + "_" + Game_Calendar.getCurrentDate_Simple().replace(" ", "_").replace(":", "_").replace(";", "_").replace(",", "_").replace(".", "_");
        int i8 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("SaveName") + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, i3, i8, CFG.BUTTON_HEIGHT2));
        int height2 = i3 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        arrayList.add(new AnonymousClass2(Game.lang.get("Cancel"), CFG.FONT_REGULAR, -1, i, height2, (i8 - CFG.PADDING) / 2, true));
        arrayList.add(new AnonymousClass3(Game.lang.get("SaveTheGame"), CFG.FONT_REGULAR, -1, CFG.PADDING + i + ((i8 - CFG.PADDING) / 2), height2, (i8 - CFG.PADDING) / 2, true));
        int height3 = height2 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        try {
            Menu_LoadGames_List.disposeData();
            FileHandle fileHandleExternal = FileManager.IS_MAC ? Gdx.files.external(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : CFG.readLocalFiles() ? Gdx.files.local(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : Gdx.files.internal(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt");
            if (fileHandleExternal.exists()) {
                String[] strArrSplit = fileHandleExternal.readString().split(";");
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                for (int i9 = 0; i9 < strArrSplit.length; i9++) {
                    SaveGameManager.SaveDetails saveDetailsLoadSave_Details = LoadSavedGameManager.loadSave_Details(strArrSplit[i9]);
                    if (saveDetailsLoadSave_Details != null) {
                        arrayList2.add(saveDetailsLoadSave_Details);
                        arrayList3.add(strArrSplit[i9]);
                    }
                }
                while (arrayList2.size() > 0) {
                    int i10 = 0;
                    for (int size = arrayList2.size() - 1; size > 0; size--) {
                        if (((SaveGameManager.SaveDetails) arrayList2.get(size)).time > ((SaveGameManager.SaveDetails) arrayList2.get(i10)).time) {
                            i10 = size;
                        }
                    }
                    Menu_LoadGames_List.savedGames.add((SaveGameManager.SaveDetails) arrayList2.get(i10));
                    Menu_LoadGames_List.savedGamesKey.add((String) arrayList3.get(i10));
                    arrayList2.remove(i10);
                    arrayList3.remove(i10);
                }
                int size2 = Menu_LoadGames_List.savedGames.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    Menu_LoadGames_List.loadFlag(Menu_LoadGames_List.savedGames.get(i11).sCivTag);
                }
                int size3 = Menu_LoadGames_List.savedGames.size();
                int i12 = 0;
                while (i12 < size3) {
                    int i13 = i12;
                    arrayList.add(new AnonymousClass4(Game.lang.getCiv(Menu_LoadGames_List.savedGames.get(i12).sCivTag), "" + Menu_LoadGames_List.savedGames.get(i12).iDay + " " + Game_Calendar.getMonthName(Menu_LoadGames_List.savedGames.get(i12).iMonth) + " " + Menu_LoadGames_List.savedGames.get(i12).iYear, i, height3, i8, i12));
                    height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    i12 = i13 + 1;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        int size4 = arrayList.size();
        int posY = 0;
        for (int i14 = 0; i14 < size4; i14++) {
            if (posY < arrayList.get(i14).getPosY() + arrayList.get(i14).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i14).getPosY() + arrayList.get(i14).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMax = Math.max(posY, CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT * 4));
        int iMin = Math.min(iMax, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(iMax, iMin)));
        initMenu(new AnonymousClass5(Game.lang.get("SaveTheGame"), true, false, Images.title500), (CFG.GAME_WIDTH / 2) - (width / 2), height, width, iMin, arrayList, z, true);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (((CFG.BUTTON_WIDTH * 4) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.newGameOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.newGameOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.newGameOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
    }
}
