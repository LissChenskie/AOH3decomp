.class public Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Right.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J = 0x0L

.field public static outlinerInView:Z = true

.field public static posY:I

.field public static stateVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    const-string v1, ""

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v0, v3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v4, v0, v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v9

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v21, v0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    if-ge v0, v9, :cond_2

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    const/16 v10, 0x3e7

    if-ne v9, v10, :cond_0

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v11, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->Name:Ljava/lang/String;

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v9, 0x2

    add-int/lit8 v9, v6, -0x1

    sub-int v16, v9, v2

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v14, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v10, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget v7, v7, Laoc/kingdoms/lukasz/events/Event;->mission_image:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    move/from16 v17, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    add-int v20, v9, v10

    const/16 v18, 0x1

    move-object v9, v15

    move/from16 v19, v17

    move-object/from16 v10, p0

    move/from16 v17, v14

    move/from16 v14, v18

    move-object/from16 v22, v15

    move/from16 v15, v21

    move/from16 v18, v19

    move/from16 v19, v7

    invoke-direct/range {v9 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;IIIIIIIII)V

    move-object/from16 v7, v22

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    const/16 v9, 0x3e8

    if-ne v7, v9, :cond_1

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$2;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v11, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->Name:Ljava/lang/String;

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v9, 0x2

    add-int/lit8 v9, v6, -0x1

    sub-int v16, v9, v2

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v15, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v14, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    iget v10, v9, Laoc/kingdoms/lukasz/events/Event;->mission_image:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    move/from16 v17, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    add-int v20, v9, v10

    const/16 v18, 0x1

    move-object v9, v7

    move/from16 v19, v17

    move-object/from16 v10, p0

    move/from16 v22, v14

    move/from16 v14, v18

    move/from16 v17, v15

    move/from16 v15, v21

    move/from16 v18, v22

    invoke-direct/range {v9 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;IIIIIIIII)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/events/Event;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v9, 0x2

    add-int/lit8 v9, v6, -0x1

    sub-int v16, v9, v2

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v15, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v14, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget v10, v9, Laoc/kingdoms/lukasz/events/Event;->mission_image:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    move/from16 v17, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    add-int v20, v9, v10

    const/16 v18, 0x1

    move-object v9, v7

    move/from16 v19, v17

    move-object/from16 v10, p0

    move/from16 v22, v14

    move/from16 v14, v18

    move/from16 v17, v15

    move/from16 v15, v21

    move/from16 v18, v22

    invoke-direct/range {v9 .. v20}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;IIIIIIIII)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v7, v9

    add-int v21, v21, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->outlinerInView:Z

    if-eqz v0, :cond_6

    move/from16 v7, v21

    const/4 v0, 0x0

    :goto_2
    :try_start_1
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v0, v9, :cond_4

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-le v9, v10, :cond_3

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$4;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Progress"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "%"

    sub-int v9, v6, v2

    add-int/lit8 v16, v9, -0x1

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->spy:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v14, v9, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v13, v13, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    invoke-static {v10, v13}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->sendSpyTime(II)I

    move-result v10

    sub-int v19, v9, v10

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->espionage:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v13, v9, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    const/16 v21, 0x1

    const/16 v18, 0x1

    move-object v9, v15

    move-object/from16 v10, p0

    move/from16 v20, v13

    move/from16 v13, v18

    move/from16 v18, v14

    move v14, v7

    move-object/from16 v23, v15

    move/from16 v15, v16

    move/from16 v16, v3

    invoke-direct/range {v9 .. v21}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;Ljava/lang/String;IIIIIIIIZ)V

    move-object/from16 v9, v23

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/2addr v9, v10

    add-int/2addr v7, v9

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    const/4 v0, 0x0

    :goto_3
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    if-ge v0, v9, :cond_5

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$5;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getOpinion_String(I)Ljava/lang/String;

    move-result-object v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sub-int v9, v6, v2

    add-int/lit8 v16, v9, -0x1

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->relationsUp:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v14, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    const/16 v19, 0x1

    const/4 v13, 0x1

    move-object v9, v15

    move-object/from16 v10, p0

    move/from16 v18, v14

    move v14, v7

    move-object/from16 v24, v15

    move/from16 v15, v16

    move/from16 v16, v3

    invoke-direct/range {v9 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;Ljava/lang/String;IIIIIIZ)V

    move-object/from16 v9, v24

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v10

    add-int/2addr v7, v9

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_5
    move/from16 v21, v7

    const/4 v0, 0x0

    :goto_4
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    if-ge v0, v7, :cond_6

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$6;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v9

    float-to-int v9, v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->getOpinion_String(I)Ljava/lang/String;

    move-result-object v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v10, v10, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sub-int v9, v6, v2

    add-int/lit8 v15, v9, -0x1

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->relationsDown:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->damagingRelations:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v14, v9, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    const/16 v19, 0x0

    const/4 v13, 0x1

    move-object v9, v7

    move-object/from16 v10, p0

    move/from16 v18, v14

    move/from16 v14, v21

    move/from16 v16, v3

    invoke-direct/range {v9 .. v19}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int v21, v21, v7

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-lez v0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_8

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v7

    if-eqz v7, :cond_7

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerBattle;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    sub-int v9, v6, v2

    add-int/lit8 v13, v9, -0x1

    const/4 v11, 0x1

    move-object v9, v7

    move/from16 v12, v21

    move v14, v3

    invoke-direct/range {v9 .. v14}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerBattle;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int v21, v21, v7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v6, -0x1

    sub-int/2addr v0, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    :try_start_2
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v0, v2

    int-to-float v2, v2

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v2, v7

    float-to-int v2, v2

    move/from16 v7, v21

    const/4 v9, 0x0

    :goto_6
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    if-ge v9, v10, :cond_a

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11, v1, v7}, Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy;-><init>(Ljava/lang/String;II)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sub-int v10, v1, v10

    add-int/2addr v10, v2

    if-gez v10, :cond_9

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    goto :goto_7

    :cond_9
    sget v10, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/2addr v10, v2

    sub-int/2addr v1, v10

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v0, :cond_c

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    add-int/2addr v2, v9

    if-ge v1, v2, :cond_b

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v0

    add-int v0, v5, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->posY:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v9

    sub-int/2addr v7, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v7, v9

    sub-int/2addr v2, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->NUMBER_OF_NOTIFICATIONS:I

    mul-int/2addr v3, v7

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

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

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightQueue;->extraY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightQueue;->extraY:I

    add-int/2addr v0, v1

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->lTime:J

    sput-boolean p1, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->stateVisible:Z

    return-void
.end method
