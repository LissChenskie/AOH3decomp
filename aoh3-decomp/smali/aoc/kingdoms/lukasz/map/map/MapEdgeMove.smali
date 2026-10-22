.class public Laoc/kingdoms/lukasz/map/map/MapEdgeMove;
.super Ljava/lang/Object;
.source "MapEdgeMove.java"


# static fields
.field public static final DEFAULT_SCROLL:I = 0xa

.field public static final DEFAULT_SCROLL_MAP:I = 0x1e

.field private static MAX_MOVE_SPEED:I = 0x2d

.field private static PADDING_EDGE_MOVE:I = 0xa

.field private static SCROLL_RESET_TIME:I = 0x15e


# instance fields
.field public MAP_MOVE_BOT:Z

.field public MAP_MOVE_KEYBOARD:I

.field public MAP_MOVE_LEFT:Z

.field public MAP_MOVE_RIGHT:Z

.field public MAP_MOVE_TOP:Z

.field private final NEXT_SCROLL_TIME:I

.field private extraTime:I

.field public fScroll_XorY_Perc:F

.field private iMousePosX:I

.field private iMousePosY:I

.field private iScroll:I

.field public iScroll_MAP:F

.field private lScrollResetTime:J

.field private lScrollTime:J

.field public lScrollTime_MAP:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollResetTime:J

    sget v2, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll:I

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime:J

    const/16 v0, 0x64

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosY:I

    const/16 v0, 0x7d

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->extraTime:I

    const/16 v0, 0xa

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->NEXT_SCROLL_TIME:I

    return-void
.end method

.method private final getMaxMoveSpeed()I
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAX_MOVE_SPEED:I

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sub-float v2, v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAX_MOVE_SPEED:I

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private final resetScrollMap()V
    .locals 4

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollResetTime:J

    sget v2, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->SCROLL_RESET_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->extraTime:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->DEFAULT_SCROLL:I

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    :cond_0
    return-void
.end method

.method private final updateScroll_MapX()V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosY:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosY:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosY:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    :goto_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollResetTime:J

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    const-wide/16 v4, 0xa

    add-long/2addr v0, v4

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    cmpg-float v0, v0, v3

    const v1, 0x3e051eb8    # 0.13f

    if-gez v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sub-float/2addr v3, v2

    add-float/2addr v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v0, v3

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    goto :goto_1

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    :goto_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->getMaxMoveSpeed()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->getMaxMoveSpeed()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    :cond_2
    return-void
.end method

.method private final updateScroll_MapY()V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosX:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosX:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    sub-float v0, v3, v0

    neg-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    :goto_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollResetTime:J

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    const-wide/16 v4, 0xa

    add-long/2addr v0, v4

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->lScrollTime_MAP:J

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    sub-float/2addr v3, v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const v1, 0x3e4ccccd    # 0.2f

    add-float/2addr v3, v1

    mul-float/2addr v3, v0

    add-float/2addr v0, v3

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->getMaxMoveSpeed()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->getMaxMoveSpeed()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    :cond_2
    return-void
.end method


# virtual methods
.method public final MouseMoved_EdgeMove(II)V
    .locals 4

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop:Z

    if-eqz v0, :cond_7

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    if-nez v0, :cond_7

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iMousePosY:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->ENABLE_EDGE_SCROLL:Z

    if-eqz v0, :cond_7

    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->PADDING_EDGE_MOVE:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->resetScrollMap()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    :cond_1
    :goto_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->PADDING_EDGE_MOVE:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_2

    iget-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    if-nez p1, :cond_3

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->resetScrollMap()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    :cond_3
    :goto_1
    sget p1, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->PADDING_EDGE_MOVE:I

    if-ge p2, p1, :cond_4

    iget-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    if-nez p1, :cond_5

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->resetScrollMap()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    :cond_5
    :goto_2
    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->PADDING_EDGE_MOVE:I

    sub-int/2addr p1, v0

    if-le p2, p1, :cond_6

    iget-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    if-nez p1, :cond_7

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->resetScrollMap()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapScroll;->stopScrollingTheMap()V

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    goto :goto_3

    :cond_6
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    :cond_7
    :goto_3
    return-void
.end method

.method public final updateMoveMap()V
    .locals 4

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_KEYBOARD:I

    if-lez v0, :cond_3

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapX()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapX()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapY()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapY()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    goto/16 :goto_1

    :cond_3
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_LEFT:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapX()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    goto/16 :goto_1

    :cond_4
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_RIGHT:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapX()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_TOP:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapY()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MAP_MOVE_BOT:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->updateScroll_MapY()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->iScroll_MAP:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->fScroll_XorY_Perc:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void
.end method
