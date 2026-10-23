.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Battlefield.java"


# static fields
.field public static armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

.field public static boxH:I

.field public static firstLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public static secondLineReg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/BattleRegiment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->secondLineReg:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 39

    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->secondLineReg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    mul-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v18, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v18, 0x2

    sub-int v19, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v0, 0x2

    sub-int v20, v1, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v21, v0, 0x2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x0

    move v1, v13

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->secondLineReg:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v1, v13

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v9, 0x1

    if-ge v1, v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-eqz v2, :cond_2

    if-eq v2, v9, :cond_1

    new-instance v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;-><init>(ILaoc/kingdoms/lukasz/map/army/ArmyRegiment;Ljava/lang/String;)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/Battle;->getArmyInFirstLine(Ljava/util/List;)I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->clear()V

    int-to-float v1, v8

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_SIDES_RATIO:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int v1, v8, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v13

    :cond_4
    :goto_3
    if-ge v2, v8, :cond_9

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    :cond_5
    if-lt v2, v1, :cond_6

    move v3, v9

    goto :goto_4

    :cond_6
    move v3, v13

    :goto_4
    if-nez v3, :cond_7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_5
    move v2, v5

    goto :goto_3

    :cond_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    move v1, v13

    :cond_a
    :goto_6
    if-ge v1, v8, :cond_c

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    aget v3, v3, v1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->secondLineReg:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v3, v1

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    :goto_7
    invoke-interface {v10, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$1;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ArmyDeployment"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v1, 0x4

    const/4 v5, 0x0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v16, v1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "BattleWidth"

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ": "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v24, v6

    move/from16 v6, v23

    move-object v13, v7

    move/from16 v7, v18

    move/from16 v25, v8

    move/from16 v8, v16

    move-object/from16 v26, v9

    const/4 v15, 0x1

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    const/4 v13, 0x0

    add-int/2addr v1, v13

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v22, v1, v2

    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    div-int/lit8 v23, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    add-int v27, v21, v1

    :try_start_1
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-nez v1, :cond_d

    :try_start_2
    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$2;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v2, 0x0

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/model/ia/uNBYrZVGzy;->NIbHHNTMgkuBd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    add-int/lit8 v5, v27, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v8, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v6, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v16, v6

    move/from16 v6, v22

    move-object v13, v9

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;Ljava/lang/String;IIILjava/lang/String;II)V

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v36, v0

    move-object/from16 v35, v10

    move-object/from16 v34, v11

    move-object/from16 v33, v12

    move-object v12, v14

    const/16 v28, 0x0

    goto/16 :goto_8

    :cond_d
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$3;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v4, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v5

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v6

    add-int/lit8 v7, v27, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v9, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v8, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    sget-object v15, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    move/from16 v28, v1

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    move/from16 v29, v1

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    move/from16 v30, v1

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    move-object/from16 v31, v1

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getCombatExperience()I

    move-result v32
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v13

    move/from16 v33, v2

    move-object/from16 v2, p0

    move/from16 v34, v8

    move/from16 v8, v22

    move-object/from16 v35, v10

    move/from16 v10, v34

    move-object/from16 v34, v11

    move/from16 v11, v33

    move-object/from16 v33, v12

    move/from16 v12, v28

    move/from16 v36, v0

    move-object v0, v13

    const/16 v28, 0x0

    move-object v13, v15

    move-object v15, v14

    move/from16 v14, v29

    move-object/from16 v37, v15

    move/from16 v15, v30

    move-object/from16 v16, v31

    move/from16 v17, v32

    :try_start_4
    invoke-direct/range {v1 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;Ljava/lang/String;IIIIIIIIILjava/lang/String;IILjava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v12, v37

    :try_start_5
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    :try_start_6
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v27, v27, v0

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_e

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$4;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pin:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->isPinned(Ljava/lang/String;)Z

    move-result v6

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v4, v27

    move/from16 v5, v22

    move/from16 v8, v23

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;IIIZLjava/lang/String;I)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$5;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->center:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v1, v22, v1

    add-int v5, v1, v23

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->isPinned(Ljava/lang/String;)Z

    move-result v6

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v4, v27

    move/from16 v8, v23

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;IIIZLjava/lang/String;I)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v27, v27, v0

    :cond_e
    move/from16 v0, v28

    :goto_9
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v0, v1, :cond_10

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/lit8 v2, v0, 0x1

    move v4, v13

    :goto_a
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v2, v3, :cond_f

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v3, v5, :cond_f

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v3, v5, :cond_f

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_f
    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$6;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v24

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v5, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    add-int/lit8 v6, v27, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    const/4 v10, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move/from16 v7, v22

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v27, v27, v1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v24, v14

    goto/16 :goto_9

    :cond_10
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    add-int/2addr v0, v1

    add-int v22, v0, v36

    move/from16 v27, v21

    goto :goto_e

    :catch_0
    move-exception v0

    goto :goto_d

    :catch_1
    move-exception v0

    :goto_b
    const/4 v13, 0x1

    goto :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v12, v37

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v34, v11

    move-object/from16 v33, v12

    move-object v12, v14

    const/4 v13, 0x1

    goto :goto_c

    :catch_4
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v34, v11

    move-object/from16 v33, v12

    move-object v12, v14

    move v13, v15

    :goto_c
    const/16 v28, 0x0

    goto :goto_d

    :catch_5
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v34, v11

    move-object/from16 v33, v12

    move/from16 v28, v13

    move-object v12, v14

    move v13, v15

    goto :goto_d

    :catch_6
    move-exception v0

    move-object/from16 v35, v10

    move-object/from16 v34, v11

    move-object/from16 v33, v12

    move/from16 v28, v13

    move-object v12, v14

    move v13, v15

    move/from16 v27, v21

    :goto_d
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_e
    sput v22, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->boxH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v22, v22, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Enemies"

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v11, v26

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "SecondLine"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v5, -0x1

    mul-int/lit8 v1, v21, 0x2

    sub-int v14, v18, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v9, v1, v2

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v6, v21

    move/from16 v7, v22

    move v8, v14

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;Ljava/lang/String;IIIIII)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v22, v22, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$8;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "FirstLine"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v9, v1, v2

    move-object v1, v0

    move-object/from16 v2, p0

    move/from16 v7, v22

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;Ljava/lang/String;IIIIII)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v22, v22, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v22, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v8, v25, 0x2

    sub-int v14, v1, v8

    move/from16 v11, v27

    move/from16 v15, v28

    :goto_f
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_13

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    if-lt v15, v14, :cond_11

    add-int v8, v14, v25

    if-ge v15, v8, :cond_11

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$9;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    move-object/from16 v10, p0

    invoke-direct {v1, v10, v2, v11, v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;III)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_11
    move-object/from16 v10, p0

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$10;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    invoke-direct {v1, v10, v2, v11, v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;III)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    move/from16 v27, v11

    goto :goto_11

    :cond_12
    move-object/from16 v10, p0

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$11;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v4

    const/4 v8, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move v5, v11

    move v6, v0

    move/from16 v22, v7

    move v7, v15

    move-object v13, v9

    move/from16 v9, v22

    move/from16 v10, v16

    move/from16 v27, v11

    move/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;IIIIIIIZZ)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int v11, v27, v1

    add-int/lit8 v15, v15, 0x1

    move v13, v2

    goto/16 :goto_f

    :cond_13
    move v2, v13

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v15, v21

    move/from16 v13, v28

    :goto_12
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->secondLineReg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v13, v1, :cond_16

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->secondLineReg:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    if-lt v13, v14, :cond_14

    add-int v8, v14, v25

    if-ge v13, v8, :cond_14

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$12;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    move-object/from16 v11, p0

    invoke-direct {v1, v11, v2, v15, v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;III)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13

    :cond_14
    move-object/from16 v11, p0

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$13;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    invoke-direct {v1, v11, v2, v15, v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;III)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_15
    move-object/from16 v11, p0

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$14;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->secondLineReg:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v4

    const/4 v8, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->secondLineReg:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->secondLineReg:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v9, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v1, v10

    move-object/from16 v2, p0

    move v5, v15

    move v6, v0

    move v7, v13

    move-object/from16 v38, v10

    move/from16 v10, v16

    move/from16 v11, v17

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;IIIIIIIZZ)V

    move-object/from16 v1, v38

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v15, v1

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_12

    :cond_16
    const/4 v2, 0x1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->clear()V

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->clear()V

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v1, v28

    move v13, v1

    :goto_14
    if-ge v13, v0, :cond_18

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_17

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    :cond_18
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v20

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$15;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v5, v18

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;IIII)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V

    const/4 v2, 0x0

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v19

    move/from16 v4, v20

    move v6, v0

    move-object v7, v12

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->boxH:I

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->boxH:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->boxH:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public getHover(Laoc/kingdoms/lukasz/map/battles/BattleRegiment;)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    iget v3, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->rn:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/RomanNumber;->getRoman(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Regiment"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Army;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    iget-object v6, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    iget v7, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-direct {v2, v3, v4, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Army;-><init>(Ljava/lang/String;III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "AttackRange"

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v7, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "SiegeAbility"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v5, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeProgress:F

    const/16 v4, 0x64

    invoke-static {p1, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, p1, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x0

    invoke-direct {p1, v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {p1, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {p1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-object p1
.end method
