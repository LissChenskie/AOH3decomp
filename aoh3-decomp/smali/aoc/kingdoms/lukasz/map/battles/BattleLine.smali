.class public Laoc/kingdoms/lukasz/map/battles/BattleLine;
.super Ljava/lang/Object;
.source "BattleLine.java"


# instance fields
.field public armyDivisionsKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public armyExtraPosX:I

.field public armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

.field public defeated:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public diceRollGeneral:I

.field public fMorale:F

.field public firstLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public iCasualties:I

.field public iCivID:I

.field public iLastAttackRoundID:I

.field public iRetreated:I

.field public inReserve:I

.field public lCasualties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lDefeatedArmyDivisionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public numOfUnits:I

.field public numOfUnitsOnBattlefield:I

.field public reserveFirstLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public reserveSecondLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public secondLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public textW:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IILjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    const/4 v4, 0x0

    iput v4, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    const/4 v4, 0x0

    iput-object v4, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    move v5, v3

    :goto_0
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v5, v6, :cond_0

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    move v8, v3

    :goto_1
    const/4 v9, 0x1

    if-ge v8, v7, :cond_5

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    move-object/from16 v11, p4

    invoke-virtual {v0, v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCiv(ILjava/lang/String;)V

    move v10, v3

    :goto_2
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v10, v12, :cond_4

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v12, :cond_3

    iget v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v12, v13

    iput v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    sget-object v12, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-eqz v12, :cond_2

    if-eq v12, v9, :cond_1

    new-instance v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v12, v13, v14, v15}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    new-instance v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v12, v13, v14, v15}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    new-instance v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v12, v13, v14, v15}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v12, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    new-instance v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v14, v14, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v13, v14, v15, v9}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_5
    int-to-float v1, v2

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_SIDES_RATIO:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    sub-int v1, v2, v1

    move/from16 v7, p3

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v7, v3

    :cond_6
    :goto_4
    if-ge v7, v2, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_b

    :cond_7
    if-lt v7, v1, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    move v8, v3

    :goto_5
    if-nez v8, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_9

    iget-object v8, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v10, v7, 0x1

    aget v7, v9, v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v8, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_a

    iget-object v8, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v10, v7, 0x1

    aget v7, v9, v7

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v8, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_6
    move v7, v10

    goto :goto_4

    :cond_a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    iget-object v8, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v10, v7, 0x1

    aget v7, v9, v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v8, v7, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    move v1, v3

    :cond_c
    :goto_7
    if-ge v1, v2, :cond_e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_c

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v8, v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_d

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v8, v8, v1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    iget-object v7, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v8, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v9, v1, 0x1

    aget v1, v8, v1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v7, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v9

    :goto_8
    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    :goto_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_10
    :goto_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b

    :cond_11
    move v1, v3

    const/4 v9, 0x1

    :goto_c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_13

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v4, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v4, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v4, v9, 0x1

    iput v9, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v6, v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v2, v5

    iput v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    move v9, v4

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    move v1, v3

    :goto_d
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_15

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v4, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v4, v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v4, v9, 0x1

    iput v9, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v6, v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v2, v5

    iput v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    move v9, v4

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_15
    iput v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_e
    if-ge v2, v1, :cond_16

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v5, v9, 0x1

    iput v9, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    iget v4, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v4, v6

    iput v4, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    add-int/lit8 v2, v2, 0x1

    move v9, v5

    goto :goto_e

    :cond_16
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_f
    if-ge v3, v1, :cond_17

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v4, v9, 0x1

    iput v9, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v2, v5

    iput v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    add-int/lit8 v3, v3, 0x1

    move v9, v4

    goto :goto_f

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/16 v3, 0xa

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->setText(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAverageMoraleOnBattleField()V

    return-void
.end method

.method private final getAttackCasualties(IIFFI)I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_CASUALTIES:I

    add-int/2addr v0, p2

    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    add-int/2addr v0, p2

    int-to-float p2, v0

    mul-float/2addr p3, p4

    int-to-float p1, p1

    const/high16 p4, 0x42480000    # 50.0f

    div-float/2addr p1, p4

    const/high16 p4, 0x3f800000    # 1.0f

    add-float/2addr p1, p4

    invoke-static {p5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p4

    iget-object p4, p4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget p4, p4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    add-float/2addr p1, p4

    mul-float/2addr p3, p1

    mul-float/2addr p2, p3

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method


# virtual methods
.method public final addArmyDivisionKey(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addCasualties(II)V
    .locals 2

    if-lez p2, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addCiv(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addInBattles(Ljava/lang/String;)V

    return-void
.end method

.method public final addDefeatedArmyDivisionKey(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final buildArmyDivisionsKeys()V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addDefeatedArmyDivisionKey(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addDefeatedArmyDivisionKey(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addDefeatedArmyDivisionKey(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addDefeatedArmyDivisionKey(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_6

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addDefeatedArmyDivisionKey(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final buildCasualties()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCasualties(II)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCasualties(II)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCasualties(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_6

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCasualties(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_6
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_7

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCasualties(II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public getBattleArmiesKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_5

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_7

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_9

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_9
    return-object v0
.end method

.method public getCivsRegimentsLimit()I
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isInBattleArmy(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_5

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_7

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_4
    if-ltz v0, :cond_9

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_8

    return v1

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public isInBattleCiv(I)Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

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

.method public final joinBattle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;ILjava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v2, p3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addCiv(ILjava/lang/String;)V

    const/4 p3, 0x1

    iput-boolean p3, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    iget-boolean v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v2, :cond_1

    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-boolean v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->updateMoveInBattle(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-boolean v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMoveInBattle(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v2, :cond_2

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_2

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    :cond_2
    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_3

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_JOIN_BATTLE:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->addCombatExperience(I)V

    :cond_3
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v3, v4, :cond_5

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v5, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v4, v5

    iput v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v5, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-eqz v4, :cond_4

    if-eq v4, p3, :cond_4

    new-instance v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v5, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget-object v6, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v7, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v5, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget-object v6, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v7, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v3, p3, 0x1

    iput p3, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget p3, p3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr p1, p3

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p3, v3

    goto :goto_3

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    add-int/lit8 v0, p3, 0x1

    iput p3, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget p3, p3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr p1, p3

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move p3, v0

    goto :goto_4

    :cond_7
    move p1, v2

    :goto_5
    if-ge p1, p2, :cond_9

    :try_start_0
    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_9

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v0, v0, p1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_8

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v0, v0, p1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {p3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr p3, v0

    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr p3, v0

    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_9
    move p1, v2

    :goto_6
    if-ge p1, p2, :cond_b

    :try_start_1
    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_b

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v0, v0, p1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_a

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v0, v0, p1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {p3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr p3, v0

    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr p3, v0

    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_8

    :cond_b
    move p1, v2

    :goto_7
    if-ge p1, p2, :cond_d

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_d

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v0, v0, p1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_c

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v0, v0, p1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {p3, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr p3, v0

    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr p3, v0

    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :goto_8
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    int-to-float p2, p2

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    const/16 p3, 0xa

    invoke-static {p2, p3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public removeCivsInBattle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeInBattles(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->text:Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "999"

    :goto_0
    invoke-virtual {v0, v2, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    div-int/2addr p1, v4

    div-int/2addr v1, v4

    sub-int/2addr p1, v1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyExtraPosX:I

    return-void
.end method

.method public updateAllArmiesNotInBattle(I)V
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getBattleArmiesKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateAttack(Laoc/kingdoms/lukasz/map/battles/BattleLine;II)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput v0, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v1, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    move v8, v0

    :goto_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v9, 0x1

    if-ge v8, v2, :cond_8

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-float v3, v3

    div-float v5, v2, v3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v2, :cond_4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-float v6, v2, v3

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    move-object v2, p0

    move v3, p2

    move v4, v1

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v2

    add-int/2addr v10, v2

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    goto/16 :goto_4

    :cond_4
    move v2, v9

    :goto_3
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    add-int/2addr v3, v9

    if-ge v2, v3, :cond_7

    add-int v3, v8, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v4, :cond_5

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-float v6, v2, v3

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    move-object v2, p0

    move v3, p2

    move v4, v1

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v2

    add-int/2addr v10, v2

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    goto/16 :goto_4

    :cond_5
    sub-int v3, v8, v2

    if-ltz v3, :cond_6

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v4, :cond_6

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v10, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-float v6, v2, v3

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    move-object v2, p0

    move v3, p2

    move v4, v1

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v2

    add-int/2addr v10, v2

    iput v10, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_8
    :goto_5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v2, :cond_d

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_c

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-float v3, v3

    div-float v5, v2, v3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v2, :cond_9

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v10, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-float v6, v2, v3

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    move-object v2, p0

    move v3, p2

    move v4, v1

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v2

    add-int/2addr v10, v2

    iput v10, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    goto/16 :goto_7

    :cond_9
    move v2, v9

    :goto_6
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    add-int/2addr v3, v9

    if-ge v2, v3, :cond_c

    add-int v3, v0, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v3, v4, :cond_a

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v4, :cond_a

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v10, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-float v6, v2, v3

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    move-object v2, p0

    move v3, p2

    move v4, v1

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v2

    add-int/2addr v10, v2

    iput v10, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    goto/16 :goto_7

    :cond_a
    sub-int v3, v0, v2

    if-ltz v3, :cond_b

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v4, :cond_b

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v10, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v3

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-float v6, v2, v3

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v7, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    move-object v2, p0

    move v3, p2

    move v4, v1

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getAttackCasualties(IIFFI)I

    move-result v2

    add-int/2addr v10, v2

    iput v10, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    goto :goto_7

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_c
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_d
    return-void
.end method

.method public final updateAverageMoraleOnBattleField()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    add-float/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    add-float/2addr v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    int-to-float v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    return-void
.end method

.method public final updateBattle_Summary(IZIZ)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    add-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    if-lez v2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-virtual {v2, v3, v4, v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmy_AfterBattle(Ljava/lang/String;Ljava/lang/String;IF)V

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    add-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    if-lez v2, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-virtual {v2, v3, v4, v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmy_AfterBattle(Ljava/lang/String;Ljava/lang/String;IF)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    iput v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    if-lez v3, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-virtual {v3, v4, v5, v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmy_AfterBattle(Ljava/lang/String;Ljava/lang/String;IF)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_6

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addArmyDivisionKey(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :try_start_3
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_3
    if-ge v2, v1, :cond_8

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addArmyDivisionKey(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_8
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_4
    if-ge v2, v1, :cond_9

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addArmyDivisionKey(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_a

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addArmyDivisionKey(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_b

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aK:Ljava/lang/String;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->addArmyDivisionKey(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7
    if-ltz v1, :cond_c

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmy_BattleSummary(Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_c
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyDivisionsKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_8
    if-nez p2, :cond_d

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v1, :cond_d

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_BATTLE_WON_LIMIT:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_BATTLE_WON_LIMIT_PER_DAY_OF_BATTLE:I

    add-int/lit8 v4, p3, 0x1

    mul-int/2addr v3, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_BATTLE_WON_EXPERIENCE_PER_DAY_OF_BATTLE:I

    mul-int/2addr v5, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_BATTLE_WON_MIN:I

    add-int/2addr v5, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_BATTLE_WON_MIN_RANDOM:I

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->addCombatExperience(I)V

    :cond_d
    if-eqz p2, :cond_11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->buildArmyDivisionsKeys()V

    if-eqz p4, :cond_e

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_ARMY_DESTROYED_ROUND_ID:I

    if-ge p3, p2, :cond_e

    :goto_9
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_11

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->armyDestroyed(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    move p2, v0

    :goto_a
    iget-object p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_11

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p3

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p3

    if-eqz p3, :cond_f

    iget p4, p3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    div-int/2addr p4, v1

    iget p3, p3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    mul-int/2addr p4, p3

    int-to-float p3, p4

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget p4, p4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_ARMY_DESTROYED_IF_MANPOWER_PERC_BELOW:F

    cmpg-float p3, p3, p4

    if-gez p3, :cond_f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p3

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Laoc/kingdoms/lukasz/map/province/Province;->armyDestroyed(Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p3

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4, p2}, Laoc/kingdoms/lukasz/map/province/Province;->armyRetreat(Ljava/lang/String;I)I

    move-result p3

    if-gez p3, :cond_10

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p3

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lDefeatedArmyDivisionKeys:Ljava/util/List;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p4}, Laoc/kingdoms/lukasz/map/province/Province;->armyDestroyed(Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    move p2, p3

    :goto_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    return-void
.end method

.method public final updateCasualties()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sub-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public final updateDefeated()V
    .locals 15

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-gtz v3, :cond_8

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    if-nez v3, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v6, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    :cond_0
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    move v3, v0

    :goto_1
    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    sget-object v7, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ge v7, v4, :cond_2

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v7, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v7, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v6, v0

    :goto_2
    if-eqz v6, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sub-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/2addr v3, v4

    if-ge v1, v3, :cond_7

    if-lez v1, :cond_8

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v4, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v1, 0x1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v5, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    if-lez v2, :cond_d

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_d

    move v3, v0

    :goto_6
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v3, v7, :cond_c

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-gtz v7, :cond_b

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/2addr v7, v4

    if-ge v3, v7, :cond_a

    if-lez v3, :cond_b

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v8, v3, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v8, v9, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    add-int/lit8 v7, v3, 0x1

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v7, v8, :cond_b

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v9, v3, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    move v1, v0

    :goto_8
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v3, :cond_f

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    if-lez v3, :cond_f

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sub-int/2addr v1, v6

    :goto_9
    if-ltz v1, :cond_11

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-byte v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->f:B

    if-lez v3, :cond_11

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_11
    if-lez v2, :cond_1f

    move v1, v0

    :goto_a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    goto :goto_b

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_13
    move v1, v3

    :goto_b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sub-int/2addr v2, v6

    :goto_c
    if-ltz v2, :cond_15

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_14

    goto :goto_d

    :cond_14
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_15
    move v2, v3

    :goto_d
    const/high16 v7, 0x40000000    # 2.0f

    const-wide/16 v8, 0x0

    if-ltz v1, :cond_18

    if-ltz v2, :cond_18

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v12, v0

    move v11, v1

    :goto_e
    if-gt v11, v2, :cond_17

    iget-object v13, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_16

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_16
    iget-object v13, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v13, v11, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_17
    :try_start_1
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/2addr v11, v4

    int-to-double v13, v11

    sub-int/2addr v2, v12

    sub-int v11, v2, v1

    int-to-float v11, v11

    div-float/2addr v11, v7

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    sub-double/2addr v13, v11

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    double-to-int v11, v11

    move v12, v0

    :goto_10
    if-gt v1, v2, :cond_18

    iget-object v13, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v13, v11, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :catch_0
    :cond_18
    move v1, v0

    :goto_11
    :try_start_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_1a

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_19

    goto :goto_12

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1a
    move v1, v3

    :goto_12
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sub-int/2addr v2, v6

    :goto_13
    if-ltz v2, :cond_1c

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1b

    move v3, v2

    goto :goto_14

    :cond_1b
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_1c
    :goto_14
    if-ltz v1, :cond_1f

    if-ltz v3, :cond_1f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v10, v0

    move v6, v1

    :goto_15
    if-gt v6, v3, :cond_1e

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1d

    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    :cond_1d
    iget-object v11, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v11, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v11, v6, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_1e
    :try_start_3
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/2addr v5, v4

    int-to-double v4, v5

    sub-int/2addr v3, v10

    sub-int v6, v3, v1

    int-to-float v6, v6

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_17
    if-gt v1, v3, :cond_1f

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :catch_2
    :cond_1f
    return-void
.end method

.method public final updateDiceRoll()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_DICE_ROLL:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_DICE_ROLL_REGIMENT:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->d:I

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_DICE_ROLL_REGIMENT:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->d:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateInBattle_Load(I)V
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getBattleArmiesKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateLoaded_Load()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v1, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v1, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_5

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v1, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_7

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v1, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_4
    if-ltz v0, :cond_9

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iput-byte v1, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->l:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public final updateMoraleAndRetreat()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    if-lez v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    if-lez v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MORALE_LOSS_MULTIPLIER:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    const v2, 0x3f75c28f    # 0.96f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_FULL_RETREAT_IF_MORALE_BELOW:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->cL:I

    int-to-float v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float/2addr v2, v5

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    if-lez v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rL:I

    sub-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAverageMoraleOnBattleField()V

    return-void
.end method

.method public final updateMoraleEndOfBattle(F)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_6

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final updateNumOfUnits()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method
