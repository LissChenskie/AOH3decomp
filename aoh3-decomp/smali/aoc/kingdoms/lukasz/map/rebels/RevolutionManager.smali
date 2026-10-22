.class public Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;
.super Ljava/lang/Object;
.source "RevolutionManager.java"


# instance fields
.field public armyPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyPosition;",
            ">;"
        }
    .end annotation
.end field

.field public iArmyPositionSize:I

.field public occupiedProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addArmyPosition(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public addCiv(Ljava/lang/String;Ljava/util/List;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Game;->addCivilization(Ljava/lang/String;IZZZZZ)Z

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lez v1, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-lez v1, :cond_a

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2
    if-ltz p1, :cond_4

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeOccupiedProvince(I)V

    :try_start_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_3
    if-ltz v3, :cond_3

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v4, :cond_2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeMove(Ljava/lang/String;)Z

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :catch_0
    move-exception v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_2

    :cond_4
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-wide v3, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-wide v5, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD_RANDOM:I

    if-lez v4, :cond_5

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD_RANDOM:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY_RANDOM:I

    if-lez v4, :cond_6

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY_RANDOM:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    goto :goto_5

    :cond_6
    move v4, v0

    :goto_5
    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    iput p2, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    move p1, v0

    :goto_6
    sget p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge p1, p2, :cond_8

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_8
    invoke-static {p3, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->addTruce(II)V

    invoke-virtual {p0, p3, v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->sentNotification(II)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyRegimentSize()I

    move-result p1

    if-gtz p1, :cond_9

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingArmy(I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result p2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_MAX_ADVANTAGE_POINTS:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAdvantagePoints(I)V

    :cond_9
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvinceBorder()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeAllRebelsArmiesMovingToCiv(I)V

    new-instance p1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$3;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "LOAD_RULER"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$3;-><init>(Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;Ljava/lang/String;I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    return v2

    :cond_a
    return v0
.end method

.method public addOccupiedProvince(I)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v1, v1, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-direct {v1, p1, v2}, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearData()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->clearData()V

    return-void
.end method

.method public final declareIndependence()V
    .locals 17

    move-object/from16 v1, p0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_REBELS_INDEPENDENCE_STEPS:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v0, :cond_3

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v4, v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v4, v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v4, v4, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iput-boolean v3, v4, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v4, v0

    :goto_3
    if-ltz v4, :cond_38

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v5, v5, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    sub-int/2addr v0, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DECLARE_INDEPENDENCE_AFTER_X_DAYS:I

    if-le v0, v5, :cond_37

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v0, v0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    if-nez v0, :cond_37

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v0, v0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v6, v6, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iput-boolean v2, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v7, v7, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    sub-int/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DISBAND_REBELS_ARMIES_AFTER_X_DAYS:I

    if-le v6, v7, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v3

    :goto_4
    iget-object v7, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v7, v7, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v4, -0x1

    :goto_5
    if-ltz v8, :cond_8

    if-eq v4, v8, :cond_7

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v9, v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-ne v9, v10, :cond_7

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v10, v10, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    sub-int/2addr v9, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DECLARE_INDEPENDENCE_MIN_OCCUPIED_DAYS:I

    if-lt v9, v10, :cond_7

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v9, v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v9, v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iput-boolean v2, v9, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    if-nez v6, :cond_6

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v9, v9, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    sub-int/2addr v6, v9

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DISBAND_REBELS_ARMIES_AFTER_X_DAYS:I

    if-le v6, v9, :cond_5

    goto :goto_6

    :cond_5
    move v6, v3

    goto :goto_7

    :cond_6
    :goto_6
    move v6, v2

    :cond_7
    :goto_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v8

    if-ltz v8, :cond_a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    :goto_8
    if-ltz v8, :cond_a

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v9

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v10

    if-eq v9, v10, :cond_9

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iput-boolean v3, v9, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_9
    if-ltz v0, :cond_f

    move v8, v3

    :goto_a
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v9

    if-ge v8, v9, :cond_e

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget-boolean v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-nez v9, :cond_d

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    if-ne v9, v7, :cond_d

    move v9, v3

    :goto_b
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v10

    if-ge v9, v10, :cond_c

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-ne v10, v7, :cond_b

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    move v9, v3

    goto :goto_c

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_c
    move v9, v2

    :goto_c
    if-eqz v9, :cond_d

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_a

    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_9

    :cond_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_d
    if-lez v0, :cond_14

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v8

    if-lez v8, :cond_13

    move v8, v3

    :goto_e
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v9

    if-ge v8, v9, :cond_12

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    if-nez v9, :cond_10

    goto :goto_f

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_11
    :goto_f
    move v8, v3

    goto :goto_10

    :cond_12
    move v8, v2

    :goto_10
    if-eqz v8, :cond_13

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_14
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_11
    if-ltz v0, :cond_17

    move v9, v3

    :goto_12
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v9, v10, :cond_16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v10

    if-lez v10, :cond_15

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    if-gtz v10, :cond_15

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_12

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_17
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x0

    if-lez v0, :cond_20

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v6, v0

    :goto_13
    if-ltz v6, :cond_1a

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeOccupiedProvince(I)V

    :try_start_0
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_14
    if-ltz v0, :cond_19

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v10, :cond_18

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeMove(Ljava/lang/String;)Z

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_19
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_13

    :cond_1a
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_1b

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-ne v0, v4, :cond_1b

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    goto :goto_15

    :cond_1b
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    :goto_15
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v9, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v11, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD_RANDOM:I

    if-lez v9, :cond_1c

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_GOLD_RANDOM:I

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    goto :goto_16

    :cond_1c
    move v9, v3

    :goto_16
    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY_RANDOM:I

    if-lez v9, :cond_1d

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->INDEPENDENCE_LEGACY_RANDOM:I

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    goto :goto_17

    :cond_1d
    move v9, v3

    :goto_17
    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    move v0, v3

    :goto_18
    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v0, v2, :cond_1f

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_1f
    invoke-static {v7, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->addTruce(II)V

    invoke-virtual {v1, v7, v4}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->sentNotification(II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeAllRebelsArmiesMovingToCiv(I)V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvinceBorder()V

    invoke-interface {v8}, Ljava/util/List;->clear()V

    invoke-interface {v5}, Ljava/util/List;->clear()V

    return-void

    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    :goto_19
    if-ltz v8, :cond_23

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->loadSuggestedCivs(I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v2

    :goto_1a
    if-ltz v11, :cond_22

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_21

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v11, v11, -0x1

    goto :goto_1a

    :cond_22
    add-int/lit8 v8, v8, -0x1

    goto :goto_19

    :cond_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    :goto_1b
    if-ltz v8, :cond_26

    move v10, v2

    :goto_1c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v11

    if-ge v10, v11, :cond_25

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1d

    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    :cond_25
    :goto_1d
    add-int/lit8 v8, v8, -0x1

    goto :goto_1b

    :cond_26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_27

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8, v5, v7}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addCiv(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v5}, Ljava/util/List;->clear()V

    return-void

    :cond_27
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DECLARE_INDEPENDENCE_ENABLE_DIFFERENT_GOVERNMENT:Z

    if-eqz v8, :cond_32

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v10, v3

    :goto_1e
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v11

    if-ge v10, v11, :cond_2a

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v11

    iget-boolean v11, v11, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v11, :cond_29

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v11

    iget-boolean v11, v11, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REVOLUTIONISTS:Z

    if-nez v11, :cond_29

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v11

    iget-boolean v11, v11, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->CITY_STATE:Z

    if-nez v11, :cond_29

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REQUIRED_TECHNOLOGY:I

    if-ltz v11, :cond_28

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v12, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REQUIRED_TECHNOLOGY:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v11

    if-eqz v11, :cond_29

    :cond_28
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v11

    if-eq v11, v10, :cond_29

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    :cond_2a
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2c

    move v10, v3

    :goto_1f
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologiesSize()I

    move-result v11

    if-ge v10, v11, :cond_2c

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v11

    iget-boolean v11, v11, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v11, :cond_2b

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v11

    iget-boolean v11, v11, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->REVOLUTIONISTS:Z

    if-nez v11, :cond_2b

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v11

    iget-boolean v11, v11, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->CITY_STATE:Z

    if-nez v11, :cond_2b

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v11

    if-eq v11, v10, :cond_2b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f

    :cond_2c
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_32

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v2

    :goto_20
    const-string v12, "_"

    const-string v13, ""

    if-ltz v11, :cond_30

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_2d
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v12, v2

    :goto_21
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v13

    if-ge v12, v13, :cond_2f

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_22

    :cond_2e
    add-int/lit8 v12, v12, 0x1

    goto :goto_21

    :cond_2f
    :goto_22
    add-int/lit8 v11, v11, -0x1

    const/4 v3, 0x0

    goto :goto_20

    :cond_30
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_32

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v10, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_31

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v11, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Extra_Tag:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_31
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v7}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addCiv(Ljava/lang/String;Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v5}, Ljava/util/List;->clear()V

    return-void

    :cond_32
    if-eqz v6, :cond_36

    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v3, v0

    :goto_23
    if-ltz v3, :cond_35

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeOccupiedProvince(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_24
    if-ltz v0, :cond_34

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v7, :cond_33

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->removeMove(Ljava/lang/String;)Z

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_24

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_34
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_23

    :catch_2
    :cond_35
    const/4 v6, 0x0

    :catch_3
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v4, v0

    goto :goto_25

    :cond_36
    const/4 v6, 0x0

    :goto_25
    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_26

    :cond_37
    move v6, v3

    :goto_26
    add-int/lit8 v4, v4, -0x1

    move v3, v6

    goto/16 :goto_3

    :cond_38
    return-void
.end method

.method public final declareIndependence_TurnsLeft(I)I
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v2, v2, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    if-ne v2, p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DECLARE_INDEPENDENCE_AFTER_X_DAYS:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v0, v0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    sub-int/2addr v2, v0

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public decreaseRevolutionaryRisk(II)Z
    .locals 4

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_GOLD:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_LEGACY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    return v1

    :cond_3
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_GOLD:F

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_LEGACY:F

    div-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpl-float v1, v0, v2

    if-lez v1, :cond_4

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result p2

    sub-float/2addr p2, v0

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget v1, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_GOLD:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iput v1, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget p2, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_LEGACY:F

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    iput p2, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getDecreaseRevolutionaryRisk_CostGold(I)F
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_GOLD:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result p1

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getDecreaseRevolutionaryRisk_CostLegacy(I)F
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->UNREST_DECREASE_COST_LEGACY:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result p1

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public getRevolutionaryProvinces(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRevolutionaryProvinces_Sorted(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->getRevolutionaryProvinces(I)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_1
    if-lez v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final moveArmies()V
    .locals 9

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_REBELS_ARMIES_STEPS:I

    rem-int/2addr v0, v1

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_REGIMENTS_MIN:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    goto/16 :goto_3

    :cond_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->REBELS_MAX_MORALE:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->REBELS_MAX_MORALE:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->REBELS_MORALE_RECOVERY:F

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale_Regiments(FF)V

    :cond_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v2, :cond_b

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v1

    if-ltz v1, :cond_b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-lez v4, :cond_9

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_8

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->isArmyAlreadyMoving(II)Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    :cond_7
    cmpg-float v6, v5, v3

    if-gez v6, :cond_8

    move v2, v4

    move v3, v5

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_9
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->newMove(IILjava/lang/String;IZ)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_a
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    add-int/lit8 v0, v0, -0x1

    :cond_b
    :goto_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_REBELS_ARMIES_STEPS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method

.method public final removeArmyPosition(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public removeOccupiedProvince(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;

    iget v1, v1, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->occupiedProvinces:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sentNotification(II)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    if-ge p2, v0, :cond_0

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    sput p2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Liberation"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->infoUnrest:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    :cond_0
    return-void
.end method

.method public spawnRevolution(III)V
    .locals 17

    move/from16 v1, p1

    move/from16 v8, p2

    move/from16 v2, p3

    const-string v3, ": "

    const-string v4, "Revolt"

    :try_start_0
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v0

    const/4 v6, 0x0

    :goto_0
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v7

    if-eq v8, v7, :cond_0

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v9

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v10

    invoke-virtual {v10, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->DECREASE_UNREST_IN_PROVINCES_BY_AFTER_REVOLT:F

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    move-result-object v12

    invoke-virtual {v12, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->getProvince(I)I

    move-result v12

    invoke-static {v8, v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v12

    mul-float/2addr v11, v13

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    if-le v2, v6, :cond_7

    const/4 v6, 0x0

    :goto_1
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-ne v7, v1, :cond_2

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v2, :cond_7

    const/4 v6, 0x0

    :goto_3
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_7

    const/4 v7, 0x0

    :goto_4
    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v9

    if-ge v7, v9, :cond_5

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    if-ne v9, v1, :cond_4

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v2, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v2, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v2, :cond_8

    :try_start_2
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    neg-int v9, v1

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v15, p0

    :try_start_3
    invoke-virtual {v15, v7}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addOccupiedProvince(I)V

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->UNREST_AFTER_REVOLUTION_IN_PROVINCE:F

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v15, p0

    goto/16 :goto_f

    :cond_8
    move-object/from16 v15, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->UPRISING_REGIMENTS_MIN:I

    int-to-float v2, v2

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->UPRISING_PERC_OF_REGIMENTS_LIMIT:F

    mul-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v6, :cond_10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->UPRISING_MAX_REGIMENTS_IN_PROVINCE:I

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-direct {v10, v1, v11}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;-><init>(II)V

    iget v11, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v12, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    add-int/2addr v11, v12

    iput v11, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getUnlockedUnitsFirstLine()Ljava/util/List;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getUnlockedUnitsFlank()Ljava/util/List;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getUnlockedUnitsSupport()Ljava/util/List;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_9

    iget v14, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v14, :cond_9

    iget v14, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v5, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    add-int/2addr v14, v5

    iput v14, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    :cond_9
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_a

    iget v5, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-lez v5, :cond_a

    iget v5, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v14, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    add-int/2addr v5, v14

    iput v5, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    :cond_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    const/4 v14, 0x0

    invoke-direct {v5, v14, v14}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;-><init>(II)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_b
    const/4 v14, 0x0

    :goto_9
    move v5, v14

    :goto_a
    iget v14, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-ge v5, v14, :cond_c

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    move/from16 p3, v6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    new-instance v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v14, v8, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p2

    move/from16 v6, p3

    goto :goto_a

    :cond_c
    move/from16 p3, v6

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    const/4 v5, 0x0

    :goto_b
    iget v6, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-ge v5, v6, :cond_d

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v11, v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v8, v11, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_e

    const/4 v5, 0x0

    :goto_c
    iget v6, v10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-ge v5, v6, :cond_e

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    new-instance v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v11, v11, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v8, v11, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_e
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    new-instance v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    neg-int v8, v1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v6, v8, v10, v9}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    if-gez v2, :cond_f

    goto :goto_d

    :cond_f
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, p2

    move/from16 v6, p3

    goto/16 :goto_8

    :cond_10
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v2, :cond_11

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->checkForBattle()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v0, :cond_12

    neg-int v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoUnrest:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v1, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$1;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SIEGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "SiegeLost"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v9, v1

    move-object/from16 v10, p0

    move-object v15, v2

    invoke-direct/range {v9 .. v15}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$1;-><init>(Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v9, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->REVOLT:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$2;-><init>(Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_10

    :catch_2
    move-exception v0

    :goto_f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_12
    :goto_10
    return-void
.end method

.method public spawnRevolution(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->UPRISING_PROVINCES_PERC:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {p0, p1, v0, p2}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->spawnRevolution(III)V

    return-void
.end method

.method public final startRevolution()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_UPRISING_STEPS:I

    rem-int/2addr v1, v2

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    :goto_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->START_UPRISING_MIN_UNREST:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0, v1, v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->spawnRevolution(ILjava/util/List;)V

    :cond_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_UPRISING_STEPS:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final update()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->declareIndependence()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->moveArmies()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->startRevolution()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public updateArmyPosition(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iput p2, p1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-direct {v1, p2, p1}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->armyPosition:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->iArmyPositionSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
