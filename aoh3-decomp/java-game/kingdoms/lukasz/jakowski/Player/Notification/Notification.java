package aoc.kingdoms.lukasz.jakowski.Player.Notification;

import aoc.kingdoms.lukasz.jakowski.CFG;
import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameValues;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.ResourcesManager;
import aoc.kingdoms.lukasz.map.province.ProvinceTouchExtraAction;
import aoc.kingdoms.lukasz.menu.Colors;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_Hover;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonus;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusFlag;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Button_TextBonusResource;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Line;
import aoc.kingdoms.lukasz.menu_element.menuElementHover.MenuElement_HoverElement_Type_Text_Desc;
import aoc.kingdoms.lukasz.menusInGame.Civ.InGame_Civ;
import aoc.kingdoms.lukasz.menusInGame.InGame_CivBonuses;
import aoc.kingdoms.lukasz.menusInGame.Province.InGame_ProvinceInfo;
import aoc.kingdoms.lukasz.textures.Images;
import java.util.ArrayList;

/* JADX INFO: loaded from: /workspace/tmpdex/classes.dex */
public class Notification {
    public int iTurnID;
    public int id;
    public int imageID;
    public String key;
    public long lTime;
    public Notification_BG notificationBG;
    public Notification_Type notificationType;
    public String sText;

