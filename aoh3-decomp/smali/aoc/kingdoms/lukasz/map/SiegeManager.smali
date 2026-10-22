.class public Laoc/kingdoms/lukasz/map/SiegeManager;
.super Ljava/lang/Object;
.source "SiegeManager.java"


# static fields
.field public static iProvincesSize:I

.field public static lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static progressBar:Lcom/badlogic/gdx/graphics/Color;

.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e70f0f1

    const v2, 0x3e20a0a1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f169697

    const v4, 0x3f57d7d8

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addProvinceSiege(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v0, v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    return-void
.end method

.method public static buildProvinceUnderSiege_Load()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    return-void
.end method

.method public static final checkForSiege(I)V
    .locals 9

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v4, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v4, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_MIN_MORALE:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v0, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_REGIMENTS_MIN:I

    if-lt v0, v4, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege(IZ)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setSiegeProgress(F)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/SiegeManager;->addProvinceSiege(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SiegeStart;->siegeStarted_Attacker(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SiegeStart;->siegeStarted_Defend(I)V

    return-void

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v4, v5, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->retakeOccupiedProvince_Peace()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/SiegeManager;->addProvinceSiege(I)V

    goto/16 :goto_2

    :cond_4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v2, v4, :cond_8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v4, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v4, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_MIN_MORALE:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v0, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_REGIMENTS_MIN:I

    if-lt v0, v4, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege(IZ)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setSiegeProgress(F)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/SiegeManager;->addProvinceSiege(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SiegeStart;->siegeStarted_Attacker(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SiegeStart;->siegeStarted_Defend(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v8, Laoc/kingdoms/lukasz/map/SiegeManager$1;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SIEGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "UnderSiege"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v1, v8

    move v7, p0

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/map/SiegeManager$1;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/SiegeManager;->addProvinceSiege(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public static clearData()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sput v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    return-void
.end method

.method public static draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/SiegeManager;->drawSieges(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/SiegeManager;->drawSieges(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_MIN_SCALE_ANIMATION:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/SiegeManager;->drawSieges(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final drawProvinceArmyFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .locals 8

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v4, v1, 0x2

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 p1, p1, 0x3

    add-int/lit8 p2, p2, 0x2

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p3

    invoke-virtual {p3, p0, p1, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method private static final drawSiege(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V
    .locals 12

    :try_start_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosX(I)I

    move-result v0

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosY(I)I

    move-result v1

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    sub-int v7, v1, v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v5, p0, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sub-int/2addr v1, v5

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v5, v6, v7, v8, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    add-int v8, v0, v2

    add-int v9, v1, v4

    invoke-virtual {v5, p0, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    if-ne v2, p2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v2, v4, v5, v6, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Laoc/kingdoms/lukasz/map/SiegeManager;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v2, v4, v5, v6, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getSiegeProgress()F

    move-result p2

    mul-float/2addr v2, p2

    float-to-int v10, v2

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p2, v3, v3, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private static final drawSieges(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 2

    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, p1, v1}, Laoc/kingdoms/lukasz/map/SiegeManager;->drawSiege(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, p1, v1}, Laoc/kingdoms/lukasz/map/SiegeManager;->drawSiege(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catch_0
    :cond_3
    return-void
.end method

.method public static final getArmyPosX(I)I
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static final getArmyPosY(I)I
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    add-int/2addr p0, v0

    int-to-float p0, p0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    mul-float/2addr p0, v0

    const/high16 v0, 0x40800000    # 4.0f

    sub-float/2addr p0, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static final getDailySiegeProgress(I)F
    .locals 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getSiegeProgressPerDay()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getSiegeProgressPerDay()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget p0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_MAX_PROGRESS:F

    invoke-static {p0, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static final getHeight()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public static getSiegeDaysLeft(I)I
    .locals 4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortDefense()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/SiegeManager;->getDailySiegeProgress(I)F

    move-result p0

    float-to-double v2, p0

    div-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static final getWidth()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public static final isProvinceUnderSiege(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isStillUnderSiege(I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return v0
.end method

.method public static final removeProvinceSiege(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object p0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final updateSieges()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget v2, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v1, v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->isStillUnderSiege(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v4

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getDailySiegeProgress(I)F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getFortDefense()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setSiegeProgress(F)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getFortDefense()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->retakeOccupiedProvince()V

    goto :goto_1

    :cond_0
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->occupyProvince()V

    :goto_1
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/SiegeManager;->removeProvinceSiege(I)V

    goto :goto_2

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v3, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege_Just(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method
