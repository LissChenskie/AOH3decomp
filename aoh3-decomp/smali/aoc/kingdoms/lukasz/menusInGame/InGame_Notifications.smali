.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Notifications.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J

.field public static stateVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 31

    move-object/from16 v14, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v17, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v18, v1, v17

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v2, v13

    add-int v19, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/2addr v1, v13

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->NUMBER_OF_NOTIFICATIONS:I

    const/4 v11, 0x0

    if-ge v1, v2, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v1, v20, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->NUMBER_OF_NOTIFICATIONS:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v1, v11

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    move/from16 v21, v1

    move v12, v11

    :goto_1
    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    if-ge v12, v1, :cond_f

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->PRICE_CHANGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    const/4 v10, 0x1

    if-eq v1, v2, :cond_c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NO_LONGER_LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v1, v2, :cond_1

    goto/16 :goto_6

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_IMPROVING:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_DAMAGING:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NEIGHBOR_OR_RIVAL_AT_WAR:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_COMPLETED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ALLIANCE_EXPIRED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->LEADER_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ADVISOR_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->GENERAL_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v1, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SIEGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->BATTLE_REPORT:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->HIGH_UNREST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SETTLEMENT_ESTABLISHED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ARMY_DESTROYED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->DISEASE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v1, v2, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->REVOLT:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v1, v2, :cond_3

    goto/16 :goto_2

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$13;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG:[I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v10, :cond_5

    if-eq v1, v13, :cond_4

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$12;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v8, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v5, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    const/16 v22, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move-wide/from16 v23, v5

    move/from16 v5, v22

    move/from16 v6, v21

    move/from16 v22, v8

    move/from16 v8, v20

    move-object v13, v9

    move/from16 v9, v22

    move v10, v12

    move v14, v12

    move-wide/from16 v11, v23

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v13, 0x1

    sub-int/2addr v1, v13

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto/16 :goto_4

    :cond_4
    move v13, v10

    move v14, v12

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$11;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v5, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    const/4 v8, 0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide/from16 v22, v5

    move v5, v8

    move/from16 v6, v21

    move/from16 v8, v20

    move v10, v14

    move-object v13, v11

    move-wide/from16 v11, v22

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto/16 :goto_4

    :cond_5
    move v14, v12

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$10;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    const/4 v2, 0x1

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    const/4 v5, 0x1

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v6, v21

    move/from16 v8, v20

    move v10, v14

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto/16 :goto_4

    :cond_6
    :goto_2
    move v14, v12

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$13;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG:[I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v13, 0x2

    if-eq v1, v13, :cond_7

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$9;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    const/16 v22, 0x1

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v5, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v23

    const/4 v8, 0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide/from16 v24, v5

    move v5, v8

    move/from16 v6, v21

    move/from16 v8, v20

    move v10, v14

    move-object/from16 v26, v11

    move-wide/from16 v11, v24

    move/from16 v24, v14

    move/from16 v14, v22

    move/from16 v13, v23

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    move-object/from16 v1, v26

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto/16 :goto_5

    :cond_7
    move/from16 v24, v14

    const/4 v14, 0x1

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$8;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    move/from16 v11, v24

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v5, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v22

    const/4 v8, 0x1

    move-object v1, v13

    move-object/from16 v2, p0

    move-wide/from16 v23, v5

    move v5, v8

    move/from16 v6, v21

    move/from16 v8, v20

    move v10, v11

    move/from16 v27, v11

    move-wide/from16 v11, v23

    move-object v14, v13

    move/from16 v13, v22

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v21, v21, v1

    move/from16 v13, v27

    goto/16 :goto_9

    :cond_8
    move/from16 v27, v14

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    move/from16 v13, v27

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    const/4 v2, 0x1

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v22

    const/4 v5, 0x1

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v6, v21

    move/from16 v8, v20

    move v10, v13

    move/from16 v28, v13

    move/from16 v13, v22

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v21, v21, v1

    move/from16 v13, v28

    goto/16 :goto_9

    :cond_9
    :goto_3
    move/from16 v28, v12

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$13;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG:[I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    move/from16 v14, v28

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    const/4 v13, 0x2

    if-eq v1, v13, :cond_a

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$6;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    const/4 v2, 0x1

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v5, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v12, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    const/4 v8, 0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide/from16 v22, v5

    move v5, v8

    move/from16 v6, v21

    move/from16 v8, v20

    move v10, v14

    move-object/from16 v29, v11

    move/from16 v24, v12

    move-wide/from16 v11, v22

    move/from16 v13, v24

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    move-object/from16 v1, v29

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :goto_4
    add-int/2addr v1, v2

    add-int v21, v21, v1

    move v13, v14

    goto/16 :goto_9

    :cond_a
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$5;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    const/4 v2, 0x1

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v10, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    const/4 v5, 0x1

    move-object v1, v13

    move-object/from16 v2, p0

    move/from16 v6, v21

    move/from16 v8, v20

    move/from16 v22, v10

    move v10, v14

    move/from16 v24, v14

    move-object v14, v13

    move/from16 v13, v22

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :goto_5
    add-int/2addr v1, v2

    add-int v21, v21, v1

    move/from16 v13, v24

    goto/16 :goto_9

    :cond_b
    move/from16 v24, v14

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$4;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    move/from16 v13, v24

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    const/4 v2, 0x1

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v10, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    const/4 v5, 0x1

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v6, v21

    move/from16 v8, v20

    move/from16 v22, v10

    move v10, v13

    move/from16 v30, v13

    move/from16 v13, v22

    invoke-direct/range {v1 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/2addr v1, v2

    add-int v21, v21, v1

    move/from16 v13, v30

    goto/16 :goto_9

    :cond_c
    :goto_6
    move/from16 v30, v12

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$13;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_BG:[I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v13, v30

    :try_start_2
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    const/4 v14, 0x2

    if-eq v1, v14, :cond_d

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$3;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    const/4 v2, 0x1

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v5, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    const/4 v8, 0x1

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide/from16 v22, v5

    move v5, v8

    move/from16 v6, v21

    move/from16 v8, v20

    move v10, v13

    move-object v14, v11

    move-wide/from16 v11, v22

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto/16 :goto_7

    :cond_d
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$2;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    const/4 v2, 0x1

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    const/4 v5, 0x1

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v6, v21

    move/from16 v8, v20

    move v10, v13

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_7

    :cond_e
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$1;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID_MessageShort(I)Ljava/lang/String;

    move-result-object v4

    sub-int v1, v17, v16

    const/4 v2, 0x1

    add-int/lit8 v7, v1, -0x1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v9, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-wide v11, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    const/4 v5, 0x1

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v6, v21

    move/from16 v8, v20

    move v10, v13

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_7
    add-int/2addr v1, v2

    add-int v21, v21, v1

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 v13, v30

    :goto_8
    move-object v1, v0

    :try_start_3
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_9
    add-int/lit8 v12, v13, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x2

    move-object/from16 v14, p0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_f
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v1, :cond_11

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_10

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_11
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v20, v20, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->NUMBER_OF_NOTIFICATIONS:I

    mul-int v6, v20, v1

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v17

    move-object v7, v15

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->drawScrollPositionAlways2:Z

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->getPosY()I

    move-result v2

    const v3, 0xf1b30

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->setMenuPosY(I)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public getMenuPosY()I
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->getScrollableY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    add-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getButtonHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    add-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;->getButtonHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    return v0
.end method

.method public getVisible()Z
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHideMenuZoomOut()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->lTime:J

    sput-boolean p1, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->stateVisible:Z

    return-void
.end method
