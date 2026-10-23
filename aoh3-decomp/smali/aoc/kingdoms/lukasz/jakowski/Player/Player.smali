.class public Laoc/kingdoms/lukasz/jakowski/Player/Player;
.super Ljava/lang/Object;
.source "Player.java"


# instance fields
.field public allowAIMove:Z

.field public civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

.field public civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

.field public civAdvisorsPool_Military:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

.field public civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

.field public civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

.field public currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

.field public fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

.field public formableCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;",
            ">;"
        }
    .end annotation
.end field

.field public iActiveEventsSize:I

.field public iBattleReportsSize:I

.field public iCivID:I

.field public iMessagesSize:I

.field public iNotificationsSize:I

.field public iPinnedArmiesSize:I

.field public iPinnedProvincesSize:I

.field public lBattleReports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleReport;",
            ">;"
        }
    .end annotation
.end field

.field public lNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;",
            ">;"
        }
    .end annotation
.end field

.field public messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;",
            ">;"
        }
    .end annotation
.end field

.field public peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

.field public playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

.field public playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

.field public playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

.field public playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

.field public playerStats4:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats4;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats2:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats2;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats3:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats3;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats4;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats4;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats4:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats4;

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->allowAIMove:Z

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->formableCivs:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;-><init>(I)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Administration:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;-><init>(I)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Economy:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;-><init>(I)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Technology:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;-><init>(I)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civAdvisorsPool_Military:Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;

    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedProvincesSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    return-void
.end method


# virtual methods
.method public final actionPinArmy(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addPinArmy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->removePinArmy(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final addActiveEvent(III)V
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    add-int/2addr v2, p3

    invoke-direct {v1, p1, p2, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final addBattleReport(Laoc/kingdoms/lukasz/map/battles/BattleReport;)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    return-void
.end method

.method public final addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V
    .locals 1

    :try_start_0
    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->fromCivID:I

    if-ltz v0, :cond_1

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->fromCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Player/Player$1;

    const-string v0, "rebuildInGame_MessagesSavePos"

    invoke-direct {p1, p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player$1;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    .locals 3

    iget-object v0, p1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NEIGHBOR_OR_RIVAL_AT_WAR:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    iget v2, p1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Player/Player$4;

    const-string v0, "rebuildNotifications"

    invoke-direct {p1, p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player$4;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    return-void
.end method

.method public addNotification_Reinforce(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    const-string v2, "rebuildNotifications"

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->REINFORCE_ARMY_COST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    add-int/2addr v3, p1

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ReinforceCost"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x42c7cccd    # 99.9f

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    const/16 v3, 0x64

    goto :goto_1

    :cond_1
    const/16 v3, 0xa

    :goto_1
    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Player/Player$5;

    invoke-direct {p1, p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player$5;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Player/Player$6;

    invoke-direct {p1, p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player$6;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    return-void
.end method

.method public addNotification_Unrest(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->HIGH_UNREST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->NOTIFICATIONS_UNREST_LIMIT:I

    if-lt v1, v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Player/Player$7;

    const-string v0, "rebuildNotifications"

    invoke-direct {p1, p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player$7;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    return-void
.end method

.method public final addPinArmy(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    return v0
.end method

.method public final clearBattleReport()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    return-void
.end method

.method public final clearEvents()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    return-void
.end method

.method public clearFormableCivs()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->formableCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final clearMessages()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    return-void
.end method

.method public final clearNotifications()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    return-void
.end method

.method public final clearPinnedArmy()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    return-void
.end method

.method public final getBattleReportID(Ljava/lang/String;)I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getMessage(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMessage_Hover(Ljava/lang/String;)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->buildElementHover()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final initPeaceTreaty_Player(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iput-boolean v0, v2, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsToTake:Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iput-boolean v0, v2, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;-><init>(ILjava/lang/String;Z)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    return-void
.end method

.method public isPinned(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public loadFormableCivs()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->clearFormableCivs()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/FormableCivManager;->getFormableCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->formableCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeActiveEvent(II)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    if-ne v1, p2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final removeMessage(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Player/Player$2;

    const/4 v0, 0x0

    sget-object v0, Lcom/badlogic/gdx/backends/android/Zrdz/PxHJ;->DTi:Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player$2;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public removeNotification(I)V
    .locals 2

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Player$10;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type:[I

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->key:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->removeReport(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/Player/Player$8;

    const-string v0, "rebuildNotifications"

    invoke-direct {p1, p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player$8;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final removePinArmy(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->pinnedArmies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iPinnedArmiesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final removeReport(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iBattleReportsSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateEvents()V
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->activeEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iActiveEventsSize:I

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->takeMissionDecision(III)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->takeMissionDecision_Civ(III)V

    goto :goto_1

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3, v1, v2, v4}, Laoc/kingdoms/lukasz/events/EventsManager;->takeEventDecision(IIII)V

    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Event(Z)V

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/Player$9;

    const-string v3, "RebuildInGameRight"

    invoke-direct {v1, p0, v3, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player$9;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateMessages()V
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->expiresTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->onRefuse()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/Player$3;

    const-string v2, "rebuildInGame_MessagesSavePos"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player$3;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Player;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateNotifications()V
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iNotificationsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lNotifications:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    sub-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->REMOVE_NOTIFICATION_DAYS:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->removeNotification(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
