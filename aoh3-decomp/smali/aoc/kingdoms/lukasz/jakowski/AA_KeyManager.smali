.class public Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;
.super Ljava/lang/Object;
.source "AA_KeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;
    }
.end annotation


# static fields
.field public static ALT_HOLD:Z

.field public static CTRL_HOLD:Z

.field public static SHIFT_HOLD:Z

.field public static keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final actionPinnedArmy(I)V
    .locals 2

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveArmy(ILjava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy_HideMenus()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    const/4 p0, -0x1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static keyDown(I)Z
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c

    if-ne p0, v0, :cond_2

    :cond_1
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    :cond_2
    const/16 v0, 0x81

    if-eq p0, v0, :cond_3

    const/16 v0, 0x82

    if-ne p0, v0, :cond_4

    :cond_3
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    :cond_4
    const/16 v0, 0x39

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_6

    :cond_5
    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->ALT_HOLD:Z

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_MAIN2:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;->extraAction(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    const/4 v2, 0x0

    if-nez v0, :cond_f

    const/16 v0, 0x15

    if-eq p0, v0, :cond_8

    const/16 v0, 0x1d

    if-ne p0, v0, :cond_9

    :cond_8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget v3, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    add-int/2addr v3, v1

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    :cond_9
    const/16 v0, 0x16

    if-eq p0, v0, :cond_a

    const/16 v0, 0x20

    if-ne p0, v0, :cond_b

    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget v3, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    add-int/2addr v3, v1

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    :cond_b
    const/16 v0, 0x13

    if-eq p0, v0, :cond_c

    const/16 v0, 0x33

    if-ne p0, v0, :cond_d

    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget v3, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    int-to-float v3, v3

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    add-int/2addr v3, v1

    iput v3, v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    :cond_d
    const/16 v0, 0x14

    if-eq p0, v0, :cond_e

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_f

    :cond_e
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    :cond_f
    return v2
.end method

.method public static keyUp(I)Z
    .locals 16

    move/from16 v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    const/16 v2, 0xa0

    const/16 v3, 0x42

    const/16 v4, 0x6f

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    return v5

    :cond_1
    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;->save()V

    return v5

    :cond_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    const/16 v6, 0x3c

    const/16 v7, 0x3b

    const/4 v8, 0x0

    if-eqz v1, :cond_8

    if-eq v0, v7, :cond_3

    if-ne v0, v6, :cond_4

    :cond_3
    sput-boolean v8, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    :cond_4
    const/16 v1, 0x81

    if-eq v0, v1, :cond_5

    const/16 v1, 0x82

    if-ne v0, v1, :cond_6

    :cond_5
    sput-boolean v8, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    :cond_6
    const/16 v1, 0x39

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_8

    :cond_7
    sput-boolean v8, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->ALT_HOLD:Z

    :cond_8
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorArmyPosition()Z

    move-result v1

    const/16 v9, 0x14

    const/16 v10, 0x13

    const/16 v11, 0x20

    const/16 v12, 0x16

    const/16 v13, 0x15

    const/16 v14, 0x1d

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    if-eq v0, v13, :cond_a

    if-ne v0, v14, :cond_b

    :cond_a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v8, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    :cond_b
    if-eq v0, v12, :cond_c

    if-ne v0, v11, :cond_d

    :cond_c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v8, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    :cond_d
    if-eq v0, v10, :cond_e

    const/16 v1, 0x33

    if-ne v0, v1, :cond_f

    :cond_e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v8, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    :cond_f
    if-eq v0, v9, :cond_10

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_11

    :cond_10
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iput-boolean v8, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    :cond_11
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v15, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    sub-int/2addr v15, v5

    iput v15, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-eqz v1, :cond_b8

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v1

    const/16 v15, 0x43

    const/16 v6, 0x3e

    if-eqz v1, :cond_16

    if-eq v0, v3, :cond_14

    if-eq v0, v2, :cond_14

    if-ne v0, v6, :cond_12

    goto :goto_2

    :cond_12
    if-eq v0, v4, :cond_13

    if-ne v0, v15, :cond_15

    :cond_13
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->disableButtons()V

    invoke-static {}, Laoc/kingdoms/lukasz/menus/Dialog;->dialogFalse()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->closeMenu()V

    goto :goto_3

    :cond_14
    :goto_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->disableButtons()V

    invoke-static {}, Laoc/kingdoms/lukasz/menus/Dialog;->dialogTrue()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->closeMenu()V

    :cond_15
    :goto_3
    return v5

    :cond_16
    const/16 v1, 0x8d

    if-ne v0, v1, :cond_17

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic()V

    return v5

    :cond_17
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    const/16 v15, 0x2b

    const/16 v7, 0x2c

    const/4 v11, -0x1

    if-nez v1, :cond_19

    if-ne v0, v7, :cond_18

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1, v11}, Laoc/kingdoms/lukasz/map/map/MapScale;->scrollScale(I)V

    goto :goto_4

    :cond_18
    if-ne v0, v15, :cond_19

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->scrollScale(I)V

    :cond_19
    :goto_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameHideUI()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-ne v0, v4, :cond_1a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    return v5

    :cond_1a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v1

    const/16 v7, 0x84

    const/16 v15, 0x83

    if-eqz v1, :cond_a7

    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    if-eqz v1, :cond_1b

    sput-boolean v8, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    return v5

    :cond_1b
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v1, :cond_1c

    return v5

    :cond_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v1

    if-nez v1, :cond_22

    if-ne v0, v15, :cond_1d

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action1()V

    goto :goto_5

    :cond_1d
    if-ne v0, v7, :cond_1e

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action2()V

    goto :goto_5

    :cond_1e
    const/16 v1, 0x85

    if-ne v0, v1, :cond_1f

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action3()V

    goto :goto_5

    :cond_1f
    const/16 v1, 0x86

    if-ne v0, v1, :cond_20

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action4()V

    goto :goto_5

    :cond_20
    const/16 v1, 0x87

    if-ne v0, v1, :cond_21

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action5()V

    goto :goto_5

    :cond_21
    const/16 v1, 0x88

    if-ne v0, v1, :cond_22

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action6()V

    :cond_22
    :goto_5
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v1, :cond_26

    if-ne v0, v14, :cond_26

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    move v0, v8

    :goto_6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_24

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_23

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    iput v1, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_24
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v0, :cond_25

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy()V

    goto :goto_7

    :cond_25
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    :goto_7
    return v5

    :cond_26
    const/16 v1, 0x91

    const-wide/16 v14, 0x0

    if-eq v0, v1, :cond_a6

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    goto/16 :goto_11

    :cond_27
    const/16 v1, 0x92

    if-eq v0, v1, :cond_a5

    const/16 v1, 0x9

    if-ne v0, v1, :cond_28

    goto/16 :goto_10

    :cond_28
    const/16 v1, 0x93

    const/4 v7, 0x3

    if-eq v0, v1, :cond_a4

    const/16 v1, 0xa

    if-ne v0, v1, :cond_29

    goto/16 :goto_f

    :cond_29
    const/16 v1, 0x94

    if-eq v0, v1, :cond_a3

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2a

    goto/16 :goto_e

    :cond_2a
    const/16 v1, 0x95

    if-eq v0, v1, :cond_a2

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2b

    goto/16 :goto_d

    :cond_2b
    const/16 v1, 0x22

    if-ne v0, v1, :cond_2e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-eqz v0, :cond_2d

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->inSearchProvinces:Z

    if-nez v0, :cond_2c

    goto :goto_8

    :cond_2c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    goto/16 :goto_15

    :cond_2d
    :goto_8
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idCourt:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionCourt(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->actionSearchProvinces()V

    goto/16 :goto_15

    :cond_2e
    const/16 v1, 0x32

    if-ne v0, v1, :cond_32

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_RecruitArmy()Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->inCreateNewArmy:Z

    if-nez v0, :cond_2f

    goto :goto_9

    :cond_2f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_RecruitArmy(Z)V

    goto/16 :goto_15

    :cond_30
    :goto_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->hideMenus_RecruitArmy(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Armies(Z)V

    :cond_31
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->actionCreateNewArmy()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_b8

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_b8

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->iProvinceID:I

    goto/16 :goto_15

    :cond_32
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_35

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-eqz v0, :cond_33

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->buildID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq v0, v1, :cond_33

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->buildID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionBuildings(I)V

    goto/16 :goto_15

    :cond_33
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action1()V

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->buildID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionBuildings(I)V

    goto/16 :goto_15

    :cond_34
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    goto/16 :goto_15

    :cond_35
    const/16 v1, 0x28

    if-ne v0, v1, :cond_38

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-eqz v0, :cond_36

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iLawID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq v0, v1, :cond_36

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iLawID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionLaws(I)V

    goto/16 :goto_15

    :cond_36
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action1()V

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iLawID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->actionLaws(I)V

    goto/16 :goto_15

    :cond_37
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    goto/16 :goto_15

    :cond_38
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->actionGenerals()V

    goto/16 :goto_15

    :cond_39
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    goto/16 :goto_15

    :cond_3a
    const/16 v1, 0x29

    if-ne v0, v1, :cond_3c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v0

    if-nez v0, :cond_3b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->hideMenus_RecruitArmy(Z)V

    :cond_3b
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->actionArmies()V

    goto/16 :goto_15

    :cond_3c
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_3e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v0

    if-nez v0, :cond_3d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->hideMenus_RecruitArmy(Z)V

    :cond_3d
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->actionMercenaries()V

    goto/16 :goto_15

    :cond_3e
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3f

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->actionRanking()V

    goto/16 :goto_15

    :cond_3f
    const/16 v1, 0x30

    if-ne v0, v1, :cond_40

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->actionCurrent()V

    goto/16 :goto_15

    :cond_40
    if-eq v0, v3, :cond_7c

    if-ne v0, v2, :cond_41

    goto/16 :goto_c

    :cond_41
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_42

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v0

    if-eqz v0, :cond_b8

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->diplomacyMode:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->diplomacyMode:Z

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iRebuildToCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ(Z)V

    sput-wide v14, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    goto/16 :goto_15

    :cond_42
    const/16 v1, 0x89

    if-ne v0, v1, :cond_43

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    goto/16 :goto_15

    :cond_43
    const/16 v1, 0x8e

    if-ne v0, v1, :cond_45

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Console()Z

    move-result v0

    if-eqz v0, :cond_44

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Console(Z)V

    goto/16 :goto_15

    :cond_44
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Console(Z)V

    goto/16 :goto_15

    :cond_45
    if-ne v0, v7, :cond_46

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_b8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    goto/16 :goto_15

    :cond_46
    if-ne v0, v4, :cond_77

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v0, :cond_47

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    goto/16 :goto_a

    :cond_47
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v0, :cond_48

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->setInvasionArmyMode(Z)V

    goto/16 :goto_a

    :cond_48
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_SaveGame()Z

    move-result v0

    if-eqz v0, :cond_49

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_SaveGame(Z)V

    goto/16 :goto_a

    :cond_49
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Escape(Z)V

    goto/16 :goto_a

    :cond_4a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Console()Z

    move-result v0

    if-eqz v0, :cond_4b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Console(Z)V

    goto/16 :goto_a

    :cond_4b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    goto/16 :goto_a

    :cond_4c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-ne v0, v1, :cond_4d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_a

    :cond_4d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_4e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_a

    :cond_4e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_4f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_a

    :cond_4f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_50

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_a

    :cond_50
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WARS:I

    if-ne v0, v1, :cond_51

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_a

    :cond_51
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v0, v1, :cond_52

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_a

    :cond_52
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-ne v0, v1, :cond_53

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_a

    :cond_53
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-ne v0, v1, :cond_54

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_a

    :cond_54
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v0

    if-eqz v0, :cond_55

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    goto/16 :goto_a

    :cond_55
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TakeLoanRepay()Z

    move-result v0

    if-eqz v0, :cond_56

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TakeLoanRepay(Z)V

    goto/16 :goto_a

    :cond_56
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TakeLoan()Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TakeLoan(Z)V

    goto/16 :goto_a

    :cond_57
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Wonder()Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Wonder(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WONDERS:I

    if-ne v0, v1, :cond_76

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_a

    :cond_58
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Nukes()Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Nukes(Z)V

    goto/16 :goto_a

    :cond_59
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_GoodsMarket()Z

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_GoodsMarket(Z)V

    goto/16 :goto_a

    :cond_5a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Goods()Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Goods(Z)V

    goto/16 :goto_a

    :cond_5b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_DisbandArmy()Z

    move-result v0

    if-eqz v0, :cond_5c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_DisbandUnits(Z)V

    goto/16 :goto_a

    :cond_5c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ReorganizeUnits()Z

    move-result v0

    if-eqz v0, :cond_5d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ReorganizeUnits(Z)V

    goto/16 :goto_a

    :cond_5d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_GeneralRecruit()Z

    move-result v0

    if-eqz v0, :cond_5e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_GeneralRecruit(Z)V

    goto/16 :goto_a

    :cond_5e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_RecruitArmy()Z

    move-result v0

    if-eqz v0, :cond_5f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_RecruitArmy(Z)V

    goto/16 :goto_a

    :cond_5f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyChoose()Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyChoose(Z)V

    goto/16 :goto_a

    :cond_60
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Budget()Z

    move-result v0

    if-eqz v0, :cond_61

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Budget(Z)V

    goto/16 :goto_a

    :cond_61
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v0

    if-eqz v0, :cond_62

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    goto/16 :goto_a

    :cond_62
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    goto/16 :goto_a

    :cond_63
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceBonuses()Z

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceBonuses(ZZ)V

    goto/16 :goto_a

    :cond_64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    goto/16 :goto_a

    :cond_65
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v0

    if-eqz v0, :cond_66

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Armies(Z)V

    goto/16 :goto_a

    :cond_66
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v0

    if-eqz v0, :cond_67

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    goto/16 :goto_a

    :cond_67
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Buildings()Z

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Buildings(ZZ)V

    goto/16 :goto_a

    :cond_68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CurrentSituation()Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CurrentSituation(Z)V

    goto/16 :goto_a

    :cond_69
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Battle()Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Battle(Z)V

    goto/16 :goto_a

    :cond_6a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Siege()Z

    move-result v0

    if-eqz v0, :cond_6b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Siege(Z)V

    goto/16 :goto_a

    :cond_6b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v0

    if-eqz v0, :cond_6c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    goto/16 :goto_a

    :cond_6c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Peace()Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Peace(Z)V

    goto/16 :goto_a

    :cond_6d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceArmy()Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    goto/16 :goto_a

    :cond_6e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceInfo()Z

    move-result v0

    if-eqz v0, :cond_6f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    goto/16 :goto_a

    :cond_6f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    if-ne v0, v1, :cond_70

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_a

    :cond_70
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-ne v0, v1, :cond_71

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_a

    :cond_71
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-ne v0, v1, :cond_72

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_a

    :cond_72
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-ne v0, v1, :cond_73

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_a

    :cond_73
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    if-ne v0, v1, :cond_74

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_a

    :cond_74
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-ne v0, v1, :cond_75

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_a

    :cond_75
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Escape(Z)V

    :cond_76
    :goto_a
    return v5

    :cond_77
    if-ne v0, v6, :cond_78

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    xor-int/2addr v1, v5

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    goto/16 :goto_15

    :cond_78
    const/16 v1, 0x45

    if-eq v0, v1, :cond_7b

    const/16 v1, 0x9c

    if-ne v0, v1, :cond_79

    goto :goto_b

    :cond_79
    const/16 v1, 0x51

    if-eq v0, v1, :cond_7a

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_b8

    :cond_7a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeedPlus()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_15

    :cond_7b
    :goto_b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeedMinus()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_15

    :cond_7c
    :goto_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_RecruitArmy()Z

    move-result v0

    if-eqz v0, :cond_7d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->inCreateNewArmy:Z

    if-eqz v0, :cond_7d

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->actionCreateNewArmy()Z

    goto/16 :goto_15

    :cond_7d
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v0, :cond_7e

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iRegroupArmyProvincesSize:I

    if-lez v0, :cond_b8

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;->confirm()V

    goto/16 :goto_15

    :cond_7e
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    if-eqz v0, :cond_7f

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    if-lez v0, :cond_b8

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Invasion;->confirm()V

    goto/16 :goto_15

    :cond_7f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v0

    if-eqz v0, :cond_b8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-nez v0, :cond_80

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->confirm()V

    goto/16 :goto_15

    :cond_80
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v0, v5, :cond_81

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Destroy;->confirm()V

    goto/16 :goto_15

    :cond_81
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_82

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->confirm()V

    goto/16 :goto_15

    :cond_82
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v0, v7, :cond_83

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademyForGenerals;->confirm()V

    goto/16 :goto_15

    :cond_83
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_84

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeSupremeCourt;->confirm()V

    goto/16 :goto_15

    :cond_84
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_85

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeNuclearReactor;->confirm()V

    goto/16 :goto_15

    :cond_85
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_86

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;->confirm()V

    goto/16 :goto_15

    :cond_86
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_87

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame_MoveCapital_PopUp;->confirm()V

    goto/16 :goto_15

    :cond_87
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_88

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeCapital;->confirm()V

    goto/16 :goto_15

    :cond_88
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_89

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeIdeology2;->confirm()V

    goto/16 :goto_15

    :cond_89
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8a

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar;->confirm()V

    goto/16 :goto_15

    :cond_8a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8b

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;->confirm()V

    goto/16 :goto_15

    :cond_8b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8c

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact;->confirm()V

    goto/16 :goto_15

    :cond_8c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_8d

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_NonAggression;->confirm()V

    goto/16 :goto_15

    :cond_8d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_8e

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Alliance;->confirm()V

    goto/16 :goto_15

    :cond_8e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v0, v10, :cond_8f

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DemandMilitaryAccess;->confirm()V

    goto/16 :goto_15

    :cond_8f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v0, v9, :cond_90

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_OfferMilitaryAccess;->confirm()V

    goto/16 :goto_15

    :cond_90
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v0, v13, :cond_91

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Guarantee;->confirm()V

    goto/16 :goto_15

    :cond_91
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-ne v0, v12, :cond_92

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;->confirm()V

    goto/16 :goto_15

    :cond_92
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_93

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_LawReform;->confirm()V

    goto/16 :goto_15

    :cond_93
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_94

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals;->confirm()V

    goto/16 :goto_15

    :cond_94
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_95

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->confirm()V

    goto/16 :goto_15

    :cond_95
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_96

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGift;->confirm()V

    goto/16 :goto_15

    :cond_96
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_97

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageAlliance;->confirm()V

    goto/16 :goto_15

    :cond_97
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_98

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageDefensivePact;->confirm()V

    goto/16 :goto_15

    :cond_98
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_99

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageNonAggressionPact;->confirm()V

    goto/16 :goto_15

    :cond_99
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_9a

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageDemandsMilitaryAccess;->confirm()V

    goto/16 :goto_15

    :cond_9a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_9b

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGuarantee;->confirm()V

    goto/16 :goto_15

    :cond_9b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9c

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageInsult;->confirm()V

    goto/16 :goto_15

    :cond_9c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_9d

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->confirm()V

    goto/16 :goto_15

    :cond_9d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_9e

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->confirm()V

    goto/16 :goto_15

    :cond_9e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_9f

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Rivals_End;->confirm()V

    goto/16 :goto_15

    :cond_9f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_a0

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_LiberateCivilization;->confirm()V

    goto/16 :goto_15

    :cond_a0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_a1

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_ShareTechnology;->confirm()V

    goto/16 :goto_15

    :cond_a1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_b8

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_Intervene;->confirm()V

    goto/16 :goto_15

    :cond_a2
    :goto_d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeed(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_15

    :cond_a3
    :goto_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeed(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_15

    :cond_a4
    :goto_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeed(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_15

    :cond_a5
    :goto_10
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeed(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_15

    :cond_a6
    :goto_11
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeed(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-wide v14, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    goto/16 :goto_15

    :cond_a7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLegacies()Z

    move-result v1

    if-eqz v1, :cond_a9

    if-eq v0, v4, :cond_a8

    if-eq v0, v15, :cond_a8

    if-eq v0, v7, :cond_a8

    const/16 v1, 0x85

    if-eq v0, v1, :cond_a8

    const/16 v1, 0x86

    if-eq v0, v1, :cond_a8

    const/16 v1, 0x87

    if-eq v0, v1, :cond_a8

    const/16 v1, 0x88

    if-ne v0, v1, :cond_b8

    :cond_a8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto/16 :goto_15

    :cond_a9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInSettingsMenu()Z

    move-result v1

    if-eqz v1, :cond_aa

    if-ne v0, v4, :cond_b8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->goBackToMenu:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    goto/16 :goto_15

    :cond_aa
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioAssign()Z

    move-result v1

    if-eqz v1, :cond_ae

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_ad

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_ab

    goto :goto_12

    :cond_ab
    const/16 v1, 0x43

    if-ne v0, v1, :cond_ac

    invoke-static {}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign;->popUndo()V

    goto/16 :goto_15

    :cond_ac
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_b8

    sput v8, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    goto/16 :goto_15

    :cond_ad
    :goto_12
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    goto/16 :goto_15

    :cond_ae
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioAssignInGame()Z

    move-result v1

    if-eqz v1, :cond_b1

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_b0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_af

    goto :goto_13

    :cond_af
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_b8

    sput v8, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    goto/16 :goto_15

    :cond_b0
    :goto_13
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    goto/16 :goto_15

    :cond_b1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioCores()Z

    move-result v1

    if-eqz v1, :cond_b3

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_b2

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_b8

    :cond_b2
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    goto/16 :goto_15

    :cond_b3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioReligion()Z

    move-result v1

    if-nez v1, :cond_b6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorBuildings()Z

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_14

    :cond_b4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v1

    if-eqz v1, :cond_b8

    const/16 v1, 0x21

    if-ne v0, v1, :cond_b5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_15

    :cond_b5
    const/16 v1, 0x2e

    if-ne v0, v1, :cond_b8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menusEditor/GameCivsEdit;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_15

    :cond_b6
    :goto_14
    const/16 v1, 0x3b

    if-eq v0, v1, :cond_b7

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_b8

    :cond_b7
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    xor-int/2addr v0, v5

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    :cond_b8
    :goto_15
    return v8
.end method

.method public static final updateKeyExtraAction()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorProvinceConnections()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorLines()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorWaves()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorSeaProvinces()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_0

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorArmyPosition()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$6;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$6;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_0

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorProvinceNamePoints()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$7;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$7;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_0

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorPortPosition()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    goto :goto_0

    :cond_6
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$9;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$9;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyExtraAction:Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;

    :goto_0
    return-void
.end method
