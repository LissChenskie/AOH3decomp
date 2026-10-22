package aoc.kingdoms.lukasz.menusInGame;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification;
import aoc.kingdoms.lukasz.menu.ClickAnimation;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu.Menu;
import aoc.kingdoms.lukasz.menu.MenuManager;
import aoc.kingdoms.lukasz.menu_element.Minimap;
import aoc.kingdoms.lukasz.menu_element.Status;
import aoc.kingdoms.lukasz.menu_element.button.Button32Padd;
import aoc.kingdoms.lukasz.menu_element.button.Button_Notification;
import aoc.kingdoms.lukasz.menu_element.button.Button_NotificationResource;
import aoc.kingdoms.lukasz.menu_element.button.Button_NotificationResource_Green;
import aoc.kingdoms.lukasz.menu_element.button.Button_NotificationResource_Red;
import aoc.kingdoms.lukasz.menu_element.button.Button_Notification_Flag;
import aoc.kingdoms.lukasz.menu_element.button.Button_Notification_Flag_Green;
import aoc.kingdoms.lukasz.menu_element.button.Button_Notification_Flag_Red;
import aoc.kingdoms.lukasz.menu_element.button.Button_Notification_Green;
import aoc.kingdoms.lukasz.menu_element.button.Button_Notification_Red;
import aoc.kingdoms.lukasz.textures.ImageManager;
import aoc.kingdoms.lukasz.textures.Images;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class InGame_Notifications extends Menu {
    protected static final int ANIMATION_TIME = 60;
    public static long lTime;
    public static boolean stateVisible;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$1, reason: invalid class name */
    class AnonymousClass1 extends Button_NotificationResource_Red {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$1$1, reason: invalid class name and collision with other inner class name */
        class C00091 extends ClickAnimation {
            C00091(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER_RED;
            }
        }

        AnonymousClass1(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j) {
            super(str, str2, i, i2, i3, i4, i5, i6, j);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new C00091(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$10, reason: invalid class name */
    class AnonymousClass10 extends Button_Notification_Red {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$10$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER_RED;
            }
        }

        AnonymousClass10(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j) {
            super(str, str2, i, i2, i3, i4, i5, i6, j);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$11, reason: invalid class name */
    class AnonymousClass11 extends Button_Notification_Green {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$11$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER_GREEN;
            }
        }

        AnonymousClass11(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j) {
            super(str, str2, i, i2, i3, i4, i5, i6, j);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$12, reason: invalid class name */
    class AnonymousClass12 extends Button_Notification {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$12$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER;
            }
        }

        AnonymousClass12(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j) {
            super(str, str2, i, i2, i3, i4, i5, i6, j);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$13, reason: invalid class name */
    static /* synthetic */ class AnonymousClass13 {
        static final /* synthetic */ int[] $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG;

        static {
            int[] iArr = new int[Notification.Notification_BG.values().length];
            $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG = iArr;
            try {
                iArr[Notification.Notification_BG.RED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG[Notification.Notification_BG.GREEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$2, reason: invalid class name */
    class AnonymousClass2 extends Button_NotificationResource_Green {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$2$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER_GREEN;
            }
        }

        AnonymousClass2(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j) {
            super(str, str2, i, i2, i3, i4, i5, i6, j);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$3, reason: invalid class name */
    class AnonymousClass3 extends Button_NotificationResource {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$3$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER;
            }
        }

        AnonymousClass3(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j) {
            super(str, str2, i, i2, i3, i4, i5, i6, j);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$4, reason: invalid class name */
    class AnonymousClass4 extends Button_Notification_Flag_Red {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$4$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER_RED;
            }
        }

        AnonymousClass4(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6, j, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$5, reason: invalid class name */
    class AnonymousClass5 extends Button_Notification_Flag_Green {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$5$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER_GREEN;
            }
        }

        AnonymousClass5(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6, j, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$6, reason: invalid class name */
    class AnonymousClass6 extends Button_Notification_Flag {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$6$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER;
            }
        }

        AnonymousClass6(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6, j, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$7, reason: invalid class name */
    class AnonymousClass7 extends Button_Notification_Flag_Red {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$7$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER_RED;
            }
        }

        AnonymousClass7(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6, j, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$8, reason: invalid class name */
    class AnonymousClass8 extends Button_Notification_Flag_Green {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$8$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER_GREEN;
            }
        }

        AnonymousClass8(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6, j, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$9, reason: invalid class name */
    class AnonymousClass9 extends Button_Notification_Flag {

        /* JADX INFO: renamed from: aoc.kingdoms.lukasz.menusInGame.InGame_Notifications$9$1, reason: invalid class name */
        class AnonymousClass1 extends ClickAnimation {
            AnonymousClass1(int i, int i2, int i3, int i4) {
                super(i, i2, i3, i4);
            }

            @Override // aoc.kingdoms.lukasz.menu.ClickAnimation
            public Color getColor() {
                return Colors.COLOR_NOTIFICATION_OVER;
            }
        }

        AnonymousClass9(String str, String str2, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7) {
            super(str, str2, i, i2, i3, i4, i5, i6, j, i7);
        }

        @Override // aoc.kingdoms.lukasz.menu_element.button.Button_Notification, aoc.kingdoms.lukasz.menu_element.MenuElement
        public void actionElement() {
            super.actionElement();
            MenuManager menuManager = Game.menuManager;
            MenuManager.addClickAnimation(new AnonymousClass1(getPosX() + (getWidth() / 2) + InGame_Notifications.this.getMenuPosX(), getPosY() + (getHeight() / 2) + InGame_Notifications.this.getMenuPosY(), getWidth(), getHeight()));
        }
    }

    public InGame_Notifications() {
        int i;
        int height;
        int i2;
        int i3;
        int i4;
        int height2;
        int i5;
        int height3;
        int i6;
        ArrayList arrayList = new ArrayList();
        int i7 = CFG.PADDING;
        ImageManager.getImage(Images.title2).getHeight();
        int i8 = Game.mapBG.iMinimapWidth + Images.boxTitleBORDERWIDTH;
        int i9 = CFG.GAME_WIDTH - i8;
        int i10 = 2;
        int height4 = ImageManager.getImage(Images.topStats).getHeight() + (CFG.PADDING * 2);
        int i11 = CFG.PADDING;
        int iMax = Math.max(CFG.BUTTON_HEIGHT / 2, Math.max(ImageManager.getImage(Images.gold).getHeight(), CFG.TEXT_HEIGHT) + CFG.PADDING);
        int height5 = Game.player.iNotificationsSize < GameValues.notifications.NUMBER_OF_NOTIFICATIONS ? ((iMax + CFG.PADDING) * (GameValues.notifications.NUMBER_OF_NOTIFICATIONS - Game.player.iNotificationsSize)) + 0 : 0;
        int i12 = 0;
        while (i12 < Game.player.iNotificationsSize) {
            try {
                if (Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.PRICE_CHANGE || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.LARGEST_PRODUCER || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.NO_LONGER_LARGEST_PRODUCER) {
                    int i13 = i12;
                    try {
                        i = i13;
                        try {
                            int i14 = AnonymousClass13.$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG[Game.player.lNotifications.get(i).notificationBG.ordinal()];
                            if (i14 == 1) {
                                arrayList.add(new AnonymousClass1(Game.player.lNotifications.get(i).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i).imageID, i, Game.player.lNotifications.get(i).lTime));
                                height = arrayList.get(arrayList.size() - 1).getHeight();
                                i2 = CFG.PADDING;
                            } else if (i14 != 2) {
                                arrayList.add(new AnonymousClass3(Game.player.lNotifications.get(i).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i).imageID, i, Game.player.lNotifications.get(i).lTime));
                                height = arrayList.get(arrayList.size() - 1).getHeight();
                                i2 = CFG.PADDING;
                            } else {
                                arrayList.add(new AnonymousClass2(Game.player.lNotifications.get(i).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i).imageID, i, Game.player.lNotifications.get(i).lTime));
                                height = arrayList.get(arrayList.size() - 1).getHeight();
                                i2 = CFG.PADDING;
                            }
                            height5 += height + i2;
                        } catch (Exception e) {
                            e = e;
                            CFG.exceptionStack(e);
                        }
                    } catch (Exception e2) {
                        e = e2;
                        i = i13;
                    }
                } else if (Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.RELATIONS_IMPROVING || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.RELATIONS_DAMAGING || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.NEIGHBOR_OR_RIVAL_AT_WAR || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.RELATIONS || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.RELATIONS_COMPLETED || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.ALLIANCE_EXPIRED || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.LEADER_DIED || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.ADVISOR_DIED || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.GENERAL_DIED) {
                    i3 = i12;
                    int i15 = AnonymousClass13.$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG[Game.player.lNotifications.get(i3).notificationBG.ordinal()];
                    if (i15 == 1) {
                        arrayList.add(new AnonymousClass4(Game.player.lNotifications.get(i3).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i3).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i3).imageID, i3, Game.player.lNotifications.get(i3).lTime, Game.player.lNotifications.get(i3).id));
                        height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        i = i3;
                    } else if (i15 != 2) {
                        arrayList.add(new AnonymousClass6(Game.player.lNotifications.get(i3).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i3).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i3).imageID, i3, Game.player.lNotifications.get(i3).lTime, Game.player.lNotifications.get(i3).id));
                        height3 = arrayList.get(arrayList.size() - 1).getHeight();
                        i6 = CFG.PADDING;
                        height5 += height3 + i6;
                        i = i3;
                    } else {
                        i4 = i3;
                        arrayList.add(new AnonymousClass5(Game.player.lNotifications.get(i3).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i3).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i3).imageID, i3, Game.player.lNotifications.get(i3).lTime, Game.player.lNotifications.get(i3).id));
                        height2 = arrayList.get(arrayList.size() - 1).getHeight();
                        i5 = CFG.PADDING;
                        height5 += height2 + i5;
                        i = i4;
                    }
                } else if (Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.SIEGE || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.BATTLE_REPORT || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.HIGH_UNREST || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.SETTLEMENT_ESTABLISHED || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.ARMY_DESTROYED || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.DISEASE || Game.player.lNotifications.get(i12).notificationType == Notification.Notification_Type.REVOLT) {
                    int i16 = i12;
                    int i17 = AnonymousClass13.$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG[Game.player.lNotifications.get(i16).notificationBG.ordinal()];
                    if (i17 == 1) {
                        arrayList.add(new AnonymousClass7(Game.player.lNotifications.get(i16).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i16).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i16).imageID, i16, Game.player.lNotifications.get(i16).lTime, Game.getProvince(Game.player.lNotifications.get(i16).id).getCivID()));
                        height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        i = i16;
                    } else if (i17 != 2) {
                        i4 = i16;
                        arrayList.add(new AnonymousClass9(Game.player.lNotifications.get(i16).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i16).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i16).imageID, i16, Game.player.lNotifications.get(i16).lTime, Game.getProvince(Game.player.lNotifications.get(i16).id).getCivID()));
                        height2 = arrayList.get(arrayList.size() - 1).getHeight();
                        i5 = CFG.PADDING;
                        height5 += height2 + i5;
                        i = i4;
                    } else {
                        arrayList.add(new AnonymousClass8(Game.player.lNotifications.get(i16).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i16).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i16).imageID, i16, Game.player.lNotifications.get(i16).lTime, Game.getProvince(Game.player.lNotifications.get(i16).id).getCivID()));
                        height5 += arrayList.get(arrayList.size() - 1).getHeight() + CFG.PADDING;
                        i = i16;
                    }
                } else {
                    int i18 = AnonymousClass13.$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG[Game.player.lNotifications.get(i12).notificationBG.ordinal()];
                    if (i18 == 1) {
                        i3 = i12;
                        arrayList.add(new AnonymousClass10(Game.player.lNotifications.get(i3).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i3).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i3).imageID, i3, Game.player.lNotifications.get(i3).lTime));
                        height3 = arrayList.get(arrayList.size() - 1).getHeight();
                        i6 = CFG.PADDING;
                    } else if (i18 != i10) {
                        i3 = i12;
                        arrayList.add(new AnonymousClass12(Game.player.lNotifications.get(i12).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i12).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i12).imageID, i12, Game.player.lNotifications.get(i12).lTime));
                        height3 = arrayList.get(arrayList.size() - 1).getHeight();
                        i6 = CFG.PADDING;
                    } else {
                        i3 = i12;
                        arrayList.add(new AnonymousClass11(Game.player.lNotifications.get(i3).sText, Game_Calendar.getDate_ByTurnID_MessageShort(Game.player.lNotifications.get(i3).iTurnID), 1, height5, (i8 - i7) - 1, iMax, Game.player.lNotifications.get(i3).imageID, i3, Game.player.lNotifications.get(i3).lTime));
                        height3 = arrayList.get(arrayList.size() - 1).getHeight();
                        i6 = CFG.PADDING;
                    }
                    height5 += height3 + i6;
                    i = i3;
                }
                i12 = i + 1;
                i10 = 2;
            } catch (Exception e3) {
                CFG.exceptionStack(e3);
            }
        }
        int size = arrayList.size();
        int posY = 0;
        for (int i19 = 0; i19 < size; i19++) {
            if (posY < arrayList.get(i19).getPosY() + arrayList.get(i19).getHeight() + CFG.PADDING) {
                posY = arrayList.get(i19).getPosY() + arrayList.get(i19).getHeight() + CFG.PADDING;
            }
        }
        initMenu(null, i9, height4, i8, (iMax + CFG.PADDING) * GameValues.notifications.NUMBER_OF_NOTIFICATIONS, arrayList, true, false);
        this.drawScrollPositionAlways2 = false;
        setMenuPosY(getPosY() - 990000);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public void draw(SpriteBatch spriteBatch, int i, int i2, boolean z, Status status) {
        super.draw(spriteBatch, i, i2, z, status);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getMenuPosY() {
        return getScrollableY() ? super.getMenuPosY() : (((((CFG.GAME_HEIGHT - Game.mapBG.minimapOfCivilizations.getHeight()) - (Minimap.getPadding() * 2)) - getHeight()) + InGame.iMinimapPosY) - Button32Padd.getButtonHeight()) - (CFG.PADDING * 4);
    }

    @Override // aoc.kingdoms.lukasz.menu.Menu
    public int getPosY() {
        return (((((CFG.GAME_HEIGHT - Game.mapBG.minimapOfCivilizations.getHeight()) - (Minimap.getPadding() * 2)) - getHeight()) + InGame.iMinimapPosY) - Button32Padd.getButtonHeight()) - (CFG.PADDING * 4);
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
