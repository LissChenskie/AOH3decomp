package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.events.outcome.EventOutcome_Explode;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.CharactersManager;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Keyboard;
import aoc.kingdoms.lukasz.jakowski.Renderer.Renderer;
import aoc.kingdoms.lukasz.map.RulersManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu.menuTitle.MenuTitleIMG;
import aoc.kingdoms.lukasz.menu_element.Empty;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import aoc.kingdoms.lukasz.utilities.FPS;
import com.android.support.BuildConfig;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Console extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static final int CONSOLE_LIMIT = 650;
    public static long lTime = 0;
    public static List<String> sConsole = new ArrayList();
    public static String sMessage = "";

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Console$1, reason: invalid class name */
    class AnonymousClass1 extends Text_StaticBG_Write {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6) {
            super(str, i, i2, i3, i4, i5, i6);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            Game.keyboard.showKeyboard(Keyboard.KeyboardActionType.CONSOLE, InGame_Console.sMessage);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Write, aoc.kingdoms.lukasz.menu_element.MenuElement
        public String getTextToDraw() {
            return InGame_Console.sMessage + Keyboard.getKeyboardVerticalLine();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Console$2, reason: invalid class name */
    class AnonymousClass2 extends MenuTitleIMG {
        AnonymousClass2(String str, boolean z, boolean z2, int i) {
            super(str, z, z2, i);
        }

        @Override // aoc.kingdoms.lukasz.menu.menuTitle.MenuTitle
        public long getTime() {
            return InGame_Console.lTime;
        }
    }

    public InGame_Console(boolean z) {
        ArrayList arrayList = new ArrayList();
        int i = (CFG.PADDING * 2) + Images.boxTitleBORDERWIDTH;
        ImageManager.getImage(Images.title2).getHeight();
        int width = ImageManager.getImage(Images.insideTop).getWidth();
        int i2 = CFG.PADDING;
        int height = ImageManager.getImage(Images.flagBG).getHeight() + Renderer.boxBGExtraY + CFG.PADDING + ImageManager.getImage(Images.title1Red).getHeight();
        int i3 = CFG.PADDING;
        int i4 = Images.boxTitleBORDERWIDTH + (CFG.PADDING * 2);
        int i5 = CFG.TEXT_HEIGHT + (CFG.PADDING * 4);
        int i6 = width - (i * 2);
        arrayList.add(new AnonymousClass1(Game.lang.get("TypeMessage") + ": ", CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, i, i3, i6, CFG.BUTTON_HEIGHT2));
        int height2 = i3 + arrayList.get(arrayList.size() - 1).getHeight() + (CFG.PADDING * 2);
        for (int size = sConsole.size() - 1; size >= 0; size--) {
            arrayList.add(new Text_StaticBG(sConsole.get(size), CFG.FONT_REGULAR_SMALL, i, i4, height2, i6, i5));
            height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
        }
        int size2 = arrayList.size();
        int posY = 0;
        for (int i7 = 0; i7 < size2; i7++) {
            if (posY < arrayList.get(i7).getPosY() + arrayList.get(i7).getHeight() + (CFG.PADDING * 2)) {
                posY = arrayList.get(i7).getPosY() + arrayList.get(i7).getHeight() + (CFG.PADDING * 2);
            }
        }
        int iMax = Math.max(posY, CFG.BUTTON_HEIGHT + (CFG.BUTTON_HEIGHT * 4));
        int iMin = Math.min(iMax, (CFG.GAME_HEIGHT - height) - (CFG.PADDING * 3));
        arrayList.add(new Empty(0, 0, width, Math.max(iMax, iMin)));
        initMenu(new AnonymousClass2(Game.lang.get("Console"), true, false, Images.title1Red), (CFG.GAME_WIDTH / 2) - (width / 2), height, width, iMin, arrayList, z, true);
    }

    public static final void addMessage(String str) {
        sConsole.add(str);
        if (sConsole.size() > 650) {
            sConsole.remove(0);
        }
    }

    public static final void execute(String str) {
        addMessage("#" + str);
        String[] strArrSplit = str.split("=");
        try {
            if (strArrSplit.length > 0) {
                String lowerCase = strArrSplit[0].toLowerCase();
                strArrSplit[0] = lowerCase;
                if (lowerCase.equals("hi") || strArrSplit[0].equals("hello")) {
                    addMessage("Hello, Welcome to Age of History 3");
                } else if (strArrSplit[0].equals("tag") || strArrSplit[0].equals("civtag") || strArrSplit[0].equals("civ") || strArrSplit[0].equals("id")) {
                    if (Game.iActiveProvince >= 0) {
                        addMessage(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName());
                        addMessage("Civ ID: " + Game.getProvince(Game.iActiveProvince).getCivID());
                        addMessage("CivTAG: " + Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivTag());
                    }
                } else if (strArrSplit[0].equals("fps")) {
                    FPS.drawFPS = FPS.drawFPS ? false : true;
                } else if (strArrSplit[0].equals(BuildConfig.BUILD_TYPE)) {
                    CFG.debugMode = CFG.debugMode ? false : true;
                } else if (strArrSplit[0].equals("callvassals")) {
                    Game.ENABLE_CALL_VASSALS = Game.ENABLE_CALL_VASSALS ? false : true;
                } else if (strArrSplit[0].equals("sandbox")) {
                    Game.SANDBOX = Game.SANDBOX ? false : true;
                    Game.menuManager.rebuildInGame();
                    Game.menuManager.rebuildInGame_CourtOptions();
                } else if (strArrSplit[0].equals("scale")) {
                    addMessage(Game.lang.get("CurrentScale") + ": " + Game.mapScale.getCurrentScale());
                } else if (strArrSplit[0].equals("hours")) {
                    if (strArrSplit.length > 1) {
                        try {
                            Game.HOURS_PER_TURN = Math.max(1, Math.min(24, Integer.parseInt(strArrSplit[1])));
                            addMessage(Game.lang.get("HoursPerTurn") + ": " + Game.HOURS_PER_TURN);
                            Game.menuManager.setViewIDWithoutAnimation(View.IN_GAME);
                        } catch (Exception unused) {
                        }
                    }
                } else if (strArrSplit[0].equals(GameValues.console.CONSOLE_COMMAND_KILL_RULER)) {
                    if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
                        RulersManager.deathOfRuler(Game.getProvince(Game.iActiveProvince).getCivID());
                    }
                } else if (strArrSplit[0].equals("occupybyplayer")) {
                    if (Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() != Game.player.iCivID) {
                        Game.getProvince(Game.iActiveProvince).setOccupiedByCivID(Game.player.iCivID);
                    }
                } else if (strArrSplit[0].equals("addgeneral") && strArrSplit.length > 1 && strArrSplit[1] != null) {
                    CharactersManager.loadGeneral(Game.player.iCivID, strArrSplit[1], -99, -99);
                } else if (strArrSplit[0].equals(GameValues.console.CONSOLE_COMMAND_GOLD)) {
                    Game.getCiv(Game.player.iCivID).fGold += GameValues.console.CONSOLE_GOLD;
                    addMessage(Game.getCiv(Game.player.iCivID).getCivName() + ": " + CFG.getPrecision2(GameValues.console.CONSOLE_GOLD, 10) + " Gold added");
                } else if (strArrSplit[0].equals(GameValues.console.CONSOLE_COMMAND_LEGACY)) {
                    Game.getCiv(Game.player.iCivID).fLegacy += GameValues.console.CONSOLE_LEGACY;
                    addMessage(Game.getCiv(Game.player.iCivID).getCivName() + ": " + CFG.getPrecision2(GameValues.console.CONSOLE_LEGACY, 10) + " Legacy added");
                } else if (strArrSplit[0].equals(GameValues.console.CONSOLE_COMMAND_MANPOWER)) {
                    Game.getCiv(Game.player.iCivID).fManpower += (double) GameValues.console.CONSOLE_MANPOWER;
                    addMessage(Game.getCiv(Game.player.iCivID).getCivName() + ": " + CFG.getPrecision2(GameValues.console.CONSOLE_MANPOWER, 10) + " Manpower added");
                } else if (strArrSplit[0].equals(GameValues.console.CONSOLE_COMMAND_DIPLOMACY)) {
                    Game.getCiv(Game.player.iCivID).fDiplomacy += GameValues.console.CONSOLE_DIPLOMACY;
                    addMessage(Game.getCiv(Game.player.iCivID).getCivName() + ": " + CFG.getPrecision2(GameValues.console.CONSOLE_DIPLOMACY, 10) + " Diplomacy Points added");
                } else if (strArrSplit[0].equals(GameValues.console.CONSOLE_COMMAND_ADVANTAGE)) {
                    Game.getCiv(Game.player.iCivID).setAdvantagePoints(Game.getCiv(Game.player.iCivID).getAdvantagePoints() + GameValues.console.CONSOLE_ADVANTAGE);
                    addMessage(Game.getCiv(Game.player.iCivID).getCivName() + ": " + CFG.getPrecision2(GameValues.console.CONSOLE_ADVANTAGE, 10) + " Advantage points added");
                } else if (strArrSplit[0].equals(GameValues.console.CONSOLE_COMMAND_NUKE)) {
                    Game.getCiv(Game.player.iCivID).canBuildNuke = true;
                    Game.getCiv(Game.player.iCivID).setNukes(Game.getCiv(Game.player.iCivID).getNukes() + 1);
                    addMessage(Game.getCiv(Game.player.iCivID).getCivName() + ": Atomic Bomb added");
                } else if (strArrSplit[0].equals(GameValues.console.CONSOLE_COMMAND_EXPLODE) && Game.iActiveProvince >= 0 && Game.getProvince(Game.iActiveProvince).getCivID() > 0) {
                    new EventOutcome_Explode(Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivTag()).updateCiv(0, 0);
                    addMessage("explode" + Game.getCiv(Game.getProvince(Game.iActiveProvince).getCivID()).getCivName());
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void actionCloseMenu() {
        super.actionCloseMenu();
        Game.keyboard.hideKeyboard();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        if (lTime + 60 >= CFG.currentTimeMillis) {
            i = (i - CFG.BUTTON_WIDTH) + ((int) (((CFG.BUTTON_WIDTH * 4) / 5) * ((CFG.currentTimeMillis - lTime) / 60.0f)));
        }
        int i3 = i;
        Renderer.drawBoxCorner(spriteBatch, getPosX() + i3, (getPosY() - getTitle().getHeight()) + i2, getWidth(), getHeight() + getTitle().getHeight() + CFG.PADDING);
        Renderer.drawMenusBox(spriteBatch, getPosX() + i3, getPosY() + i2, getWidth(), getHeight() + CFG.PADDING, false);
        ImageManager.getImage(Images.newGameOver).draw2(spriteBatch, ((getPosX() + (getWidth() / 2)) - (ImageManager.getImage(Images.newGameOver).getWidth() / 2)) + i3, getPosY() + i2, getWidth(), Math.min(getHeight(), ImageManager.getImage(Images.newGameOver).getHeight()));
        super.draw(spriteBatch, i3, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        if (z) {
            return;
        }
        Game.keyboard.hideKeyboard();
    }
}
