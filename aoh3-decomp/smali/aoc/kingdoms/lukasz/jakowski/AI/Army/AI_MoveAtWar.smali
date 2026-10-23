.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;
.super Ljava/lang/Object;
.source "AI_MoveAtWar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;
    }
.end annotation


# static fields
.field public static armies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field public static armiesInMove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field public static armiesLowMoraleManpower:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field public static armiesSiege:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field public static armiesToMerge:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field public static enemyArmies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;",
            ">;"
        }
    .end annotation
.end field

.field public static possibleProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static possibleProvincesDefend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static warScore:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlliedProvincesFromWars(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v1, v2, :cond_11

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    if-nez v2, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/war/War;->isWarLeader(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ALLIES_WAR_LEADER:F

    goto :goto_1

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ALLIES_NOT_WAR_LEADER:F

    :goto_1
    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    goto :goto_2

    :cond_2
    iget-object v4, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    :goto_2
    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    goto :goto_3

    :cond_3
    iget-object v2, v2, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p1, v6, :cond_4

    iget v6, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v7, v0

    :goto_4
    if-ge v7, v6, :cond_7

    iget v8, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v10

    if-gez v10, :cond_5

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ALLIES_OCCUPIED_BY_REBELS:F

    iput v9, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_5

    :cond_5
    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v9

    invoke-static {p1, v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ALLIES_OCCUPIED_BY_ENEMY_CIV:F

    iput v9, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    :cond_6
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    iget v6, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v7, v0

    :goto_6
    if-ge v7, v6, :cond_4

    iget v8, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v9, v0

    :goto_7
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v10

    if-ge v9, v10, :cond_9

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1, v10}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v10

    if-eqz v10, :cond_8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ALLIES_UNDER_SIEGE:F

    iput v9, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_8

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_a
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    move v5, v0

    :goto_9
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v5, v6, :cond_d

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ENEMY_WAR_LEADER_OCCUPIED_UNDER_SIEGE:F

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_a

    :cond_b
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_ENEMY_WAR_LEADER_OCCUPIED:F

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_a

    :cond_c
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iput v3, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_b
    if-lez v3, :cond_10

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    move v5, v0

    :goto_c
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v5, v6, :cond_f

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_e

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ENEMY_ALLIES_PROVINCES:F

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_f
    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_10
    :goto_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public static addAlliedProvincesFromWars_Defensive(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v1, v2, :cond_9

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    goto :goto_1

    :cond_1
    iget-object v2, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq p1, v4, :cond_2

    iget v4, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_5

    iget v6, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v8

    if-gez v8, :cond_3

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_DEFEND_OCCUPIED_BY_REBELS:F

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v7

    invoke-static {p1, v7}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_DEFEND_OCCUPIED_BY_ENEMY_CIV:F

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    iget v4, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v0

    :goto_4
    if-ge v5, v4, :cond_2

    iget v6, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v7, v0

    :goto_5
    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_DEFEND_ENEMY_ARMY_IN_PROVINCE:F

    iput v7, v6, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_6

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public static addOccupiedProvinces(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v3

    if-gez v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_SCORE_OCCUPIED_BY_REBELS:F

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_3

    :cond_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_SCORE_OCCUPIED_BY_ENEMY_CIV:F

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_3

    :cond_1
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v0

    :goto_1
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_2
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_SCORE_UNDER_SIEGE_BY_REBELS:F

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_3

    :cond_4
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_SCORE_UNDER_SIEGE_BY_ENEMY_CIV:F

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_3

    :cond_5
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_PROVINCE_SCORE_DEFAULT:F

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static buildEnemyArmy(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v2, v4, :cond_8

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    if-eqz v4, :cond_7

    invoke-virtual {v4, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    goto :goto_1

    :cond_0
    iget-object v5, v4, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    :goto_1
    invoke-virtual {v4, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v4, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    goto :goto_2

    :cond_1
    iget-object v6, v4, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    :goto_2
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v7, v7, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    if-gt v7, v6, :cond_2

    iget v6, v4, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    float-to-int v6, v6

    neg-int v6, v6

    invoke-virtual {v4, p1}, Laoc/kingdoms/lukasz/map/war/War;->getWarScore_Side(I)I

    move-result v4

    mul-int/2addr v6, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_AT_ANY_COST_IF_WARSCORE_BELOW:I

    if-ge v6, v4, :cond_7

    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    move v5, v1

    :goto_3
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-lez v7, :cond_6

    move v7, v1

    :goto_4
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v8, :cond_5

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-eq p1, v8, :cond_5

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_5
    if-ltz v8, :cond_4

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    if-ne v9, v10, :cond_3

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v9, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    add-int/2addr v9, v10

    iput v9, v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    move v8, v1

    goto :goto_6

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_4
    move v8, v3

    :goto_6
    if-eqz v8, :cond_5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    new-instance v9, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    invoke-direct {v9, v10, v11}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;-><init>(II)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v1

    :goto_7
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v2, v4, :cond_d

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    if-lez v5, :cond_c

    move v5, v1

    :goto_8
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v6

    if-ge v5, v6, :cond_c

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v6, :cond_b

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-eq p1, v6, :cond_b

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1, v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_9
    if-ltz v6, :cond_a

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v8

    if-ne v7, v8, :cond_9

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    add-int/2addr v7, v8

    iput v7, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    move v6, v1

    goto :goto_a

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    :cond_a
    move v6, v3

    :goto_a
    if-eqz v6, :cond_b

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v8

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    invoke-direct {v7, v8, v9}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;-><init>(II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_d
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static calculateProvinceScores()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    iget v3, v1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    mul-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static determinePossibleProvinces(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .locals 0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->addOccupiedProvinces(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->addAlliedProvincesFromWars(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    return-void
.end method

.method public static determinePossibleProvinces_Defensive(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V
    .locals 0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->addOccupiedProvinces(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->addAlliedProvincesFromWars_Defensive(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    return-void
.end method

.method public static mergeArmies(I)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->mergeArmy(IILjava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static mergeArmy(IILjava/lang/String;)V
    .locals 8

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {v0, p0, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->isArmyMerging_Just(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v2, p0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->mergeUnits(Ljava/util/List;)Ljava/lang/String;

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    const v2, 0x497423f0    # 999999.0f

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v3, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    if-eq v3, p1, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v3

    cmpg-float v4, v3, v2

    if-gez v4, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v4, :cond_3

    move v1, v0

    move v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-ltz v1, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->addMerge(ILjava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static mergeArmy_InProvince(IILjava/lang/String;)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v2, p0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-le v2, v3, :cond_1

    :goto_1
    move v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->mergeUnits(Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static moveArmiesLowMoraleManpower(I)V
    .locals 10

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-eq v1, p0, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IN_ENEMY_TERRITORY_DO_NOTHING:I

    if-ge v1, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IN_ENEMY_TERRITORY_MOVE_TO_CLOSEST_PROVINCE:I

    if-ge v1, v3, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v3

    move v6, v1

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v2, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v1, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v1

    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    move v6, v3

    move v3, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v5, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    goto/16 :goto_3

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IN_ENEMY_TERRITORY_MOVE_TO_CAPITAL:I

    if-ge v1, v2, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    goto/16 :goto_3

    :cond_4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    goto/16 :goto_3

    :cond_5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IN_OWN_TERRITORY_MOVE_TO_NEIGHBORING_PROVINCE:I

    if-ge v1, v3, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v2, v4, :cond_7

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, p0, :cond_6

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v5, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_9
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IN_OWN_TERRITORY_MOVE_TO_CAPITAL:I

    if-ge v1, v2, :cond_a

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public static moveArmiesToProvinces(I)V
    .locals 13

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->selectBestProvince(I)I

    move-result v2

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->selectBestProvince(II)I

    move-result v2

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    if-ne v3, v2, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-virtual {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveArmiesToProvinces_Defend(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_AFTER_MOVE_SCORE:F

    mul-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_0

    :cond_3
    new-instance v3, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-direct {v3, p0, v4, v2}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;-><init>(III)V

    iget v4, v3, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;->iRouteSize:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_d

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_1
    iget v8, v3, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;->iRouteSize:I

    if-ge v7, v8, :cond_5

    iget-object v8, v3, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;->lRoute:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v3, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_AI;->lRoute:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    move v7, v5

    :goto_2
    if-ltz v3, :cond_9

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, p0, :cond_7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v8, v9, :cond_8

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v7, v6

    goto :goto_4

    :cond_7
    :goto_3
    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_9
    if-eqz v7, :cond_a

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageDemandMilitaryAccess;

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_MESSAGE_DAYS:I

    add-int/2addr v8, v9

    invoke-direct {v7, p0, v8}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessageDemandMilitaryAccess;-><init>(II)V

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addMessage(Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v7, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DEMAND_MILITARY_ACCESS_COST:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_DEMAND_MILITARY_ACCESS_COST_MODIFIER:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    :goto_5
    if-ltz v3, :cond_c

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->addMilitaryAccess(II)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v8, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DEMAND_MILITARY_ACCESS_COST:F

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_DEMAND_MILITARY_ACCESS_COST_MODIFIER:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    :cond_b
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_c
    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-virtual {v3, v4, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->addProvince(II)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ARMY_CANT_REACH_RANDOM_PROVINCES_LIMIT:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, v6

    :goto_6
    if-ltz v2, :cond_11

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->selectBestProvince_Random(I)I

    move-result v3

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->selectBestProvince(II)I

    move-result v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    if-ne v4, v3, :cond_e

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    goto :goto_7

    :cond_e
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    iget v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-virtual {v4, v7, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_7

    :cond_f
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v3

    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_AFTER_MOVE_SCORE:F

    mul-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    goto :goto_8

    :cond_10
    :goto_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_11
    move v5, v6

    :goto_8
    if-eqz v5, :cond_0

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveArmiesToProvinces_Defend(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;)V

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public static moveArmiesToProvinces_Defend(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_NO_CONNECTIONS_DEFEND_CHANCE:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->selectBestProvince_Defend(I)I

    move-result v0

    iget v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    if-ne v1, v0, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_AFTER_MOVE_DEFEND_SCORE:F

    mul-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    :cond_1
    return-void
.end method

.method public static moveAtWar(I)V
    .locals 4

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/high16 v0, 0x447a0000    # 1000.0f

    sput v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->warScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiUpdateID:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiUpdateID:I

    const/16 v2, 0xe

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiUpdateID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Generals;->recruitGenerals(I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->processArmyPositions(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->processArmyPositions_Just(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V

    :goto_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->percentageOfCivProvincesThatAreOccupied(Laoc/kingdoms/lukasz/map/civilization/Civilization;)F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_IF_PERC_OF_PROVINCES_THAT_ARE_OCCUPIED:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-static {v0, p0, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->updateMinWarscore(Laoc/kingdoms/lukasz/map/civilization/Civilization;IZ)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->warScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_IF_WARSCORE_BELOW:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->warScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_AT_ANY_COST_IF_WARSCORE_BELOW:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->buildEnemyArmy(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveToEnemyArmies(I)V

    :cond_4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->mergeArmies(I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveArmiesLowMoraleManpower(I)V

    :cond_5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarPlayDefensiveUntilTurnID()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-le v1, v2, :cond_6

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->determinePossibleProvinces_Defensive(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveArmiesToProvinces(I)V

    goto :goto_1

    :cond_6
    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->determinePossibleProvinces(Laoc/kingdoms/lukasz/map/civilization/Civilization;I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveArmiesToProvinces(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static moveToEnemyArmies(I)V
    .locals 12

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveToEnemyArmies_SortEnemyArmies(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveToEnemyArmies_GetOwnArmies()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-static {v3, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->moveToEnemyArmies_MoveDistance(ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    :goto_1
    if-lez v6, :cond_2

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    move v7, v6

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    add-int/2addr v5, v6

    invoke-interface {v0, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->army:I

    if-le v5, v6, :cond_4

    move v3, v1

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v9, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    sget v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->warScore:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ARMY_TO_ENEMY_ARMIES_AT_ANY_COST_IF_WARSCORE_BELOW:I

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_5

    move v3, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v7, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v9, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static moveToEnemyArmies_GetOwnArmies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method public static moveToEnemyArmies_MoveDistance(ILjava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static moveToEnemyArmies_SortEnemyArmies(I)V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->provinceID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance(II)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$EnemyArmy;->distance:F

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->enemyArmies:Ljava/util/List;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static percentageOfCivProvincesThatAreOccupied(Laoc/kingdoms/lukasz/map/civilization/Civilization;)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public static processArmyPositions(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v2, :cond_d

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/SiegeManager;->isProvinceUnderSiege(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V

    goto/16 :goto_2

    :cond_3
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_WAIT_IF_IN_RECRUITMENT_AND_REGIMENTS_BELOW:I

    if-ge v3, v4, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v4, :cond_4

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isRecruitArmyInProgress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v3, :cond_a

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v3, :cond_c

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->shouldMergeArmy(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_ARMY_MORALE_BELOW:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_CIV_MANPOWER_OVER:I

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_8

    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    int-to-float v3, v3

    iget v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_ARMY_MANPOWER_BELOW:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_NUM_OF_REGIMENTS_BELOW:I

    if-ge v3, v4, :cond_9

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    :goto_1
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v3, :cond_b

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isInMoveUnits_ArmyKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    iput-boolean v0, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    iput-boolean v0, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    :cond_c
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public static processArmyPositions_Just(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v2, :cond_c

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/SiegeManager;->isProvinceUnderSiege(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesSiege:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V

    goto/16 :goto_2

    :cond_3
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_WAIT_IF_IN_RECRUITMENT_AND_REGIMENTS_BELOW:I

    if-ge v3, v4, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v4, :cond_4

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isRecruitArmyInProgress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_4
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v3, :cond_a

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-eqz v3, :cond_5

    goto/16 :goto_1

    :cond_5
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v3, :cond_b

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->shouldMergeArmy(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;->isArmyMerging(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesToMerge:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_ARMY_MORALE_BELOW:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_CIV_MANPOWER_OVER:I

    int-to-double v5, v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_8

    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    int-to-float v3, v3

    iget v4, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_ARMY_MANPOWER_BELOW:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    iget v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_DEFEND_IF_NUM_OF_REGIMENTS_BELOW:I

    if-ge v3, v4, :cond_9

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesLowMoraleManpower:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    :goto_1
    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v3, :cond_b

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->armiesInMove:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public static selectBestProvince(I)I
    .locals 9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const v1, -0x368bdc10    # -999999.0f

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ARMY_CHOOSE_BEST_PROVINCE_CHANCE:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-lez p0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move v3, p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MOVE_ARMY_BEST_PROVINCES_LIMIT:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_7

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move v6, v3

    :goto_3
    if-lez v5, :cond_5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    move v6, v5

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_5
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    cmpl-float v5, v5, v1

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iput v1, v5, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    return p0

    :cond_8
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static selectBestProvince(II)I
    .locals 14

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v1

    if-gtz v1, :cond_a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v0

    const/4 v2, 0x0

    move v6, p1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v3, v7, :cond_8

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v9

    if-ne v9, v0, :cond_2

    :goto_1
    move v9, v10

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v11

    if-ne v9, v11, :cond_2

    goto :goto_1

    :cond_2
    move v9, v2

    :goto_2
    if-eqz v9, :cond_7

    add-int/lit8 v4, v4, 0x1

    move v9, v2

    move v11, v9

    :goto_3
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v12

    if-ge v9, v12, :cond_6

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    if-eqz v1, :cond_3

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v12

    if-ne v12, v0, :cond_4

    :goto_4
    move v12, v10

    goto :goto_5

    :cond_3
    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v12

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v13

    if-ne v12, v13, :cond_4

    goto :goto_4

    :cond_4
    move v12, v2

    :goto_5
    if-eqz v12, :cond_5

    add-int/lit8 v11, v11, 0x1

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    if-le v11, v5, :cond_7

    move v6, v7

    move v5, v11

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-lt v4, v5, :cond_9

    return p1

    :cond_9
    return v6

    :cond_a
    :goto_6
    return p1
.end method

.method public static selectBestProvince_Defend(I)I
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    iget v3, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    mul-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getManhattanDistance_PercOfMax(II)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    iput v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    const v0, -0x368bdc10    # -999999.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_1
    if-lez p0, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    move v0, p0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_2
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvincesDefend:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static selectBestProvince_Random(I)I
    .locals 2

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->possibleProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static shouldMergeArmy(Laoc/kingdoms/lukasz/map/civilization/Civilization;Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Z
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRegimentSize()I

    move-result p0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MERGE_ALL_ARMIES_WITH_REGIMENTS_BELOW:I

    mul-int/lit8 v0, v0, 0x2

    if-lt p0, v0, :cond_0

    iget p0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_MERGE_ALL_ARMIES_WITH_REGIMENTS_BELOW:I

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static updateMinWarscore(Laoc/kingdoms/lukasz/map/civilization/Civilization;IZ)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iWarsSize:I

    if-ge v1, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lWars:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    if-eqz v2, :cond_1

    sget v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->warScore:F

    iget v4, v2, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    float-to-int v4, v4

    neg-int v4, v4

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/war/War;->getWarScore_Side(I)I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveAtWar;->warScore:F

    if-nez p2, :cond_1

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    if-le v3, v2, :cond_1

    goto :goto_1

    :cond_0
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, v2, :cond_1

    :goto_1
    move p2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return p2
.end method
