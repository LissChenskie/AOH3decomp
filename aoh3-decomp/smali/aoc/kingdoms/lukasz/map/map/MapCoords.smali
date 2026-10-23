.class public Laoc/kingdoms/lukasz/map/map/MapCoords;
.super Ljava/lang/Object;
.source "MapCoords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;
    }
.end annotation


# instance fields
.field public disableMovingMap:Z

.field private drawMapBorder:Z

.field private iMaxPosScaledY:I

.field private iMaxPosY:I

.field private iMinPosScaledX:I

.field private iMinPosScaledY:I

.field private iMinPosY:I

.field private iNewPosX:I

.field private iNewPosY:I

.field private iPosX:I

.field private iPosY:I

.field private iSecondSideOfMap_TranslateX:I

.field private secondSideOfMap:Z

.field private worldMap:Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iSecondSideOfMap_TranslateX:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->drawMapBorder:Z

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/map/map/MapCoords;)Z
    .locals 0

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z

    return p0
.end method

.method static synthetic access$002(Laoc/kingdoms/lukasz/map/map/MapCoords;Z)Z
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z

    return p1
.end method

.method static synthetic access$100(Laoc/kingdoms/lukasz/map/map/MapCoords;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    return p0
.end method

.method static synthetic access$102(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    return p1
.end method

.method static synthetic access$202(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iSecondSideOfMap_TranslateX:I

    return p1
.end method

.method static synthetic access$300(Laoc/kingdoms/lukasz/map/map/MapCoords;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    return p0
.end method

.method static synthetic access$302(Laoc/kingdoms/lukasz/map/map/MapCoords;I)I
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    return p1
.end method

.method static synthetic access$400(Laoc/kingdoms/lukasz/map/map/MapCoords;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I

    return p0
.end method


# virtual methods
.method public final centerToMinimapClick(II)V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Width:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Height:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosX:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr v3, p1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p1, p1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosY:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    add-int/2addr p1, p2

    invoke-virtual {v2, v3, p1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->setScrollEvent_ToPosition(II)V

    return-void
.end method

.method public final centerToProvinceID(I)V
    .locals 1

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->setScrollEvent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected final checkPositionOfMapX()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    neg-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    if-lez v0, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected final checkPositionOfMapY()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    neg-int v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    add-int/2addr v1, v2

    rem-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosY:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosY:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    :cond_1
    :goto_0
    return-void
.end method

.method public getDisableMovingMap()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    return v0
.end method

.method public final getMinimapPosX(I)I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Width:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosX:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final getMinimapPosY(I)I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Height:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosY:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    add-int/2addr v1, p1

    return v1
.end method

.method protected final getNewPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    return v0
.end method

.method protected final getNewPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    return v0
.end method

.method public getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    return v0
.end method

.method public final getSecondSideOfMap()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->secondSideOfMap:Z

    return v0
.end method

.method public final getSecondSideOfMap_MoveX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iSecondSideOfMap_TranslateX:I

    return v0
.end method

.method public setDisableMovingMap(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->disableMovingMap:Z

    return-void
.end method

.method public final setNewPosX(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    return-void
.end method

.method public final setNewPosY(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    return-void
.end method

.method public setPosX(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    return-void
.end method

.method public setPosY(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    return-void
.end method

.method public final updateMapPosition()V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosX:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setUpdateProvincesInView(Z)V

    sput-boolean v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->worldMap:Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;->updateMapPosX()V

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    if-eq v0, v1, :cond_3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->setUpdateProvincesInView(Z)V

    sput-boolean v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosY:I

    int-to-float v1, v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    if-le v0, v1, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosY:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setUpdateStartMovePosY(Z)V

    goto :goto_0

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosY:I

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosScaledY:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosY:I

    int-to-float v1, v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosScaledY:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setUpdateStartMovePosY(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iNewPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iPosY:I

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->checkPositionOfMapY()V

    :cond_3
    return-void
.end method

.method public final updateMinMaxPosY()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosY:I

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->drawMapBorder:Z

    if-eqz v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosScaledY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/Map;->getMapWorldMap(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I

    goto :goto_0

    :cond_0
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I

    goto :goto_0

    :cond_1
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMaxPosScaledY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->iMinPosScaledX:I

    :goto_0
    return-void
.end method

.method public final updateSecondSideOfMap()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->worldMap:Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;->updateSecondSideOfMap()V

    return-void
.end method

.method protected final updateWorldMap()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/Map;->getMapWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCoords$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCoords$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapCoords;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->worldMap:Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCoords$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCoords$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapCoords;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCoords;->worldMap:Laoc/kingdoms/lukasz/map/map/MapCoords$WorldMap;

    :goto_0
    return-void
.end method
