.class public Laoc/kingdoms/lukasz/map/PeaceTreaty;
.super Ljava/lang/Object;
.source "PeaceTreaty.java"


# instance fields
.field public demandGold:I

.field public demandGovernmentChange:Z

.field public demandHumiliate:Z

.field public demandMilitaryAccess:Z

.field public demandReligionConversion:Z

.field public demandReturnProvinces:Z

.field public demandVassalization:Z

.field public demandWarReparations:Z

.field public fAggressiveExpansion:F

.field public fScore:F

.field public fScoreTotal:F

.field public fTotalProvinceWarScore_CivLost:F

.field public iCivID:I

.field public iCivID2:I

.field public lLiberateCiv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lProvinces_Liberate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lSubjectTransfer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public warKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReturnProvinces:Z

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    iput p1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    :try_start_0
    sget-object p2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget p1, p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    goto :goto_0

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget p1, p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    iget p1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getTotalProvinceValue(I)F

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fTotalProvinceWarScore_CivLost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildScore()V

    if-nez p3, :cond_1

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result p1

    if-ge v0, p1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getCivsPossibleToLiberate(I)Ljava/util/List;
    .locals 5
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

    move v2, v1

    :goto_0
    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v3, v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method public static getLiberateCivEconomy(II)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-float v1, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getLiberateCivPopulation(II)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static getLiberateCivProvinces(II)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getTotalProvinceValue(I)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static getTotalProvinceValue_Liberate(II)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getWarReparationsPerMonth(I)F
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_REPARATIONS:F

    mul-float/2addr p0, v0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static moveAllArmiesToOwnTerritory(I)V
    .locals 8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isFriendlyProvince_OrAtWAr(II)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(Ljava/lang/String;)Z

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v2

    move v3, v1

    move v5, v4

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v3, v6, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v6

    cmpl-float v7, v2, v6

    if-lez v7, :cond_1

    move v5, v3

    move v2, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-boolean v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    iput-boolean v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static updateRivals(I)V
    .locals 2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->removeRival(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addProvince(I)Z
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sub-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    return v2

    :cond_2
    return v1
.end method

.method public final addProvinces_LiberateCiv(II)V
    .locals 3

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

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public buildAggressiveExpansion()V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PROVINCE_MAX:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PER_PROVINCE_VALUE:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getAggressiveExpansion_Extra(I)F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    :try_start_1
    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    if-nez v3, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PROVINCE_MAX:F

    iget v5, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PER_PROVINCE_VALUE_VASSALIZATION:F

    iget v7, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getAggressiveExpansion_Extra(I)F

    move-result v7

    mul-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    move v1, v2

    :goto_2
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    move v3, v2

    :goto_3
    :try_start_2
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PROVINCE_MAX:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_PER_PROVINCE_VALUE_SUBJECT_TRANSFER:F

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getAggressiveExpansion_Extra(I)F

    move-result v8

    mul-float/2addr v7, v8

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    if-eqz v1, :cond_5

    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_HUMILIATE_AGGRESSIVE_EXPANSION_GAIN:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    :cond_5
    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    return-void
.end method

.method public buildScore()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    iget v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    :try_start_0
    iget v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v4, :cond_2

    move v4, v1

    :goto_2
    :try_start_1
    iget v5, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget v5, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SCORE_WINNING_SIDE_VASSALS:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScoreTotal:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SCORE_WINNING_SIDE:F

    mul-float/2addr v3, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SCORE_LOSING_SIDE:F

    mul-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :try_start_3
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_4

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/war/War;->isCoalition:Z

    if-eqz v0, :cond_5

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SCORE_COALITION_WAR:F

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/war/War;->conquerVassal:Z

    if-eqz v0, :cond_6

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SCORE_CONQUER_VASSAL_WAR:F

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_6
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_WARSCORE_COST_PER_POINT:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_WAR_SCORE_COST:[F

    iget v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v3

    add-float/2addr v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const v2, 0x3d4ccccd    # 0.05f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    return-void
.end method

.method public final demandGold()Z
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_GOLD_MAX:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGold()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGold()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final demandGold_Cancel()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGold()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_0
    return-void
.end method

.method public final demandGovernmentChange()V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGovernmentChange()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGovernmentChange()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandGovernmentChange()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_1
    :goto_0
    return-void
.end method

.method public final demandHumiliate()V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandHumiliate()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandHumiliate()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandHumiliate()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    return-void
.end method

.method public final demandLiberateCiv(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->removeProvinces_LiberateCiv(II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_LiberateCiv(II)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_2

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_LiberateCiv(II)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->addProvinces_LiberateCiv(II)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_LiberateCiv(II)F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_3
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    return-void
.end method

.method public final demandMilitaryAccess()V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandMilitaryAccess()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandMilitaryAccess()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandMilitaryAccess()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_1
    :goto_0
    return-void
.end method

.method public final demandReligionConversion()V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandReligionConversion()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandReligionConversion()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandReligionConversion()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_1
    :goto_0
    return-void
.end method

.method public final demandSubjectTransfer(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_SubjectTransfer(I)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_2

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_SubjectTransfer(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_SubjectTransfer(I)F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_3
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    return-void
.end method

.method public final demandVassalization()V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandVassalization()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_1
    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    return-void
.end method

.method public final demandWarReparations()V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandWarReparations()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandWarReparations()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getScore_DemandWarReparations()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    :cond_1
    :goto_0
    return-void
.end method

.method public enforceDemands(Z)Z
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    if-nez p1, :cond_2

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/war/War;->isInThisWar(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :catch_0
    move v7, v2

    goto :goto_3

    :cond_2
    move v0, v2

    :goto_2
    move v7, v0

    :goto_3
    if-nez p1, :cond_10

    :try_start_1
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_ABANDON_DEMAND_PROVINCES_IF_ARE_NOT_CONNECTED:Z

    if-eqz v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v8

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-nez v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v8, 0x64

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_ABANDON_DEMAND_PROVINCES_IF_ARE_NOT_CONNECTED_CHANCE:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-ge v0, v9, :cond_10

    :try_start_2
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    move v9, v2

    move v10, v9

    :goto_4
    if-ltz v0, :cond_6

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    iget-boolean v12, v11, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    if-eqz v12, :cond_3

    move v10, v3

    :cond_3
    move v12, v2

    :goto_5
    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v13

    const/4 v14, -0x1

    if-ge v12, v13, :cond_5

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v13

    iget v15, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    if-ne v13, v15, :cond_4

    move v9, v3

    move v0, v14

    goto :goto_6

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    add-int/2addr v0, v14

    goto :goto_4

    :cond_6
    if-nez v9, :cond_10

    if-eqz v10, :cond_9

    move v0, v2

    :goto_7
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    if-ge v0, v9, :cond_8

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget-boolean v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    if-eqz v9, :cond_7

    move v0, v3

    goto :goto_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    move v0, v2

    :goto_8
    if-eqz v0, :cond_9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_ABANDON_DEMAND_PROVINCES_HAVE_ONLY_ACCESS_TO_MAIN_SEA_CHANCE:I

    if-lt v0, v8, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v3

    :goto_9
    if-eqz v0, :cond_10

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_a
    if-ltz v0, :cond_a

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iput-boolean v2, v8, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    iput v9, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    iget v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v8, v9

    iput v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_a
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    if-nez v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion()V

    :cond_b
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    if-nez v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange()V

    :cond_c
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    if-nez v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization()V

    :cond_d
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    if-nez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations()V

    :cond_e
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    if-nez v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate()V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold()Z

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold()Z

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold()Z

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold()Z

    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess:Z

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandMilitaryAccess()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_10
    :goto_b
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_c
    if-ltz v0, :cond_13

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_ANNEX_PROVINCE_ECONOMY_CHANGE:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiency()F

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_ANNEX_PROVINCE_TAX_CHANGE:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->setTaxEfficiency(F)V

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_ANNEX_PROVINCE_GROWTH_RATE_CHANGE:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->setGrowthRate(F)V

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_ANNEX_PROVINCE_MANPOWER_CHANGE:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->setManpower(F)V

    :cond_11
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v8

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_ANNEX_PROVINCE_MAX_UNREST:F

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setRevulutionaryRisk(F)V

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addConqueredProvinces(I)V

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v8, v9, :cond_12

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v9, v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->cp:I

    add-int/2addr v9, v3

    iput v9, v8, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->cp:I

    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_c

    :cond_13
    if-nez p1, :cond_1a

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const/4 v8, 0x2

    if-le v0, v8, :cond_1a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->AI_PEACE_EXTRA_DEMAND_SURROUNDED_PROVINCES:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    :goto_d
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    if-ge v8, v9, :cond_18

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    if-eq v9, v10, :cond_17

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    move v10, v2

    move v11, v10

    :goto_e
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v12

    if-ge v10, v12, :cond_16

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v12

    iget v13, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v12, v13, :cond_14

    move v11, v2

    goto :goto_f

    :cond_14
    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v12

    iget v13, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    if-ne v12, v13, :cond_15

    add-int/lit8 v11, v11, 0x1

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_16
    :goto_f
    if-lez v11, :cond_17

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_10
    if-ltz v8, :cond_1a

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-virtual {v9, v3}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addConqueredProvinces(I)V

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v9, v10, :cond_19

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v9, v9, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v10, v9, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->cp:I

    add-int/2addr v10, v3

    iput v10, v9, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->cp:I

    :cond_19
    add-int/lit8 v8, v8, -0x1

    goto :goto_10

    :cond_1a
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_1b

    if-eqz v4, :cond_1b

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_11
    if-ltz v0, :cond_1b

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_1b
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    if-eqz v0, :cond_1c

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_1c

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    iget v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V

    :cond_1c
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandWarReparations:Z

    if-eqz v0, :cond_1d

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_1d

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    iget v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getWarReparationsPerMonth(I)F

    move-result v8

    iput v8, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_REPARATIONS_TURNS:I

    add-int/2addr v8, v9

    iput v8, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    iget v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getWarReparationsPerMonth(I)F

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    iput v8, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_REPARATIONS_TURNS:I

    add-int/2addr v8, v9

    iput v8, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V

    :cond_1d
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGovernmentChange:Z

    if-eqz v0, :cond_1e

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v0

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v8

    if-eq v0, v8, :cond_1e

    new-instance v0, Laoc/kingdoms/lukasz/map/PeaceTreaty$1;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeGovernmentType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v10

    invoke-direct {v0, v1, v8, v9, v10}, Laoc/kingdoms/lukasz/map/PeaceTreaty$1;-><init>(Laoc/kingdoms/lukasz/map/PeaceTreaty;Ljava/lang/String;II)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_1e
    :try_start_4
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/war/War;->updateCapitalProvinceID()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_12

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_12
    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    if-lez v0, :cond_1f

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getGold_PerDemand()F

    move-result v0

    iget v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    add-float/2addr v8, v0

    iput v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget v8, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sub-float/2addr v8, v0

    iput v8, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    :cond_1f
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandHumiliate:Z

    if-eqz v0, :cond_20

    iget v0, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_HUMILIATE_LEGACY_GAIN:F

    add-float/2addr v0, v8

    iput v0, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    iget v0, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_HUMILIATE_LEGACY_LOSER:F

    sub-float/2addr v0, v8

    iput v0, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    :cond_20
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReligionConversion:Z

    if-eqz v0, :cond_24

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v8

    if-eq v0, v8, :cond_24

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setReligionID_UpdateBonuses(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_21

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v0, v8, :cond_21

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v0

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v8

    if-eq v0, v8, :cond_21

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v8

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    :try_start_7
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_21
    :goto_13
    :try_start_8
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    int-to-float v0, v0

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_RELIGION_CONVERSION_PROVINCES_CONVERT:F

    mul-float/2addr v0, v8

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v0, v8

    sub-int/2addr v0, v3

    if-lez v0, :cond_24

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v2

    :goto_14
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v10

    if-ge v9, v10, :cond_22

    invoke-virtual {v6, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_22
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v3

    :goto_15
    if-ltz v0, :cond_24

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_24

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    iget v11, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v10, v11, :cond_23

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v10

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v11

    if-eq v10, v11, :cond_23

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v11

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    :cond_23
    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :catch_4
    move-exception v0

    :try_start_9
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_16

    :catch_5
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_24
    :goto_16
    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v0

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->PEACE_TREATY_AE_FROM_WAR_LIMIT:F

    iget v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fAggressiveExpansion:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    add-float/2addr v0, v8

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAggressiveExpansion(F)V

    move v0, v2

    :goto_17
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_26

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v8

    iget v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v8, v9, :cond_25

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    iget v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v8, v9, :cond_25

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID()V

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_26
    move v0, v2

    :goto_18
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_30

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    sub-int/2addr v8, v3

    move v9, v2

    :goto_19
    if-ltz v8, :cond_28

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget-object v11, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    move v9, v3

    :cond_27
    add-int/lit8 v8, v8, -0x1

    goto :goto_19

    :cond_28
    if-eqz v9, :cond_2f

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v8

    if-lez v8, :cond_2f

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_29

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    :cond_29
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_2a

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCapitalProvinceID(I)V

    goto :goto_1a

    :cond_2a
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    if-ltz v8, :cond_2b

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_2c

    :cond_2b
    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    :cond_2c
    :goto_1a
    iget-object v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v9

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_LIBERATE_CIV_RELATIONS:F

    invoke-virtual {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation(IIF)V

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_LIBERATE_CIV_RELATIONS:F

    invoke-virtual {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation(IIF)V

    iget v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_LIBERATE_CIV_LEGACY:F

    add-float/2addr v8, v9

    iput v8, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    iget v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v8

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v9

    if-le v8, v9, :cond_2e

    move v8, v2

    :goto_1b
    sget v9, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v8, v9, :cond_2e

    iget v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v9

    if-eqz v9, :cond_2d

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v8, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V

    :cond_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_2e
    iget v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    iget-object v9, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->addGuarantee(II)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_18

    :cond_30
    :try_start_a
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/war/War;->peaceTreaty()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_1c

    :catch_6
    move-exception v0

    const-string v5, "enforceDemands"

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1c
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_33

    if-eqz v4, :cond_33

    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandVassalization:Z

    if-eqz v0, :cond_31

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_31

    move v0, v2

    :goto_1d
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v0, v4, :cond_31

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_31
    move v0, v2

    :goto_1e
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_33

    move v4, v2

    :goto_1f
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v4, v5, :cond_32

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lSubjectTransfer:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->updateFogOfWar_All(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_33
    iget-boolean v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandReturnProvinces:Z

    if-eqz v0, :cond_36

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    :goto_20
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    if-ge v4, v5, :cond_35

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v8

    if-eq v5, v8, :cond_34

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    iget v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-ne v5, v8, :cond_34

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-lez v5, :cond_34

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v5

    iget v8, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-eq v5, v8, :cond_34

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_21
    if-ltz v4, :cond_36

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v8

    invoke-virtual {v5, v8}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_21

    :cond_36
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/war/WarManager;->iWarsSize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v4, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v4, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateRivals(I)V

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateRivals(I)V

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateSpecialAlliances(I)V

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateSpecialAlliances(I)V

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateVassals(I)V

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->updateVassals(I)V

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->moveArmiesToOwnTerritory(I)V

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->moveArmiesToOwnTerritory(I)V

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v4, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateAlliance_ConqueredProvinces(I)V

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v4, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->updateAlliance_ConqueredProvinces(I)V

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_37

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    iget v4, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    if-eq v0, v4, :cond_37

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    :cond_37
    if-eqz v7, :cond_39

    :try_start_b
    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    iget v0, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "PeaceTreaty"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoDiplomacy:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    new-instance v0, Laoc/kingdoms/lukasz/map/PeaceTreaty$2;

    const-string v4, "rebuildInGame_Wars"

    invoke-direct {v0, v1, v4}, Laoc/kingdoms/lukasz/map/PeaceTreaty$2;-><init>(Laoc/kingdoms/lukasz/map/PeaceTreaty;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->ENABLE_WAR_BORDER:Z

    if-eqz v0, :cond_38

    new-instance v0, Laoc/kingdoms/lukasz/map/PeaceTreaty$3;

    const-string v4, "updateProvinceBorder"

    invoke-direct {v0, v1, v4}, Laoc/kingdoms/lukasz/map/PeaceTreaty$3;-><init>(Laoc/kingdoms/lukasz/map/PeaceTreaty;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_38
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_22

    :catch_7
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_39
    :goto_22
    return v3
.end method

.method public getAggressiveExpansion_Extra(I)F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_SAME_RELIGION:F

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_DIFFERENT_RELIGION:F

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_DISTANCE:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public getGold_PerDemand()F
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getGold_PerDemand_One()F

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getGold_PerDemand_One()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->iCivID2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanValue(I)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_GOLD_MODIFIER:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPopulation()I
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getScore_DemandGold()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScoreTotal:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_GOLD_COST_SCORE:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getScore_DemandGovernmentChange()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fTotalProvinceWarScore_CivLost:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_GOVERNMENT_CHANGE_COST_SCORE:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getScore_DemandHumiliate()F
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_HUMILIATE_COST_SCORE:F

    return v0
.end method

.method public final getScore_DemandMilitaryAccess()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScoreTotal:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_MILITARY_ACCESS_COST_SCORE:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getScore_DemandReligionConversion()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fTotalProvinceWarScore_CivLost:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_RELIGION_CONVERSION_COST_SCORE:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getScore_DemandVassalization()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fTotalProvinceWarScore_CivLost:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_VASSALIZATION_COST_SCORE:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getScore_DemandWarReparations()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScoreTotal:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_WAR_REPARATIONS_COST_SCORE:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getScore_LiberateCiv(II)F
    .locals 0

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getTotalProvinceValue_Liberate(II)F

    move-result p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_LIBERATE_CIV_COST_SCORE:F

    mul-float/2addr p1, p2

    return p1
.end method

.method public final getScore_SubjectTransfer(I)F
    .locals 1

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getTotalProvinceValue(I)F

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_SUBJECT_TRANSFER_COST_SCORE:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public isProvinceTaken(I)Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final moveArmiesToOwnTerritory(I)V
    .locals 10

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v6, v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->isFriendlyProvince_OrAtWAr(II)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-lez v6, :cond_2

    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v2, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v7

    move v8, v4

    :goto_2
    iget v9, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v9

    if-ge v8, v9, :cond_1

    iget v9, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v2, v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_0

    iget v6, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    iget v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v2, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v7

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    iput-boolean v0, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    iput-boolean v0, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public removeProvince(I)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeProvinces_LiberateCiv(II)V
    .locals 5

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lLiberateCiv:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-eqz v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces_Liberate:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public resetProvinces()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->fScore:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    return-void
.end method

.method public takeProvince(I)V
    .locals 1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->isProvinceTaken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->removeProvince(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->addProvince(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->buildAggressiveExpansion()V

    return-void
.end method

.method public final updateSpecialAlliances(I)V
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v0, v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    if-ne v1, p1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->elections()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateVassals(I)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
