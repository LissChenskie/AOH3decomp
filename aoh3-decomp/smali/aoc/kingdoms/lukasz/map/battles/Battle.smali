.class public Laoc/kingdoms/lukasz/map/battles/Battle;
.super Ljava/lang/Object;
.source "Battle.java"


# instance fields
.field public attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

.field public battleWidth:I

.field public defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

.field public iMaxBattleWidth:I

.field public key:Ljava/lang/String;

.field public posX:I

.field public posY:I

.field public provinceID:I

.field public roundID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-virtual {p0, p2, p3}, Laoc/kingdoms/lukasz/map/battles/Battle;->deployArmies(Ljava/util/List;Ljava/util/List;)V

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

    if-gez p3, :cond_0

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0x2

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

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v2, p1, 0x3

    add-int/lit8 v3, p2, 0x2

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

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_0
    sget p3, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p3

    add-int/lit8 p1, p1, 0x3

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p3, p0, p1, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public static getArmyInFirstLine(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    move v4, v1

    :goto_1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v4, v5, :cond_1

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
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

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    sub-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getDefendersProvinceBonuses(I)I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v0, v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Defense:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DefenseBonus:I

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final deployArmies(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_BATTLE_WIDTH:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->updateMoveInBattle(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMoveInBattle(Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz v3, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v3, :cond_3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v3, v5, v6}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->updateMoveInBattle(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {v3, v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMoveInBattle(Ljava/lang/String;Z)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/Battle;->getArmyInFirstLine(Ljava/util/List;)I

    move-result v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/battles/Battle;->getArmyInFirstLine(Ljava/util/List;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-direct {v3, p1, v0, v2, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;-><init>(Ljava/util/List;IILjava/lang/String;)V

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    new-instance v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-direct {v3, p2, v0, v2, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;-><init>(Ljava/util/List;IILjava/lang/String;)V

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v0, :cond_7

    move v0, v1

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_6

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v0, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    :cond_8
    :goto_5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v0, :cond_a

    move v0, v1

    :goto_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_9

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v0, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    :cond_b
    :goto_7
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    move v0, v1

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_c

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_JOIN_BATTLE:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->addCombatExperience(I)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_f

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz p1, :cond_e

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_JOIN_BATTLE:I

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->addCombatExperience(I)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method public final drawBattle_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/Battle;->getBattleWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/Battle;->getArmyPosX(I)I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/Battle;->getArmyPosY(I)I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBattlesInProvince:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBattlesInProvince:I

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    invoke-static {p1, v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceArmyHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    invoke-virtual {p0, p1, p2, v0, v1}, Laoc/kingdoms/lukasz/map/battles/Battle;->drawBattle_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V

    :cond_1
    return-void
.end method

.method public final drawBattle_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .locals 14

    move-object v0, p0

    move-object v9, p1

    move/from16 v10, p2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    const/4 v6, 0x0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/battles/Battle;->drawProvinceArmyFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v11, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v12, p3, v11

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/lit8 v2, v2, 0xa

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v5, v2, v3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move v3, v12

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_ARMY:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->text:Ljava/lang/String;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyExtraPosX:I

    add-int/2addr v12, v1

    add-int/lit8 v4, v12, 0x5

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    float-to-int v1, v1

    add-int v1, p4, v1

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    float-to-int v5, v5

    sub-int v5, v1, v5

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v13, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v13, v13, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v13, v10

    invoke-direct {v6, v1, v7, v8, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/lit8 v1, v1, 0xa

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyEnemy:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v3, p3, v11

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/lit8 v2, v2, 0xa

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v5, v2, v4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move/from16 v4, p4

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v11, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_ARMY:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->text:Ljava/lang/String;

    add-int v1, p3, v11

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyExtraPosX:I

    add-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x5

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v12

    float-to-int v1, v1

    add-int v1, p4, v1

    sget v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->ARMY_HEIGHT:I

    int-to-float v5, v5

    div-float/2addr v5, v12

    float-to-int v5, v5

    sub-int v5, v1, v5

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v12, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->COLOR_ARMY:Lcom/badlogic/gdx/graphics/Color;

    iget v12, v12, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v12, v10

    invoke-direct {v6, v1, v7, v8, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v11, v1

    add-int v2, p3, v11

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->armyLeft:I

    const/4 v6, 0x1

    move-object v1, p1

    move/from16 v3, p4

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/battles/Battle;->drawProvinceArmyFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget v1, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v2, p3, v2

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, p4, v3

    sget v4, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final endOfBattle()Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    if-lez v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final endOfBattle_NoAttacks()Z
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    sub-int/2addr v0, v1

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iLastAttackRoundID:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getBattleWidth()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->textW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public isInBattle(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleArmy(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleArmy(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final updateBattle()V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_DEPLOYMENT_PHASE_TURNS:I

    if-le v0, v2, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateDefeated()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateDefeated()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateDiceRoll()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateDiceRoll()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAttack(Laoc/kingdoms/lukasz/map/battles/BattleLine;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/Battle;->getDefendersProvinceBonuses(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAttack(Laoc/kingdoms/lukasz/map/battles/BattleLine;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateCasualties()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateCasualties()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleAndRetreat()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleAndRetreat()V

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/Battle;->updateNumOfUnits()V

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/Bhs/fiRhHJntP;->iUDhttMK:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    const/16 v5, 0xa

    invoke-static {v3, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final updateBattle_Summary(Z)V
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/Battle;->updateBattle_SummaryCasualties(Z)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    xor-int/lit8 v3, v0, 0x1

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    invoke-virtual {v1, v2, v3, v4, p1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateBattle_Summary(IZIZ)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    invoke-virtual {v1, v2, v0, v3, p1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateBattle_Summary(IZIZ)V

    iget p1, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    return-void
.end method

.method public final updateBattle_SummaryCasualties(Z)V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_0
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->buildCasualties()V

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->buildCasualties()V

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_0

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Laoc/kingdoms/lukasz/map/war/War;->addCasualties(II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_1

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCasualties:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Laoc/kingdoms/lukasz/map/war/War;->addCasualties(II)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    int-to-float v3, v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_WAR_SCORE_CASUALTIES:F

    mul-float/2addr v3, v5

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getCivsRegimentsLimit()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v3, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_WAR_SCORE_MAX:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v3, v6, v7}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd(FII)F

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget v5, v0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    add-float/2addr v5, v3

    iput v5, v0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    goto :goto_2

    :cond_2
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    neg-float v6, v3

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget v5, v0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    sub-float/2addr v5, v3

    iput v5, v0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    :goto_2
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_WAR_WEARINESS_BATTLE:F

    mul-float/2addr v5, v3

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_MORALE_VICTORIOUS_ARMY:F

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleEndOfBattle(F)V

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_MORALE_DEFEATED_ARMY:F

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleEndOfBattle(F)V

    goto/16 :goto_4

    :cond_3
    iget-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    int-to-float v3, v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_WAR_SCORE_CASUALTIES:F

    mul-float/2addr v3, v5

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->getCivsRegimentsLimit()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v3, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_WAR_SCORE_MAX:F

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v3, v6, v7}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd(FII)F

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget v5, v0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    add-float/2addr v5, v3

    iput v5, v0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    goto :goto_3

    :cond_4
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    neg-float v6, v3

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget v5, v0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    sub-float/2addr v5, v3

    iput v5, v0, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromBattles:F

    :goto_3
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_WAR_WEARINESS_BATTLE:F

    mul-float/2addr v5, v3

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_MORALE_DEFEATED_ARMY:F

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleEndOfBattle(F)V

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_MORALE_VICTORIOUS_ARMY:F

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateMoraleEndOfBattle(F)V

    :goto_4
    move v5, v3

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_5
    move v7, v4

    goto :goto_6

    :cond_6
    if-nez p1, :cond_7

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v7, v2

    :goto_6
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v4, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->BATTLE_REPORT:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_8

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "BattleWon"

    :goto_7
    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_8
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "BattleLost"

    goto :goto_7

    :goto_8
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->battle:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-eqz v7, :cond_9

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    goto :goto_9

    :cond_9
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    :goto_9
    move-object v13, v6

    iget v15, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    move-object v8, v4

    move-object v14, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;Ljava/lang/String;I)V

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v11, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    new-instance v9, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v10, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    add-int/2addr v10, v12

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    add-int/2addr v10, v12

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    iget-object v13, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    invoke-direct {v9, v6, v10, v12, v13}, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;-><init>(IIII)V

    new-instance v10, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    add-int/2addr v6, v12

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    add-int/2addr v6, v12

    iget-object v12, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    iget-object v13, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    invoke-direct {v10, v2, v6, v12, v13}, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;-><init>(IIII)V

    move-object v2, v11

    move/from16 v6, p1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/map/battles/BattleReport;-><init>(Ljava/lang/String;IFZZILaoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;)V

    invoke-virtual {v0, v11}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addBattleReport(Laoc/kingdoms/lukasz/map/battles/BattleReport;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_a
    :goto_a
    return-void
.end method

.method public final updateNumOfUnits()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateNumOfUnits()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateNumOfUnits()V

    return-void
.end method
