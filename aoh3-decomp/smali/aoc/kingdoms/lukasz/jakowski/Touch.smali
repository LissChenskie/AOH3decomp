.class public Laoc/kingdoms/lukasz/jakowski/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# static fields
.field public static final CAPITAL_FLAG_L:I = 0x4

.field public static final CAPITAL_FLAG_M:I = 0x1

.field public static buttonTouch:I

.field public static mousePosX:I

.field public static mousePosY:I

.field public static selectArmiesMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMousePosX()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Touch;->mousePosX:I

    return v0
.end method

.method public static final getMousePosY()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Touch;->mousePosY:I

    return v0
.end method

.method public static final isMouseOverArmy(IIII)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosX(II)I

    move-result v1

    invoke-static {p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyPosY(II)I

    move-result v2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result p2

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, v1, :cond_0

    add-int/2addr v1, p2

    if-gt p0, v1, :cond_0

    if-lt p1, v2, :cond_0

    add-int/2addr v2, p3

    if-gt p1, v2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static final isMouseOverBattle(III)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    if-lt p0, v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->posX:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->battleWidth:I

    add-int/2addr v1, v2

    if-gt p0, v1, :cond_0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    if-lt p1, p0, :cond_0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/battles/Battle;->posY:I

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->army:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p0, p2

    if-gt p1, p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static final isMouseOverCapitalProvince_Flag(III)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    if-eq v1, v3, :cond_5

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v1, p2, v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-virtual {v3, p2, v4}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result p2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_l:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    if-lt p0, v1, :cond_0

    add-int/2addr v1, v3

    if-gt p0, v1, :cond_0

    if-lt p1, p2, :cond_0

    add-int/2addr p2, v4

    if-gt p1, p2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    if-le v1, v2, :cond_3

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v1, p2, v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-virtual {v3, p2, v4}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result p2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    if-lt p0, v1, :cond_2

    add-int/2addr v1, v3

    if-gt p0, v1, :cond_2

    if-lt p1, p2, :cond_2

    add-int/2addr p2, v4

    if-gt p1, p2, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v1, p2, v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-virtual {v3, p2, v4}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result p2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagCapitalOver_s:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    if-lt p0, v1, :cond_4

    add-int/2addr v1, v3

    if-gt p0, v1, :cond_4

    if-lt p1, p2, :cond_4

    add-int/2addr p2, v4

    if-gt p1, p2, :cond_4

    move v0, v2

    :cond_4
    return v0

    :cond_5
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    invoke-virtual {v1, p2, v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosX(IF)I

    move-result v1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getDrawWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    invoke-virtual {v3, p2, v4}, Laoc/kingdoms/lukasz/map/map/City;->getDrawPosY(IF)I

    move-result p2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, v1, :cond_6

    add-int/2addr v1, v3

    if-gt p0, v1, :cond_6

    if-lt p1, p2, :cond_6

    add-int/2addr p2, v4

    if-gt p1, p2, :cond_6

    move v0, v2

    :catch_0
    :cond_6
    return v0
.end method

.method public static final isMouseOverShip(III)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posX:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->posY:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p2, v2

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt p0, v1, :cond_0

    add-int/2addr v1, v2

    if-gt p0, v1, :cond_0

    if-lt p1, p2, :cond_0

    add-int/2addr p2, v3

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static final isMouseOverSiege(III)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosX(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-lt p0, v1, :cond_0

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosX(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-gt p0, v1, :cond_0

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosY(I)I

    move-result p0

    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->getHeight()I

    move-result v1

    sub-int/2addr p0, v1

    if-lt p1, p0, :cond_0

    invoke-static {p2}, Laoc/kingdoms/lukasz/map/SiegeManager;->getArmyPosY(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p1, p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public static final resetAllModes()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setActiveSliderMenuID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setActiveMenuElementID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setCloseMenuMode(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setMenu_MoveByTitleMode(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setMenu_ResizeMode(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setMenu_MoveInnerElements(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setPieChartMode(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setTextScrollableMode(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setColorPickerMode(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->graphVertical_ScrollMode_X:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->graphVertical_ScrollMode_Y:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleInfo()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->resetScrollInfo()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    return-void
.end method

.method protected static final setMousePosXY(II)V
    .locals 0

    sput p0, Laoc/kingdoms/lukasz/jakowski/Touch;->mousePosX:I

    sput p1, Laoc/kingdoms/lukasz/jakowski/Touch;->mousePosY:I

    return-void
.end method


# virtual methods
.method protected final actionDown(IIII)V
    .locals 1

    if-nez p3, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->actionDown(II)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Touch;->selectArmiesMode:Z

    if-eqz v0, :cond_0

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput p1, p3, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxX:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput p2, p1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxY:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    const/4 p2, 0x1

    iput p2, p1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxWidth:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput p2, p1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->iSelectBoxHeight:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean p2, p1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    const/4 p1, 0x0

    sput-boolean p1, Laoc/kingdoms/lukasz/jakowski/Touch;->selectArmiesMode:Z

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionDown(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected final actionMove(III)V
    .locals 1

    if-nez p3, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->actionMove(II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionMove(III)V

    :cond_0
    return-void
.end method

.method protected final actionMove(IIII)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionMove(IIII)V

    return-void
.end method

.method protected final actionMove_Hover(II)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getFromViewID()I

    move-result v0

    if-gez v0, :cond_b

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Laoc/kingdoms/lukasz/menu/HoverManager;->actionMove_Hover(IIZ)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    const/4 v1, -0x1

    if-gez v0, :cond_a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-gez v0, :cond_a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    if-gez v0, :cond_a

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    if-eqz v0, :cond_9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredArmy(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredBattle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredSiege(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredCapitalProvince_Flag(II)Z

    move-result v0

    if-eqz v0, :cond_3

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredShip(II)Z

    move-result v0

    if-eqz v0, :cond_4

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    goto :goto_0

    :cond_4
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateHoveredProvince_Hover(II)V

    goto :goto_0

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLost()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->updateHoveredCapitalProvince_Flag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto :goto_0

    :cond_7
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateHoveredProvince_Hover(II)V

    goto :goto_0

    :cond_8
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateHoveredProvince_Hover(II)V

    goto :goto_0

    :cond_9
    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->updateHoveredProvince_HoverInMapMode(II)V

    goto :goto_0

    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/menu/HoverManager;->updateHoveredMenuElement_Hover(II)V

    :cond_b
    return-void
.end method

.method protected final actionUp(IIII)V
    .locals 1

    if-nez p3, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/MenuManager;->actionUp(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->actionUp(IIII)V

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->resetAllModes()V

    goto :goto_0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getScaleMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->resetAllModes()V

    :cond_2
    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    :cond_3
    return-void
.end method

.method public final updateHoveredArmy(II)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    const/4 v2, 0x1

    if-ltz v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v1, v4, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {p1, p2, v1, v4}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    goto :goto_1

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    goto :goto_1

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    :cond_4
    :goto_1
    move v1, v0

    :goto_2
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v3, :cond_7

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v0

    :goto_3
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {p1, p2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverArmy()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v1, v0

    :goto_4
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v3, :cond_a

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v0

    :goto_5
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v4

    invoke-static {p1, p2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverArmy()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    return v2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    move v1, v0

    :goto_6
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_SEA_PROVINCES_IN_VIEW:I

    if-ge v1, v3, :cond_d

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v0

    :goto_7
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_c

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_b

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result v4

    invoke-static {p1, p2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSeaProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverArmy()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V

    return v2

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    move v1, v0

    :goto_8
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_WASTELAND_PROVINCES_IN_VIEW:I

    if-ge v1, v3, :cond_10

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v0

    :goto_9
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_e

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result v4

    invoke-static {p1, p2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverArmy(IIII)Z

    move-result v4

    if-eqz v4, :cond_e

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iput v3, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getWastelandProvinceInViewID(I)I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverArmy()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_0
    :cond_10
    return v0
.end method

.method public final updateHoveredBattle(II)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    const/4 v2, 0x1

    if-ltz v1, :cond_2

    move v1, v0

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleSize()I

    move-result v3

    if-ge v1, v3, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    if-ne v3, v4, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, p2, v1}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverBattle(III)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    const/4 v3, -0x1

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    goto :goto_1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v1, v0

    :goto_2
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleSize()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-static {p1, p2, v1}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverBattle(III)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {p2, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {p2, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    iput-object p2, p1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverBattle()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    :cond_4
    return v0
.end method

.method public final updateHoveredCapitalProvince_Flag(II)Z
    .locals 4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {p1, p2, v0}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v3, :cond_2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {p1, p2, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverCapitalFlag()V

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_2
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v2, v3, :cond_5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v3, :cond_4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v3

    invoke-static {p1, p2, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverCapitalProvince_Flag(III)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverCapitalFlag()V

    return v1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method public final updateHoveredShip(II)Z
    .locals 4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-static {p1, p2, v0}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverShip(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    sget v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    if-ge v2, v3, :cond_3

    invoke-static {p1, p2, v2}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverShip(III)Z

    move-result v3

    if-eqz v3, :cond_2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateShipHovered()V

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public final updateHoveredSiege(II)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    invoke-static {p1, p2, v1}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverSiege(III)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, -0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    :cond_1
    move v1, v0

    :goto_0
    sget v3, Laoc/kingdoms/lukasz/map/SiegeManager;->iProvincesSize:I

    if-ge v1, v3, :cond_3

    sget-object v3, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p1, p2, v3}, Laoc/kingdoms/lukasz/jakowski/Touch;->isMouseOverSiege(III)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/map/SiegeManager;->lProvinces:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverSiege()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->animationHover:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimationHover;->resetAnimationData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return v0
.end method
