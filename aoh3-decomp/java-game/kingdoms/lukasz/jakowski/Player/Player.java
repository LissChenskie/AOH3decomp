package aoc.kingdoms.lukasz.jakowski.Player;

import aoc.kingdoms.lukasz.events.EventsManager;
import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Missions.MissionTree;
import aoc.kingdoms.lukasz.jakowski.Player.MessageTypes.PMessage;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerActiveEvent;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerCurrentSituation;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerData;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerFogOfWar;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats2;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats3;
import aoc.kingdoms.lukasz.jakowski.Player.More.PlayerStats4;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.map.FormableCivManager;
import aoc.kingdoms.lukasz.map.PeaceTreaty;
import aoc.kingdoms.lukasz.map.battles.BattleReport;
import aoc.kingdoms.lukasz.map.civilization.CivilizationAdvisorsPool;
import aoc.kingdoms.lukasz.map.civilization.CivilizationGeneralsPool;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menusInGame.InGame_Event;
import com.badlogic.gdx.backends.android.Zrdz.PxHJ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Player {
    public int iCivID = 0;
    public PlayerData playerData = new PlayerData();
    public PlayerStats playerStats = new PlayerStats();
    public PlayerStats2 playerStats2 = new PlayerStats2();
    public PlayerStats3 playerStats3 = new PlayerStats3();
    public PlayerStats4 playerStats4 = new PlayerStats4();
    public boolean allowAIMove = false;
    public PlayerCurrentSituation currSituation = new PlayerCurrentSituation();
    public List<PMessage> messages = new ArrayList();
    public int iMessagesSize = 0;
    public List<Notification> lNotifications = new ArrayList();
    public int iNotificationsSize = 0;
    public List<FormableCivManager.FormableCiv> formableCivs = new ArrayList();
    public PlayerFogOfWar fog = new PlayerFogOfWar();
    public CivilizationGeneralsPool civilizationGeneralsPool = new CivilizationGeneralsPool();
    public CivilizationAdvisorsPool civAdvisorsPool_Administration = new CivilizationAdvisorsPool(0);
    public CivilizationAdvisorsPool civAdvisorsPool_Economy = new CivilizationAdvisorsPool(1);
    public CivilizationAdvisorsPool civAdvisorsPool_Technology = new CivilizationAdvisorsPool(2);
    public CivilizationAdvisorsPool civAdvisorsPool_Military = new CivilizationAdvisorsPool(3);
    public PeaceTreaty peaceTreaty = null;
    public int iActiveEventsSize = 0;
    public int iPinnedArmiesSize = 0;
    public int iPinnedProvincesSize = 0;
    public List<BattleReport> lBattleReports = new ArrayList();
    public int iBattleReportsSize = 0;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Player$1, reason: invalid class name */
    class AnonymousClass1 extends Game.SimpleTask {
        AnonymousClass1(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_MessagesSavePos();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Player$10, reason: invalid class name */
    static /* synthetic */ class AnonymousClass10 {
        static final /* synthetic */ int[] $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type;

        static {
            int[] iArr = new int[Notification.Notification_Type.values().length];
            $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type = iArr;
            try {
                iArr[Notification.Notification_Type.BATTLE_REPORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Player$2, reason: invalid class name */
    class AnonymousClass2 extends Game.SimpleTask {
        AnonymousClass2(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_MessagesSavePos();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Player$3, reason: invalid class name */
    class AnonymousClass3 extends Game.SimpleTask {
        AnonymousClass3(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_MessagesSavePos();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Player$4, reason: invalid class name */
    class AnonymousClass4 extends Game.SimpleTask {
        AnonymousClass4(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Notifications();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Player$5, reason: invalid class name */
    class AnonymousClass5 extends Game.SimpleTask {
        AnonymousClass5(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Notifications();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Player$6, reason: invalid class name */
    class AnonymousClass6 extends Game.SimpleTask {
        AnonymousClass6(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Notifications();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Player$7, reason: invalid class name */
    class AnonymousClass7 extends Game.SimpleTask {
        AnonymousClass7(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Notifications();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Player$8, reason: invalid class name */
    class AnonymousClass8 extends Game.SimpleTask {
        AnonymousClass8(String str) {
            super(str);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Notifications();
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Player$9, reason: invalid class name */
    class AnonymousClass9 extends Game.SimpleTask {
        AnonymousClass9(String str, int i) {
            super(str, i);
        }

        @Override // aoc.kingdoms.lukasz.jakowski.Game.SimpleTask
        public void update() {
            Game.menuManager.rebuildInGame_Right();
            if (Game.menuManager.getVisibleInGame_Event() && InGame_Event.eventID == this.id) {
                Game.menuManager.setVisibleInGame_Event(false);
            }
        }
    }

    public final void actionPinArmy(String str) {
        if (addPinArmy(str)) {
            return;
        }
        removePinArmy(str);
    }

    public final void addActiveEvent(int i, int i2, int i3) {
        try {
            for (int i4 = this.iActiveEventsSize - 1; i4 >= 0; i4--) {
                if (this.playerData.activeEvents.get(i4).eventType == i && this.playerData.activeEvents.get(i4).id == i2) {
                    return;
                }
            }
            this.playerData.activeEvents.add(new PlayerActiveEvent(i, i2, Game_Calendar.TURN_ID + i3));
            this.iActiveEventsSize = this.playerData.activeEvents.size();
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void addBattleReport(BattleReport battleReport) {
        this.lBattleReports.add(battleReport);
        this.iBattleReportsSize = this.lBattleReports.size();
    }

    public final void addMessage(PMessage pMessage) {
        try {
            if (pMessage.fromCivID >= 0 && Game.getCiv(pMessage.fromCivID).getNumOfProvinces() > 0) {
                this.messages.add(pMessage);
                this.iMessagesSize = this.messages.size();
                Game.addSimpleTask(new AnonymousClass1("rebuildInGame_MessagesSavePos"));
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void addNotification(Notification notification) {
        if (notification.notificationType == Notification.Notification_Type.NEIGHBOR_OR_RIVAL_AT_WAR) {
            for (int i = 0; i < this.iNotificationsSize; i++) {
                if (this.lNotifications.get(i).id == notification.id) {
                    return;
                }
            }
        }
        this.lNotifications.add(notification);
        this.iNotificationsSize = this.lNotifications.size();
        Game.addSimpleTask(new AnonymousClass4("rebuildNotifications"));
    }

    public void addNotification_Reinforce(Notification notification) {
        for (int i = 0; i < this.iNotificationsSize; i++) {
            if (this.lNotifications.get(i).notificationType == Notification.Notification_Type.REINFORCE_ARMY_COST) {
                this.lNotifications.get(i).id += notification.id;
                float f = this.lNotifications.get(i).id / 100.0f;
                this.lNotifications.get(i).sText = new StringBuilder().append(Game.lang.get("ReinforceCost")).append(": ").append(CFG.getPrecision2(f, f > 99.9f ? 1 : f < 0.1f ? 100 : 10)).toString();
                Game.addSimpleTask(new AnonymousClass5("rebuildNotifications"));
                return;
            }
        }
        this.lNotifications.add(notification);
        this.iNotificationsSize = this.lNotifications.size();
        Game.addSimpleTask(new AnonymousClass6("rebuildNotifications"));
    }

    public void addNotification_Unrest(Notification notification) {
        int i = 0;
        for (int i2 = 0; i2 < this.iNotificationsSize; i2++) {
            if (this.lNotifications.get(i2).notificationType == Notification.Notification_Type.HIGH_UNREST) {
                i++;
            }
        }
        if (i >= GameValues.rebels.NOTIFICATIONS_UNREST_LIMIT) {
            return;
        }
        this.lNotifications.add(notification);
        this.iNotificationsSize = this.lNotifications.size();
        Game.addSimpleTask(new AnonymousClass7("rebuildNotifications"));
    }

    public final boolean addPinArmy(String str) {
        try {
            for (int i = this.iPinnedArmiesSize - 1; i >= 0; i--) {
                if (this.playerData.pinnedArmies.get(i).equals(str)) {
                    return false;
                }
            }
            this.playerData.pinnedArmies.add(str);
            this.iPinnedArmiesSize = this.playerData.pinnedArmies.size();
            return true;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return true;
        }
    }

    public final void clearBattleReport() {
        this.lBattleReports.clear();
        this.iBattleReportsSize = 0;
    }

    public final void clearEvents() {
        this.playerData.activeEvents.clear();
        this.iActiveEventsSize = 0;
    }

    public void clearFormableCivs() {
        this.formableCivs.clear();
    }

    public final void clearMessages() {
        this.messages.clear();
        this.iMessagesSize = 0;
    }

    public final void clearNotifications() {
        this.lNotifications.clear();
        this.iNotificationsSize = 0;
    }

    public final void clearPinnedArmy() {
        this.playerData.pinnedArmies.clear();
        this.iPinnedArmiesSize = 0;
    }

    public final int getBattleReportID(String str) {
        for (int i = this.iBattleReportsSize - 1; i >= 0; i--) {
            if (this.lBattleReports.get(i).key.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public PMessage getMessage(String str) {
        try {
            for (int i = this.iMessagesSize - 1; i >= 0; i--) {
                if (this.messages.get(i).key.equals(str)) {
                    return this.messages.get(i);
                }
            }
            return null;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    public MenuElement_Hover getMessage_Hover(String str) {
        try {
            for (int i = this.iMessagesSize - 1; i >= 0; i--) {
                if (this.messages.get(i).key.equals(str)) {
                    return this.messages.get(i).buildElementHover();
                }
            }
            return null;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return null;
        }
    }

    public final void initPeaceTreaty_Player(String str) {
        for (int i = 0; i < Game.getProvincesSize(); i++) {
            Game.getProvince(i).peaceTreatyIsToTake = false;
            Game.getProvince(i).peaceTreatyIsTaken = false;
        }
        this.peaceTreaty = new PeaceTreaty(this.iCivID, str, true);
    }

    public boolean isPinned(String str) {
        try {
            for (int i = this.iPinnedArmiesSize - 1; i >= 0; i--) {
                if (this.playerData.pinnedArmies.get(i).equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            CFG.exceptionStack(e);
            return false;
        }
    }

    public void loadFormableCivs() {
        clearFormableCivs();
        for (int i = 0; i < Game.getCiv(this.iCivID).sTagsCanForm.size(); i++) {
            FormableCivManager.FormableCiv formableCivilization = FormableCivManager.getFormableCivilization(Game.getCiv(this.iCivID).sTagsCanForm.get(i));
            if (formableCivilization == null) {
                Game.getCiv(this.iCivID).sTagsCanForm.remove(i);
            } else {
                this.formableCivs.add(formableCivilization);
            }
        }
    }

    public final void removeActiveEvent(int i, int i2) {
        try {
            for (int i3 = this.iActiveEventsSize - 1; i3 >= 0; i3--) {
                if (this.playerData.activeEvents.get(i3).eventType == i && this.playerData.activeEvents.get(i3).id == i2) {
                    this.playerData.activeEvents.remove(i3);
                    this.iActiveEventsSize = this.playerData.activeEvents.size();
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeMessage(String str) {
        try {
            for (int i = this.iMessagesSize - 1; i >= 0; i--) {
                if (this.messages.get(i).key.equals(str)) {
                    this.messages.remove(i);
                    this.iMessagesSize = this.messages.size();
                    Game.addSimpleTask(new AnonymousClass2(PxHJ.DTi));
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public void removeNotification(int i) {
        try {
            if (AnonymousClass10.$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type[this.lNotifications.get(i).notificationType.ordinal()] == 1) {
                removeReport(this.lNotifications.get(i).key);
            }
            this.lNotifications.remove(i);
            this.iNotificationsSize = this.lNotifications.size();
            Game.addSimpleTask(new AnonymousClass8("rebuildNotifications"));
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removePinArmy(String str) {
        try {
            for (int i = this.iPinnedArmiesSize - 1; i >= 0; i--) {
                if (this.playerData.pinnedArmies.get(i).equals(str)) {
                    this.playerData.pinnedArmies.remove(i);
                    this.iPinnedArmiesSize = this.playerData.pinnedArmies.size();
                    return;
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void removeReport(String str) {
        for (int i = 0; i < this.iBattleReportsSize; i++) {
            if (this.lBattleReports.get(i).key.equals(str)) {
                this.lBattleReports.remove(i);
                this.iBattleReportsSize = this.lBattleReports.size();
                return;
            }
        }
    }

    public final void updateEvents() {
        for (int i = this.iActiveEventsSize - 1; i >= 0; i--) {
            if ((this.playerData.activeEvents.get(i).iTurnID + GameValues.events.EVENT_TIME_TO_RESPOND) - Game_Calendar.TURN_ID <= 0) {
                int i2 = this.playerData.activeEvents.get(i).eventType;
                int i3 = this.playerData.activeEvents.get(i).id;
                Game.player.playerData.activeEvents.remove(i);
                this.iActiveEventsSize = this.playerData.activeEvents.size();
                if (i2 == 999) {
                    MissionTree.takeMissionDecision(Game.player.iCivID, i3, 0);
                } else if (i2 == 1000) {
                    MissionTree.takeMissionDecision_Civ(Game.player.iCivID, i3, 0);
                } else {
                    EventsManager.takeEventDecision(Game.player.iCivID, i2, i3, 0);
                }
                Game.menuManager.setVisibleInGame_Event(false);
                Game.addSimpleTask(new AnonymousClass9("RebuildInGameRight", i3));
            }
        }
    }

    public final void updateMessages() {
        try {
            for (int i = this.iMessagesSize - 1; i >= 0; i--) {
                if (this.messages.get(i).expiresTurnID <= Game_Calendar.TURN_ID) {
                    this.messages.get(i).onRefuse();
                    this.messages.remove(i);
                    this.iMessagesSize = this.messages.size();
                    Game.addSimpleTask(new AnonymousClass3("rebuildInGame_MessagesSavePos"));
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }

    public final void updateNotifications() {
        try {
            for (int i = this.iNotificationsSize - 1; i >= 0; i--) {
                if (Game_Calendar.TURN_ID - this.lNotifications.get(i).iTurnID > GameValues.notifications.REMOVE_NOTIFICATION_DAYS) {
                    removeNotification(i);
                }
            }
        } catch (Exception e) {
            CFG.exceptionStack(e);
        }
    }
}
