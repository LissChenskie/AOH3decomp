package aoc.kingdoms.lukasz.menus.NewGame;

import androidx.core.internal.oiV.CoLRpi;
import aoc.kingdoms.lukasz.jakowski.AI.Advantages.AI_Advantages;
import aoc.kingdoms.lukasz.jakowski.AI.Colonization.AI_Colonization;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread_Events;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage_ChooseRivals;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.LuckyCivsManager;
import aoc.kingdoms.lukasz.map.province.ProvinceBorderManager;
import aoc.kingdoms.lukasz.map.province.ProvinceDraw;
import aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.View;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.ButtonPlay;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopDate;
import aoc.kingdoms.lukasz.menu_element.button.ButtonTopOutliner;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_ImageTitle_BG;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_TextTitle_BG;
import aoc.kingdoms.lukasz.menusInGame.Court.InGame_Court_Government;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class NewGame extends Menu {
    public static final int ANIMATION_TIME = 500;
    public static long lTime;
    public static boolean settingsMenu;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame$1, reason: invalid class name */
    class AnonymousClass1 extends ButtonPlay {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getColorPicker().getVisible()) {
                Game.menuManager.getColorPicker().hideColorPicker();
            }
            NewGame.clearPlayerData();
            GameThread_Events.THREAD_TURN_ID = Game_Calendar.TURN_ID;
            if (Game.SPECTATOR_MODE) {
                Game.player.iCivID = 0;
            }
            Game.player.playerStats.initStartingData();
            Game.stats.loadStats(Game.getCiv(Game.player.iCivID).getCivTag(), true);
            NewGame.initNewGame();
            Game.player.addMessage(new PMessage_ChooseRivals(Game.player.iCivID, Game_Calendar.TURN_ID + GameValues.diplomacy.DIPLOMACY_MESSAGE_DAYS));
            Game.menuManager.setViewID(View.IN_GAME);
            Game.menuManager.rebuildInGame_Messages();
            Game.menuManager.rebuildInGame_Wars();
            Game.menuManager.setOrderOfMenu_InGame();
            if (Game.mapModes.iActiveMapModeID != Game.mapModes.MODE_DEFAULT) {
                Game.mapModes.setActiveViewID(Game.mapModes.MODE_DEFAULT);
            }
            ProvinceDraw.updateDrawExtraDetails();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_PLAY_NEW_GAME;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame$2, reason: invalid class name */
    class AnonymousClass2 extends ButtonPlay {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, boolean z) {
            super(str, i, i2, i3, i4, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getColorPicker().getVisible()) {
                Game.menuManager.getColorPicker().hideColorPicker();
            }
            Game.setActiveProvinceID(-1);
            ProvinceBorderManager.clearProvinceBorder();
            Game.menuManager.setViewID(View.MAINMENU);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame$3, reason: invalid class name */
    class AnonymousClass3 extends ButtonTopOutliner {
        AnonymousClass3(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (!NewGame.settingsMenu && Game.menuManager.getVisible_NewGame_Settings()) {
                Game.menuManager.setVisible_NewGame_Settings(false);
            } else {
                NewGame.settingsMenu = false;
                Game.menuManager.rebuild_NewGame_Encyclopedia();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTopOutliner, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get(CoLRpi.yWORXYwKF), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.encyclopedia, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTopOutliner, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(getColor(z));
            ImageManager.getImage(this.imageID).draw(spriteBatch, (((getPosX() + (getWidth() / 2)) + InGame.outlinerExtraClassic) - (ImageManager.getImage(this.imageID).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(this.imageID).getHeight() / 2)) + i2);
            spriteBatch.setColor(Color.WHITE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame$4, reason: invalid class name */
    class AnonymousClass4 extends ButtonTopOutliner {
        AnonymousClass4(int i, int i2, int i3, int i4, int i5) {
            super(i, i2, i3, i4, i5);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (NewGame.settingsMenu && Game.menuManager.getVisible_NewGame_Settings()) {
                Game.menuManager.setVisible_NewGame_Settings(false);
            } else {
                NewGame.settingsMenu = true;
                Game.menuManager.rebuild_NewGame_Settings();
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTopOutliner, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new MenuElement_HoverElement_Type_TextTitle_BG(Game.lang.get("Settings"), CFG.FONT_BOLD, Colors.HOVER_GOLD));
            arrayList2.add(new MenuElement_HoverElement_Type_ImageTitle_BG(Images.settings, CFG.PADDING, 0));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            this.menuElementHover = new MenuElement_Hover((List<MenuElement_HoverElement>) arrayList, true);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.ButtonTopOutliner, aoc.kingdoms.lukasz.menu_element.button.Button
        protected void drawText(SpriteBatch spriteBatch, int i, int i2, boolean z) {
            spriteBatch.setColor(getColor(z));
            ImageManager.getImage(this.imageID).draw(spriteBatch, (((getPosX() + (getWidth() / 2)) + InGame.outlinerExtraClassic) - (ImageManager.getImage(this.imageID).getWidth() / 2)) + i, ((getPosY() + (getHeight() / 2)) - (ImageManager.getImage(this.imageID).getHeight() / 2)) + i2);
            spriteBatch.setColor(Color.WHITE);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return SoundsManager.SOUND_CLICK_TOP;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame$5, reason: invalid class name */
    class AnonymousClass5 extends Game.SimpleTask {
        AnonymousClass5(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            NewGame.takeAdvantages_AI();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menus.NewGame.NewGame$6, reason: invalid class name */
    class AnonymousClass6 extends Game.SimpleTask {
        AnonymousClass6(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            LuckyCivsManager.buildLuckyCivs();
        }
    }

    public NewGame() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AnonymousClass1(Game.lang.get("PLAY"), 1, -1, CFG.GAME_WIDTH - ImageManager.getImage(Images.buttonPlay).getWidth(), CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight(), false));
        arrayList.add(new AnonymousClass2(Game.lang.get("Back"), 1, -1, 0, CFG.GAME_HEIGHT - ImageManager.getImage(Images.buttonPlay).getHeight(), true));
        arrayList.add(new AnonymousClass3(CFG.BUTTON_WIDTH + InGame.topRightPadding, 0, CFG.BUTTON_WIDTH, InGame.topStatsHeight, Images.encyclopedia));
        arrayList.add(new AnonymousClass4(0, 0, CFG.BUTTON_WIDTH, InGame.topStatsHeight, Images.settings));
        lTime = CFG.currentTimeMillis;
        initMenu(null, 0, 0, CFG.GAME_WIDTH, CFG.GAME_HEIGHT, arrayList, true);
    }

    public static final void clearPlayerData() {
        Game.player.civilizationGeneralsPool.clearData();
        Game.player.civAdvisorsPool_Administration.clearData();
        Game.player.civAdvisorsPool_Economy.clearData();
        Game.player.civAdvisorsPool_Technology.clearData();
        Game.player.civAdvisorsPool_Military.clearData();
        Game.player.clearEvents();
        Game.player.playerData.invasion.clearInvasions();
        Game.player.clearMessages();
        Game.player.clearNotifications();
        Game.player.clearBattleReport();
        Game.player.playerData.espionage.clearEspionageMissions();
        Game.player.clearPinnedArmy();
        Game.player.clearFormableCivs();
        Game.player.playerData.techQueue.clearTechQueue();
        Game.player.allowAIMove = false;
    }

    public static final void hideMenus() {
        try {
            if (Game.menuManager.getVisibleInGame_Console()) {
                Game.menuManager.setVisibleInGame_Console(false);
            }
            if (Game.menuManager.getVisibleInGame_SaveGame()) {
                Game.menuManager.setVisibleInGame_SaveGame(false);
            }
            if (Game.menuManager.getVisibleInGame_Escape()) {
                Game.menuManager.setVisibleInGame_Escape(false);
            }
            if (Game.menuManager.getVisibleInGame_PopUp()) {
                Game.menuManager.setVisibleInGame_PopUp(false);
            }
            if (Game.menuManager.getVisibleInGame_Right()) {
                Game.menuManager.rebuildInGame_Right();
            }
            if (Game.menuManager.getVisibleInGame_Notifications()) {
                Game.menuManager.rebuildInGame_Notifications();
            }
        } catch (Exception unused) {
        }
        try {
            ButtonTopDate.updateMaxWidth();
        } catch (Exception unused2) {
        }
        try {
            if (Game.menuManager.getVisibleInGame_Civ()) {
                Game.menuManager.setVisibleInGame_Civ(false);
            }
        } catch (Exception unused3) {
        }
        try {
            if (Game.menuManager.getVisibleInGame_Court()) {
                Game.menuManager.setVisibleInGame_Court(false);
            }
        } catch (Exception unused4) {
        }
    }

    public static final void initNewGame() {
        Game.setActiveProvinceID(-1);
        Game.gameThread.play = false;
        ProvinceBorderManager.clearProvinceBorder();
        Game.initDifficulty();
        Game.player.currSituation.buildPlayerLegaciesLVL();
        Game.player.currSituation.updateCurrentSituation();
        ProvinceDrawArmy.updateArmyImgID();
        Game.menuManager.rebuildInGame();
        hideMenus();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            Game.getCiv(i).updateArmyRegimentSize();
        }
        Game.player.loadFormableCivs();
        InGame_Court_Government.reloadFlags = true;
        if (Game.SPECTATOR_MODE) {
            Game.FOG_OF_WAR = false;
        }
        AI_Colonization.initData();
        Game.player.fog.buildFogOfWar(Game.player.iCivID);
        InGame_Court_Government.reloadFlags = true;
        Game.mapCoords.centerToProvinceID(Game.getCiv(Game.player.iCivID).getCapitalProvinceID());
        Game.soundsManager.updateSoundsRandomTime();
        Game.addSimpleTask(new AnonymousClass5("takeAdvantages_AI"));
        Game.addSimpleTask(new AnonymousClass6("buildLuckyCivs"));
        if (GameValues.fog.HIDE_ARMIES) {
            updateArmiesText();
        }
    }

    public static final void setRandomCiv() {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < Game.getCivsSize(); i++) {
            if (Game.getCiv(i).getNumOfProvinces() > 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (arrayList.size() > 0) {
            Game.player.iCivID = ((Integer) arrayList.get(Game.oR.nextInt(arrayList.size()))).intValue();
            try {
                if (Game.getCiv(Game.player.iCivID).getCapitalProvinceID() >= 0) {
                    Game.mapCoords.centerToProvinceID(Game.getCiv(Game.player.iCivID).getCapitalProvinceID());
                    ProvinceBorderManager.updateDrawProvinceBorder_SelectCiv_ByProvinceID(Game.getCiv(Game.player.iCivID).getCapitalProvinceID());
                }
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
    }

    public static final void takeAdvantages_AI() {
        for (int i = 1; i < Game.player.iCivID; i++) {
            AI_Advantages.takeAdvantages(i);
        }
        for (int i2 = Game.player.iCivID + 1; i2 < Game.getCivsSize(); i2++) {
            AI_Advantages.takeAdvantages(i2);
        }
    }

    public static final void updateArmiesText() {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            for (int i2 = 0; i2 < Game.getProvince(i).getArmySize(); i2++) {
                Game.getProvince(i).getArmy(i2).updateArmyWidth_Just(false);
            }
        }
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        spriteBatch.setColor(new Color(0.0f, 0.0f, 0.0f, 0.5f));
        ImageManager.getImage(Images.gradientVertical).draw(spriteBatch, getPosX() + i, getPosY() + i2, getWidth(), CFG.BUTTON_HEIGHT / 2);
        spriteBatch.setColor(Color.WHITE);
        ImageManager.getImage(Images.topStatsClassic).draw2(spriteBatch, i, i2, getMenuElement(getMenuElementsSize() - 2).getPosX() + getMenuElement(getMenuElementsSize() - 2).getWidth() + InGame.topStatsPadding, ImageManager.getImage(Images.topStatsClassic).getHeight(), true, false);
        ImageManager.getImage(Images.topStatsClassic).draw2(spriteBatch, i, i2, getMenuElement(getMenuElementsSize() - 1).getPosX() + getMenuElement(getMenuElementsSize() - 1).getWidth() + InGame.topStatsPadding, ImageManager.getImage(Images.topStatsClassic).getHeight(), true, false);
        super.draw(spriteBatch, i, i2, z, status);
    }
}
