.class public Laoc/kingdoms/lukasz/map/war/War;
.super Ljava/lang/Object;
.source "War.java"


# instance fields
.field public conquerVassal:Z

.field public iWarTurnID:I

.field public isCoalition:Z

.field public key:Ljava/lang/String;

.field public lAggressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/war/WarCivilization;",
            ">;"
        }
    .end annotation
.end field

.field public lDefenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/war/WarCivilization;",
            ">;"
        }
    .end annotation
.end field

.field public lastFight_TurnID:I

.field public tickingWarScore:F

.field public warScore:F

.field public warScoreFromBattles:F

.field public warScoreFromOccupiedProvinces:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/war/War;->conquerVassal:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;ZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/war/War;->conquerVassal:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z

    iput-object p3, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    sget p3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    sget p3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    iput-boolean p4, p0, Laoc/kingdoms/lukasz/map/war/War;->conquerVassal:Z

    iput-boolean p5, p0, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->addAggressor(I)V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/war/War;->addDefender(I)V

    return-void
.end method


# virtual methods
.method public final addAggressor(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v2, p1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    invoke-direct {v2, p1}, Laoc/kingdoms/lukasz/map/war/WarCivilization;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->numOfWars:I

    add-int/2addr v3, v2

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->numOfWars:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    add-int/2addr v3, v2

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    :cond_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addNumOfWars(I)V

    move v1, v0

    :goto_2
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_UpdateRelation(II)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, v2, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly_AllianceCheck(II)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->LIBERTY_DESIRE_LORD_CALL_TO_WAR:F

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setLibertyDesire_Change(IF)V

    :cond_7
    return-void
.end method

.method public final addCasualties(II)V
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    add-int/2addr v0, p2

    iput v0, p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    add-int/2addr v0, p2

    iput v0, p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final addDefender(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v2, p1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    invoke-direct {v2, p1}, Laoc/kingdoms/lukasz/map/war/WarCivilization;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->numOfWars:I

    add-int/2addr v3, v2

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->numOfWars:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    add-int/2addr v3, v2

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->nw:I

    :cond_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addNumOfWars(I)V

    move v1, v0

    :goto_2
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_UpdateRelation(II)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, v2, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly_AllianceCheck(II)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->LIBERTY_DESIRE_LORD_CALL_TO_WAR:F

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setLibertyDesire_Change(IF)V

    :cond_7
    return-void
.end method

.method public final addWarScore(FII)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd(FII)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    return-void
.end method

.method public final addWarScore_Just(F)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    return-void
.end method

.method public final addWarScore_ValueToAdd(FII)F
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p3, v0, :cond_1

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget p3, p3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p2, p3, :cond_2

    :cond_1
    return p1

    :cond_2
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_SCORE_ALLIES:F

    mul-float/2addr p1, p2

    return p1
.end method

.method public final addWarScore_ValueToAdd_Province(FIII)F
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p3, v0, :cond_3

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget p3, p3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p2, p3, :cond_3

    :cond_1
    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget p3, p3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p2, p3, :cond_3

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget p3, p3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_SCORE_ALLIES:F

    mul-float/2addr p1, p2

    :cond_3
    :goto_0
    return p1
.end method

.method public final areInThisWar(II)Z
    .locals 2

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getCasualties_Aggressors()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getCasualties_Defenders()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCasualties:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getWarScore_Side(I)I
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final isAggressor(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final isDefender(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final isInThisWar(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isWarLeader(I)Z
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final loadSave_AddInWar()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final peaceTreaty()V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/war/War;->isInThisWar(I)Z

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-lez v1, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lez v1, :cond_1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_DAYS:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addTruce(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->stopAllBattles_PeaceTreaty(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_6

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_2

    goto :goto_6

    :cond_2
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_5

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_4
    if-ltz v5, :cond_4

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v6, v4, :cond_3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    goto :goto_5

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_b

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_7

    goto :goto_b

    :cond_7
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_8
    if-ltz v3, :cond_a

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_9
    if-ltz v5, :cond_9

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v6, v4, :cond_8

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_9
    :goto_a
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    :cond_a
    :goto_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_b
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_f

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_d
    if-ltz v2, :cond_e

    :try_start_1
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_UpdateRelation_Peace(IILjava/lang/String;)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {p0, v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->retakeOccupiedProvinces(II)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {p0, v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->retakeOccupiedProvinces(II)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V

    goto :goto_e

    :cond_c
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_1
    move-exception v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_d
    :goto_e
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_d

    :cond_e
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_c

    :cond_f
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    const-string v2, "update_ReorganizeArmiesAtPeace"

    if-ltz v1, :cond_12

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-gtz v3, :cond_10

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeAllArmies()V

    goto :goto_10

    :cond_10
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->moveAllArmiesToOwnTerritory(I)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v4, :cond_11

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    new-instance v4, Laoc/kingdoms/lukasz/map/war/War$1;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-direct {v4, p0, v2, v5}, Laoc/kingdoms/lukasz/map/war/War$1;-><init>(Laoc/kingdoms/lukasz/map/war/War;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addAI_SimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_11
    :goto_10
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_f

    :cond_12
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_15

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-gtz v3, :cond_13

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeAllArmies()V

    goto :goto_12

    :cond_13
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->moveAllArmiesToOwnTerritory(I)V

    :goto_12
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v4, :cond_14

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v3

    if-nez v3, :cond_14

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    new-instance v4, Laoc/kingdoms/lukasz/map/war/War$2;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-direct {v4, p0, v5, v6}, Laoc/kingdoms/lukasz/map/war/War$2;-><init>(Laoc/kingdoms/lukasz/map/war/War;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addAI_SimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_11

    :cond_15
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_16

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->ENABLE_WAR_BORDER:Z

    if-eqz v0, :cond_16

    new-instance v0, Laoc/kingdoms/lukasz/map/war/War$3;

    const-string v1, "updateProvinceBorder"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/map/war/War$3;-><init>(Laoc/kingdoms/lukasz/map/war/War;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_16
    return-void
.end method

.method public final removeAggressor(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeCiv(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final removeDefender(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final retakeOccupiedProvinces(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->retakeOccupiedProvince_Peace()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateCapitalProvinceID()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    :try_start_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-gez v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public final updateWars_AllProvincesOccupied()V
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v0, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    return-void

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    move v2, v1

    :goto_2
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_3
    if-eqz v1, :cond_5

    iget v0, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED:F

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_IF_ALL_PROVINCES_OCCUPIED:F

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    :cond_5
    return-void
.end method

.method public final updateWars_TickingWarScore()V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_EACH_MONTH:F

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v2

    :goto_0
    div-float/2addr v2, v3

    add-float/2addr v2, v5

    mul-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    add-float/2addr v2, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_LIMIT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_LIMIT:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    :cond_1
    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    add-float/2addr v2, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_LIMIT:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->TICKING_WAR_SCORE_LIMIT:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    neg-float v0, v0

    :cond_2
    :goto_1
    iget v2, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    add-float/2addr v2, v0

    iput v2, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    add-float/2addr v3, v0

    iput v3, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    cmpl-float v0, v2, v1

    if-lez v0, :cond_3

    cmpg-float v0, v3, v1

    if-gez v0, :cond_3

    sub-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    goto :goto_2

    :cond_3
    cmpg-float v0, v2, v1

    if-gez v0, :cond_4

    cmpl-float v0, v3, v1

    if-lez v0, :cond_4

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/war/War;->tickingWarScore:F

    :cond_4
    :goto_2
    return-void
.end method