    /* JADX INFO: renamed from: aoc.kingdoms.lukasz.jakowski.Player.Notification.Notification$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type;

        static {
            int[] iArr = new int[Notification_Type.values().length];
            $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type = iArr;
            try {
                iArr[Notification_Type.BATTLE_REPORT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type[Notification_Type.DISEASE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type[Notification_Type.HIGH_UNREST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type[Notification_Type.RELATIONS_COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type[Notification_Type.RELATIONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type[Notification_Type.NEIGHBOR_OR_RIVAL_AT_WAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type[Notification_Type.RELATIONS_IMPROVING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type[Notification_Type.RELATIONS_DAMAGING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type[Notification_Type.ALLIANCE_EXPIRED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public enum Notification_BG {
        NEUTRAL_BG,
        RED,
        GREEN
    }

    public enum Notification_Type {
        DEFAULT,
        SIEGE,
        BATTLE_REPORT,
        LEADER_DIED,
        ADVISOR_DIED,
        GENERAL_DIED,
        REVOLT,
        DISEASE,
        ARMY_DESTROYED,
        RELATIONS_COMPLETED,
        RELATIONS,
        RELATIONS_IMPROVING,
        RELATIONS_DAMAGING,
        ALLIANCE_EXPIRED,
        NEIGHBOR_OR_RIVAL_AT_WAR,
        PRICE_CHANGE,
        PRICE_CHANGE_GROUP,
        HIGH_UNREST,
        REINFORCE_ARMY_COST,
        LARGEST_PRODUCER,
        NO_LONGER_LARGEST_PRODUCER,
        SETTLEMENT_ESTABLISHED
    }

    public Notification(Notification_Type notification_Type, String str, int i, int i2, Notification_BG notification_BG) {
        init(str, i, i2, notification_BG);
        this.notificationType = notification_Type;
    }

    public Notification(Notification_Type notification_Type, String str, int i, int i2, Notification_BG notification_BG, int i3) {
        init(str, i, i2, notification_BG);
        this.notificationType = notification_Type;
        this.id = i3;
    }

    public Notification(Notification_Type notification_Type, String str, int i, int i2, Notification_BG notification_BG, String str2) {
        init(str, i, i2, notification_BG);
        this.notificationType = notification_Type;
        this.key = str2;
    }

    public Notification(Notification_Type notification_Type, String str, int i, int i2, Notification_BG notification_BG, String str2, int i3) {
        init(str, i, i2, notification_BG);
        this.notificationType = notification_Type;
        this.key = str2;
        this.id = i3;
    }

    public MenuElement_Hover buildMenuElementHover() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (this.notificationType == Notification_Type.RELATIONS_IMPROVING) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.id).getCivName(), "", this.id, CFG.FONT_BOLD_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("ImprovingRelations"), "", Images.relationsUp, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_POSITIVE, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else if (this.notificationType == Notification_Type.RELATIONS_DAMAGING) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.id).getCivName(), "", this.id, CFG.FONT_BOLD_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_GOLD, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("DamagingRelations"), "", Images.relationsDown, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_NEGATIVE, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        } else {
            if (this.notificationType == Notification_Type.HIGH_UNREST) {
                return InGame_ProvinceInfo.getHoverUnrest(this.id, false, false);
            }
            if (this.notificationType == Notification_Type.PRICE_CHANGE) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(this.sText, "", this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game.lang.get("Price") + ": ", "" + CFG.getPrecision2(ResourcesManager.getPrice(this.imageID), 100), Images.gold, CFG.FONT_REGULAR_SMALL, CFG.FONT_BOLD_SMALL, Colors.HOVER_LEFT, Colors.HOVER_GOLD));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else if (this.notificationType == Notification_Type.NO_LONGER_LARGEST_PRODUCER || this.notificationType == Notification_Type.LARGEST_PRODUCER) {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusResource(this.sText, "", this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            } else {
                arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(this.sText, "", this.imageID, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
                arrayList.add(new MenuElement_HoverElement(arrayList2));
                arrayList2.clear();
            }
        }
        if (this.notificationType == Notification_Type.RELATIONS_COMPLETED) {
            arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonusFlag(Game.getCiv(this.id).getCivName(), "", this.id, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_LEFT, Colors.HOVER_LEFT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        if (this.notificationType == Notification_Type.ARMY_DESTROYED) {
            arrayList2.add(new MenuElement_HoverElement_Type_Text_Desc(Game.lang.get("DestructionOrSurvival0", GameValues.battle.BATTLE_ARMY_DESTROYED_ROUND_ID), CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT));
            arrayList.add(new MenuElement_HoverElement(arrayList2));
            arrayList2.clear();
        }
        arrayList2.add(new MenuElement_HoverElement_Type_Line());
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        arrayList2.add(new MenuElement_HoverElement_Type_Button_TextBonus(Game_Calendar.getDate_ByTurnID(this.iTurnID), "", Images.time, CFG.FONT_REGULAR_SMALL, CFG.FONT_REGULAR_SMALL, Colors.HOVER_RIGHT, Colors.HOVER_RIGHT));
        arrayList.add(new MenuElement_HoverElement(arrayList2));
        arrayList2.clear();
        return new MenuElement_Hover(arrayList);
    }

    public void init(String str, int i, int i2, Notification_BG notification_BG) {
        this.sText = str;
        this.imageID = i;
        this.iTurnID = i2;
        this.notificationBG = notification_BG;
        this.lTime = CFG.currentTimeMillis;
    }

    public void onAction() {
        switch (AnonymousClass1.$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type[this.notificationType.ordinal()]) {
            case 1:
                Game.menuManager.rebuildInGame_BattleReport(this.key);
                break;
            case 2:
            case 3:
                Game.mapCoords.centerToProvinceID(this.id);
                if (Game.mapModes.iActiveMapModeID == Game.mapModes.MODE_DEFAULT) {
                    Game.setActiveProvinceID(this.id);
                    ProvinceTouchExtraAction.actionSetActiveProvinceID();
                }
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                int i = this.id;
                if (i >= 0) {
                    InGame_Civ.iRebuildToCivID = i;
                    Game.menuManager.rebuildInGame_Civ();
                    InGame_Civ.lTime = 0L;
                    if (Game.menuManager.getVisibleInGame_CivBonuses() && InGame_Civ.iActiveCivID != 0 && InGame_CivBonuses.iCivID != InGame_Civ.iActiveCivID) {
                        InGame_CivBonuses.iCivID = InGame_Civ.iActiveCivID;
                        Game.menuManager.rebuildInGame_CivBonuses();
                        Game.menuManager.setVisibleInGame_CivBonuses(true);
                        InGame_CivBonuses.lTime = 0L;
                        break;
                    }
                }
                break;
        }
    }
}
