package aoc.kingdoms.lukasz.menusInGame.Right;

import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;
import aoc.kingdoms.lukasz.jakowski.SoundsManager;
import aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerBattle;
import aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerEspionageMission;
import aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerRelations;
import aoc.kingdoms.lukasz.menu_element.button.Button_PinnedArmy;
import aoc.kingdoms.lukasz.menu_element.textStatic.Text_StaticBG_Mission_Right;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.InGame;
import aoc.kingdoms.lukasz.menusInGame.InGame_Event;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Right extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime = 0;
    public static boolean outlinerInView = true;
    public static int posY;
    public static boolean stateVisible;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_Right$1, reason: invalid class name */
    class AnonymousClass1 extends Text_StaticBG_Mission_Right {
        AnonymousClass1(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, i9);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Event() && InGame_Event.eventID == getCurrent()) {
                Game.menuManager.setVisibleInGame_Event(false);
            } else {
                Game.menuManager.rebuildInGame_Event(MissionTree.lMissions.get(getCurrent()).event, getValue1(), getCurrent());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return (Game.menuManager.getVisibleInGame_Event() && InGame_Event.eventID == getCurrent()) ? super.getSFX() : SoundsManager.EVENT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_Right$2, reason: invalid class name */
    class AnonymousClass2 extends Text_StaticBG_Mission_Right {
        AnonymousClass2(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, i9);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Event() && InGame_Event.eventID == getCurrent()) {
                Game.menuManager.setVisibleInGame_Event(false);
            } else {
                Game.menuManager.rebuildInGame_Event(Game.getCiv(Game.player.iCivID).lMissions.get(getCurrent()).event, getValue1(), getCurrent());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return (Game.menuManager.getVisibleInGame_Event() && InGame_Event.eventID == getCurrent()) ? super.getSFX() : SoundsManager.EVENT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_Right$3, reason: invalid class name */
    class AnonymousClass3 extends Text_StaticBG_Mission_Right {
        AnonymousClass3(String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
            super(str, i, i2, i3, i4, i5, i6, i7, i8, i9);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Event() && InGame_Event.eventID == getCurrent()) {
                Game.menuManager.setVisibleInGame_Event(false);
            } else {
                Game.menuManager.rebuildInGame_Event(EventsManager.getActiveEvent(getCurrent(), getValue1()), getValue1(), getCurrent());
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public int getSFX() {
            return (Game.menuManager.getVisibleInGame_Event() && InGame_Event.eventID == getCurrent()) ? super.getSFX() : SoundsManager.EVENT;
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_Right$4, reason: invalid class name */
    class AnonymousClass4 extends Button_OutlinerEspionageMission {
        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
            super(str, str2, i, i2, i3, i4, i5, i6, i7, i8, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            InGame.action1();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_Right$5, reason: invalid class name */
    class AnonymousClass5 extends Button_OutlinerRelations {
        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, str2, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Civ() && InGame_Civ.iActiveCivID == getCurrent()) {
                Game.menuManager.setVisibleInGame_Civ(false);
                return;
            }
            boolean visibleInGame_Civ = Game.menuManager.getVisibleInGame_Civ();
            InGame_Civ.iRebuildToCivID = getCurrent();
            Game.menuManager.rebuildInGame_Civ();
            if (visibleInGame_Civ) {
                InGame_Civ.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.getCiv(Game.player.iCivID).diplomacy.removeImproveRelations(getCurrent());
            Game.menuManager.addToastNegative(Game.lang.get("Removed") + ": ", "" + Game.getCiv(getCurrent()).getCivName(), Images.relationsDown);
            Game.menuManager.rebuildInGame_Right();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerRelations, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations_RightMenu(this.iCurrent, Game.player.iCivID, this.improvingMode, !this.improvingMode);
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.Right.InGame_Right$6, reason: invalid class name */
    class AnonymousClass6 extends Button_OutlinerRelations {
        AnonymousClass6(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            super(str, str2, i, i2, i3, i4, i5, i6, z);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            if (Game.menuManager.getVisibleInGame_Civ() && InGame_Civ.iActiveCivID == getCurrent()) {
                Game.menuManager.setVisibleInGame_Civ(false);
                return;
            }
            boolean visibleInGame_Civ = Game.menuManager.getVisibleInGame_Civ();
            InGame_Civ.iRebuildToCivID = getCurrent();
            Game.menuManager.rebuildInGame_Civ();
            if (visibleInGame_Civ) {
                InGame_Civ.lTime = 0L;
            }
        }

        @Override // aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElementPPM() {
            Game.getCiv(Game.player.iCivID).diplomacy.removeDamageRelations(getCurrent());
            Game.menuManager.addToastNegative(Game.lang.get("Removed") + ": ", "" + Game.getCiv(getCurrent()).getCivName(), Images.relationsDown);
            Game.menuManager.rebuildInGame_Right();
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_OutlinerRelations, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void buildElementHover() {
            this.menuElementHover = InGame_Civ.getHoverBetweenCivilizations_RightMenu(this.iCurrent, Game.player.iCivID, this.improvingMode, !this.improvingMode);
        }
    }

    public InGame_Right() {
        ArrayList arrayList = new ArrayList();
        int i = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i2 = Game.mapBG.iMinimapWidth + Images.boxTitleBORDERWIDTH;
        int i3 = CFG.GAME_WIDTH - i2;
        int height = ImageManager.getImage(Images.topStats).getHeight();
        int i4 = CFG.PADDING;
        int i5 = CFG.PADDING;
        int iMax = Math.max(CFG.BUTTON_HEIGHT / 2, Math.max(ImageManager.getImage(Images.flag_rect).getHeight(), CFG.TEXT_HEIGHT) + (CFG.PADDING * 2));
        int height2 = i5;
        for (int i6 = 0; i6 < Game.player.iActiveEventsSize; i6++) {
            try {
                if (Game.player.playerData.activeEvents.get(i6).eventType == 999) {
                    arrayList.add(new AnonymousClass1(MissionTree.lMissions.get(Game.player.playerData.activeEvents.get(i6).id).Name, CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, 1, height2, (i2 - 1) - i, Game.player.playerData.activeEvents.get(i6).eventType, Game.player.playerData.activeEvents.get(i6).id, MissionTree.lMissions.get(Game.player.playerData.activeEvents.get(i6).id).event.mission_image, Game.player.playerData.activeEvents.get(i6).iTurnID + GameValues.events.EVENT_TIME_TO_RESPOND));
                } else if (Game.player.playerData.activeEvents.get(i6).eventType == 1000) {
                    arrayList.add(new AnonymousClass2(Game.getCiv(Game.player.iCivID).lMissions.get(Game.player.playerData.activeEvents.get(i6).id).Name, CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, 1, height2, (i2 - 1) - i, Game.player.playerData.activeEvents.get(i6).eventType, Game.player.playerData.activeEvents.get(i6).id, Game.getCiv(Game.player.iCivID).lMissions.get(Game.player.playerData.activeEvents.get(i6).id).event.mission_image, Game.player.playerData.activeEvents.get(i6).iTurnID + GameValues.events.EVENT_TIME_TO_RESPOND));
                } else {
                    arrayList.add(new AnonymousClass3("" + Game.lang.get(EventsManager.getActiveEvent(Game.player.playerData.activeEvents.get(i6).id, Game.player.playerData.activeEvents.get(i6).eventType).title), CFG.FONT_REGULAR_SMALL, CFG.PADDING * 2, 1, height2, (i2 - 1) - i, Game.player.playerData.activeEvents.get(i6).eventType, Game.player.playerData.activeEvents.get(i6).id, EventsManager.getActiveEvent(Game.player.playerData.activeEvents.get(i6).id, Game.player.playerData.activeEvents.get(i6).eventType).mission_image, Game.player.playerData.activeEvents.get(i6).iTurnID + GameValues.events.EVENT_TIME_TO_RESPOND));
                }
                height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            } catch (Exception e) {
                CFG.exceptionStack(e);
            }
        }
        if (outlinerInView) {
            int height3 = height2;
            for (int i7 = 0; i7 < Game.player.playerData.espionage.iEspionageMissionsSize; i7++) {
                try {
                    if (Game.player.playerData.espionage.espionageMissions.get(i7).iReportTurnID > Game_Calendar.TURN_ID) {
                        arrayList.add(new AnonymousClass4(Game.lang.get("Progress"), "%", 1, height3, (i2 - i) - 1, iMax, Images.spy, Game.player.playerData.espionage.espionageMissions.get(i7).iCivID, Game.player.playerData.espionage.espionageMissions.get(i7).iReportTurnID - DiplomacyManager.sendSpyTime(Game.player.iCivID, Game.player.playerData.espionage.espionageMissions.get(i7).iCivID), Game.player.playerData.espionage.espionageMissions.get(i7).iReportTurnID, true));
                        height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                    }
                } catch (Exception e2) {
                    CFG.exceptionStack(e2);
                }
            }
            for (int i8 = 0; i8 < Game.getCiv(Game.player.iCivID).diplomacy.iImprovingRelationsSize; i8++) {
                arrayList.add(new AnonymousClass5(DiplomacyManager.getOpinion_String((int) Game.getCiv(Game.getCiv(Game.player.iCivID).diplomacy.improvingRelations.get(i8).iCivID).diplomacy.getRelation(Game.player.iCivID)), "" + ((int) Game.getCiv(Game.getCiv(Game.player.iCivID).diplomacy.improvingRelations.get(i8).iCivID).diplomacy.getRelation(Game.player.iCivID)), 1, height3, (i2 - i) - 1, iMax, Images.relationsUp, Game.getCiv(Game.player.iCivID).diplomacy.improvingRelations.get(i8).iCivID, true));
                height3 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
            height2 = height3;
            for (int i9 = 0; i9 < Game.getCiv(Game.player.iCivID).diplomacy.iDamagingRelationsSize; i9++) {
                arrayList.add(new AnonymousClass6(DiplomacyManager.getOpinion_String((int) Game.getCiv(Game.getCiv(Game.player.iCivID).diplomacy.damagingRelations.get(i9).iCivID).diplomacy.getRelation(Game.player.iCivID)), "" + ((int) Game.getCiv(Game.getCiv(Game.player.iCivID).diplomacy.damagingRelations.get(i9).iCivID).diplomacy.getRelation(Game.player.iCivID)), 1, height2, (i2 - i) - 1, iMax, Images.relationsDown, Game.getCiv(Game.player.iCivID).diplomacy.damagingRelations.get(i9).iCivID, false));
                height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
            }
        }
        if (Game.player.iCivID > 0) {
            int size = Game.getCiv(Game.player.iCivID).inBattles.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (Game.battleManager.getBattle(Game.getCiv(Game.player.iCivID).inBattles.get(i10)) != null) {
                    arrayList.add(new Button_OutlinerBattle(Game.getCiv(Game.player.iCivID).inBattles.get(i10), 1, height2, (i2 - i) - 1, iMax));
                    height2 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                }
            }
        }
        int i11 = (i2 - 1) - i;
        int width = i11 - ImageManager.getImage(Images.pinnedGeneralFrame).getWidth();
        try {
            int width2 = (int) ((i11 - (ImageManager.getImage(Images.pinnedGeneralFrame).getWidth() * 4)) / 3.0f);
            int height4 = height2;
            for (int i12 = 0; i12 < Game.player.iPinnedArmiesSize; i12++) {
                arrayList.add(new Button_PinnedArmy(Game.player.playerData.pinnedArmies.get(i12), width, height4));
                if ((width - ImageManager.getImage(Images.pinnedGeneralFrame).getWidth()) + width2 < 0) {
                    width = i11 - ImageManager.getImage(Images.pinnedGeneralFrame).getWidth();
                    height4 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                } else {
                    width -= ImageManager.getImage(Images.pinnedGeneralFrame).getWidth() + width2;
                }
            }
        } catch (Exception e3) {
            CFG.exceptionStack(e3);
        }
        int size2 = arrayList.size();
        int posY2 = 0;
        for (int i13 = 0; i13 < size2; i13++) {
            if (posY2 < arrayList.get(i13).getPosY() + arrayList.get(i13).getHeight()) {
                posY2 = arrayList.get(i13).getPosY() + arrayList.get(i13).getHeight();
            }
        }
        int i14 = posY2 + CFG.PADDING;
        posY = height + i14;
        initMenu(null, i3, height, i2, Math.min(i14, Math.max(CFG.BUTTON_HEIGHT, ((CFG.GAME_HEIGHT - height) - ((CFG.GAME_HEIGHT - Game.menuManager.getInGame_MapModesPosY()) + (CFG.PADDING * 3))) - ((iMax + CFG.PADDING) * GameValues.notifications.NUMBER_OF_NOTIFICATIONS))), arrayList, true, false);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosY() {
        return super.getMenuPosY() + InGame_RightQueue.extraY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosY() {
        return super.getPosY() + InGame_RightQueue.extraY;
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public boolean getVisible() {
        return super.getVisible() && Game.mapBG.getHideMenuZoomOut() && !Game.menuManager.getVisibleInGame_CivBonuses();
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void setVisible(boolean z) {
        super.setVisible(z);
        lTime = CFG.currentTimeMillis;
        stateVisible = z;
    }
}
