package aoc.kingdoms.lukasz.menus;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.FileManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.LoadSavedGameManager;
import aoc.kingdoms.lukasz.jakowski.SaveLoad.SaveGameManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonGame;
import aoc.kingdoms.lukasz.menu_element.button.Button_LoadGame;
import aoc.kingdoms.lukasz.menu_element.button.Button_LoadGameX;
import aoc.kingdoms.lukasz.menusEditor.RJR.ATsAGKCnv;
import aoc.kingdoms.lukasz.textures.Image;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Menu_LoadGames_List extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static List<Image> lFlags = new ArrayList();
    public static long lTime = 0;
    public static List<SaveGameManager.SaveDetails> savedGames = new ArrayList();
    public static List<String> savedGamesKey = new ArrayList();

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Menu_LoadGames_List$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonGame {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, boolean z) {
            super(str, i, i2, i3, i4, i5, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.menuManager.setViewID(View.MAINMENU);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Menu_LoadGames_List$2, reason: invalid class name */
    class AnonymousClass2 extends Button_LoadGame {
        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4) {
            super(str, str2, i, i2, i3, i4);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            LoadSavedGameManager.key = Menu_LoadGames_List.savedGamesKey.get(getCurrent());
            Game.menuManager.setViewIDWithoutAnimation(View.LOAD_SAVED_GAME);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Menu_LoadGames_List$3, reason: invalid class name */
    class AnonymousClass3 extends Button_LoadGameX {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5) {
            super(str, i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            SaveGameManager.deleteSavedGameKey = Menu_LoadGames_List.savedGamesKey.get(getCurrent());
            Dialog.setDialogType(Dialog.DialogType.DELETE_SAVE);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.Menu_LoadGames_List$4, reason: invalid class name */
    class AnonymousClass4 extends MenuTitleIMG {
        AnonymousClass4(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return Menu_LoadGames_List.lTime;
        }
    }

    public Menu_LoadGames_List() {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title500).getHeight();
        int width = ImageManager.getImage(Images.insideTop500).getWidth();
        int i2 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title500).getHeight();
        int i3 = CFG.PADDING * 2;
        int i4 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("Back"), CFG.FONT_REGULAR, -1, i, i3, i4, true));
        int height2 = i3 + arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        try {
            disposeData();
            FileHandle fileHandleExternal = FileManager.IS_MAC ? Gdx.files.external(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : CFG.readLocalFiles() ? Gdx.files.local(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt") : Gdx.files.internal(CFG.FILE_SAVES_PATH + Game.map.getFile_ActiveMap_Path() + "AoH.txt");
            if (fileHandleExternal.exists()) {
                String[] strArrSplit = fileHandleExternal.readString().split(";");
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                for (int i5 = 0; i5 < strArrSplit.length; i5++) {
                    SaveGameManager.SaveDetails saveDetailsLoadSave_Details = LoadSavedGameManager.loadSave_Details(strArrSplit[i5]);
                    if (saveDetailsLoadSave_Details != null) {
                        arrayList2.add(saveDetailsLoadSave_Details);
                        arrayList3.add(strArrSplit[i5]);
                    }
                }
                while (arrayList2.size() > 0) {
                    int i6 = 0;
                    for (int size = arrayList2.size() - 1; size > 0; size--) {
                        if (((SaveGameManager.SaveDetails) arrayList2.get(size)).time > ((SaveGameManager.SaveDetails) arrayList2.get(i6)).time) {
                            i6 = size;
                        }
                    }
                    savedGames.add((SaveGameManager.SaveDetails) arrayList2.get(i6));
                    savedGamesKey.add((String) arrayList3.get(i6));
                    arrayList2.remove(i6);
                    arrayList3.remove(i6);
                }
                int size2 = savedGames.size();
                for (int i7 = 0; i7 < size2; i7++) {
                    loadFlag(savedGames.get(i7).sCivTag);
                }
                int size3 = savedGames.size();
                int i8 = 0;
                while (i8 < size3) {
                    int i9 = i8;
                    int i10 = size3;
                    arrayList.add(new AnonymousClass2(Game.lang.getCiv(savedGames.get(i8).sCivTag), "" + savedGames.get(i8).iDay + " " + Game_Calendar.getMonthName(savedGames.get(i8).iMonth) + " " + Game.gameAges.getYear(savedGames.get(i8).iYear), i, height2, (i4 - CFG.PADDING) - CFG.BUTTON_WIDTH, i9));
                    arrayList.add(new AnonymousClass3("X", (width - i) - CFG.BUTTON_WIDTH, height2, CFG.BUTTON_WIDTH, arrayList.get(arrayList.size() - 1).getHeight(), i9));
                    height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    i8 = i9 + 1;
                    size3 = i10;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
        int size4 = arrayList.size();
        int posY = 0;
        for (int i11 = 0; i11 < size4; i11++) {
            if (posY < arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i11).getPosY() + arrayList.get(i11).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMax = Math.max(posY, CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT * 4));
        int iMin = Math.min(iMax, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(iMax, iMin)));
        initMenu(new AnonymousClass4(Game.lang.get("LoadGame"), true, false, Images.title500), CFG.GAME_WIDTH / 10, height, width, iMin, arrayList, true, false);
    }

    public static void disposeData() {
        savedGames.clear();
        savedGamesKey.clear();
        for (int i = 0; i < lFlags.size(); i++) {
            lFlags.get(i).getTexture().dispose();
        }
        lFlags.clear();
    }

    public static void loadFlag(String str) {
        if (FileManager.loadFile("gfx/flagsXH/" + str + ".png").exists()) {
            lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + str + ".png")), Texture.TextureFilter.Linear));
            return;
        }
        if (FileManager.loadFile("gfx/flagsXH/" + Game.ideologiesManager.getRealTag(str) + ".png").exists()) {
            lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/" + Game.ideologiesManager.getRealTag(str) + ".png")), Texture.TextureFilter.Linear));
            return;
        }
        String str2 = ATsAGKCnv.WqpSjUkNAowpI;
        if (FileManager.loadFile(str2 + str + ".png").exists()) {
            lFlags.add(new Image(new Texture(FileManager.loadFile(str2 + str + ".png")), Texture.TextureFilter.Linear));
            return;
        }
        if (FileManager.loadFile(str2 + Game.ideologiesManager.getRealTag(str) + ".png").exists()) {
            lFlags.add(new Image(new Texture(FileManager.loadFile(str2 + Game.ideologiesManager.getRealTag(str) + ".png")), Texture.TextureFilter.Linear));
            return;
        }
        if (FileManager.loadFile("gfx/flags/" + str + ".png").exists()) {
            lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + str + ".png")), Texture.TextureFilter.Nearest));
        } else if (FileManager.loadFile("gfx/flags/" + Game.ideologiesManager.getRealTag(str) + ".png").exists()) {
            lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flags/" + Game.ideologiesManager.getRealTag(str) + ".png")), Texture.TextureFilter.Nearest));
        } else {
            lFlags.add(new Image(new Texture(FileManager.loadFile("gfx/flagsXH/ran.png")), Texture.TextureFilter.Nearest));
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        spriteBatch.setColor(new Color(0.050980393f, 0.08627451f, 0.13333334f, 1.0f));
        InitGame.background.draw(spriteBatch, i + ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2), i2 + ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2), InitGame.backgroundWidth, InitGame.backgroundHeight);
        spriteBatch.setColor(Color.WHITE);
        spriteBatch.setShader(Renderer.shaderAlpha);
        InitGame.background.getTexture().bind(1);
        Gdx.gl.glActiveTexture(GL20.GL_TEXTURE0);
        ImageManager.getImage(Images.gradientHorizontal2).draw(spriteBatch, ((CFG.GAME_WIDTH - InitGame.backgroundWidth) / 2) + i, ((CFG.GAME_HEIGHT - InitGame.backgroundHeight) / 2) + i2, InitGame.backgroundWidth, InitGame.backgroundHeight);
        spriteBatch.flush();
        spriteBatch.setShader(Renderer.shaderDefault);
        int i3 = lTime + 60 >= CFG.currentTimeMillis ? (i - CFG.BUTTON_WIDTH) + ((int) (((CFG.BUTTON_WIDTH * 4) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f))) : i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), CFG.PADDING + getHeight(), false, Images.insideTop500, Images.insideBot500);
        ImageManager.getImage(Images.newGameOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.newGameOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.newGameOver).getHeight()));
        spriteBatch.setColor(Color.WHITE);
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        if (z) {
            return;
        }
        disposeData();
    }
}
