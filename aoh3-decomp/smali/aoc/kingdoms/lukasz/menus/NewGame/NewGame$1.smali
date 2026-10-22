.class Laoc/kingdoms/lukasz/menus/NewGame/NewGame$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;
.source "NewGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/NewGame/NewGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGame;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGame;Ljava/lang/String;IIIIZ)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGame$1;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGame;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;-><init>(Ljava/lang/String;IIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->hideColorPicker()V

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->clearPlayerData()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Events;->THREAD_TURN_ID:I

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SPECTATOR_MODE:Z

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->initStartingData()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->loadStats(Ljava/lang/String;Z)V

    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->initNewGame()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage_ChooseRivals;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage_ChooseRivals;-><init>(II)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Messages()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Wars()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGame()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-eq v0, v1, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_2
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawExtraDetails()V

    return-void
.end method

.method public getSFX()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_PLAY_NEW_GAME:I

    return v0
.end method
