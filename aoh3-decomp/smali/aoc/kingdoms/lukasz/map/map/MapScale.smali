.class public Laoc/kingdoms/lukasz/map/map/MapScale;
.super Ljava/lang/Object;
.source "MapScale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;
    }
.end annotation


# static fields
.field public static final MAXSCALE:F = 20.0f

.field public static MINSCALE:F = 0.01f

.field private static final REQUIRED_TIME_TO_RESET_SCALE:S = 0xafs

.field public static STANDARD_SCALE:F = 1.0f

.field protected static animation_TIME_TO_END:I = 0x64

.field public static defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;


# instance fields
.field protected animation_StartingScale:F

.field protected animation_TIME_STARTED:J

.field private changeCurrentScaleByX:F

.field private currentScale:F

.field public definedScale:I

.field private definedScaleBeforeReset:I

.field public definedScalesLength:I

.field private enableScaling:Z

.field private fScaleAnimation_PercX:F

.field private fScaleAnimation_PercY:F

.field private fScaleBeforeReset:F

.field private iStartScaleMapPosX:I

.field private iStartScaleMapPosY:I

.field private iStartScalePosX:I

.field private iStartScalePosX2:I

.field private iStartScalePosY:I

.field private iStartScalePosY2:I

.field private newScale:F

.field public scaleByYAxis:Z

.field private scaleChangeByTouch:Z

.field public scaleMode:Z

.field public startScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->enableScaling:Z

    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleChangeByTouch:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_StartingScale:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercX:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercY:F

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScaleBeforeReset:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScalesLength:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleByYAxis:Z

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosY:I

    return-void
.end method

.method private getDefinedScale()F
    .locals 2

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private final resetScaleAnimation()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    return-void
.end method

.method private final updateScale()V
    .locals 7

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_StartingScale:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    sub-long/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    sub-long/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    sget v2, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleChangeByTouch:Z

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    const v3, 0x3f7e147b    # 0.9925f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    const v3, 0x3f80f5c3    # 1.0075f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    :cond_2
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleAnimation()V

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercX:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercY:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    return-void
.end method


# virtual methods
.method public getCurrentScale()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    return v0
.end method

.method public getEnableScaling()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->enableScaling:Z

    return v0
.end method

.method public getScaleMode()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleMode:Z

    return v0
.end method

.method public final getStartScalePosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    return v0
.end method

.method public final initDefinedScales()V
    .locals 4

    const-string v0, "/data/scales/"

    const-string v1, "map/"

    :try_start_0
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    if-eqz v1, :cond_0

    const-string v1, "DefinedScales.json"

    goto :goto_0

    :cond_0
    const-string v1, "DefinedScales_Low.json"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    const-class v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScaleBeforeReset:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScalesLength:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    aget v2, v2, v1

    sget v3, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    sget v3, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    aput v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sget v1, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    aput v2, v0, v1

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScalesLength:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Error loading: DefinedScales"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final resetScaleInfo()V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetStartScalePosition()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleMode:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    return-void
.end method

.method protected final resetScaleOfMap(J)V
    .locals 6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->ENABLE_DOUBLE_CLICK_TO_RESET_MAP_SCALE:Z

    if-nez v0, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->getActionDownTime()J

    move-result-wide v2

    const-wide/16 v4, 0xaf

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getDisableMovingMap()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleChangeByTouch:Z

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_StartingScale:F

    sget v2, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    sub-float/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScaleBeforeReset:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    goto :goto_0

    :cond_1
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    sub-float/2addr v3, v1

    iput v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScaleBeforeReset:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    :goto_0
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->updateAnimationScale_CenterToXY(II)V

    const/16 v1, 0x64

    sput v1, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScroll;->resetScrollInfo()V

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->setActionDownTime(J)V

    return-void
.end method

.method public final resetStartScalePosition()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    return-void
.end method

.method public final scaleTheMap(IIFF)V
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosX:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosY:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    const/high16 v1, 0x43160000    # 150.0f

    const/4 v2, 0x1

    if-eq v0, p1, :cond_2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    if-ge p1, p2, :cond_1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_1
    sub-int v0, p1, v0

    :goto_0
    int-to-float v0, v0

    div-float/2addr v0, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    invoke-virtual {p0, v3, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapScale;->setNewCurrentScaleByTouch(FFF)V

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleAnimation()V

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    if-eq v0, p2, :cond_4

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    if-le p1, p2, :cond_3

    sub-int/2addr v0, p2

    goto :goto_1

    :cond_3
    sub-int v0, p2, v0

    :goto_1
    int-to-float p1, v0

    div-float/2addr p1, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    div-float/2addr p1, v0

    add-float/2addr v3, p1

    invoke-virtual {p0, v3, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapScale;->setNewCurrentScaleByTouch(FFF)V

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v2, p1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosX:Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iput-boolean v2, p1, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->updateStartMovePosY:Z

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleAnimation()V

    :cond_4
    return-void
.end method

.method public final scaleTheMap(IIII)V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleByYAxis:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    add-int/2addr p1, p2

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-int p2, p3, p4

    int-to-float p2, p2

    div-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p0, p3, p4, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleTheMap(IIFF)V

    goto :goto_0

    :cond_0
    add-int v0, p1, p2

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-int/2addr p3, p4

    int-to-float p3, p3

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    invoke-virtual {p0, p1, p2, v0, p3}, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleTheMap(IIFF)V

    :goto_0
    return-void
.end method

.method public final scrollScale(I)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarios_NewGame()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadGamesList()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLegacies()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    const/4 p1, 0x0

    if-gez v0, :cond_2

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    goto :goto_0

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v1, v1

    if-lt v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScales:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    :cond_3
    :goto_0
    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getDefinedScale()F

    move-result v0

    const v1, 0x3f7eb852    # 0.995f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_4

    const v1, 0x3f80a3d7    # 1.005f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4

    sget v0, Laoc/kingdoms/lukasz/map/map/MapScale;->STANDARD_SCALE:F

    :cond_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5

    sget v1, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    const v2, 0x3d4ccccd    # 0.05f

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->resetScaleAnimation()V

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleChangeByTouch:Z

    const/16 p1, 0x7d

    sput p1, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_TO_END:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_StartingScale:F

    sub-float p1, v0, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleBeforeReset:F

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->animation_TIME_STARTED:J

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result p1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->updateAnimationScale_CenterToXY(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public scrollScaleChange(Z)F
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p1

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_1

    const p1, 0x3d4ccccd    # 0.05f

    :goto_1
    mul-float/2addr v0, p1

    return v0

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    const p1, 0x3ca3d70a    # 0.02f

    goto :goto_1

    :cond_2
    const p1, 0x3c23d70a    # 0.01f

    goto :goto_1

    :cond_3
    const p1, 0x3dcccccd    # 0.1f

    goto :goto_1
.end method

.method public setCurrentScale(F)V
    .locals 2

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    const/4 p1, 0x1

    sput-boolean p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->updateBackgroundColor:Z

    return-void
.end method

.method public setEnableScaling(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->enableScaling:Z

    return-void
.end method

.method public final setNewCurrentScaleByTouch(FFF)V
    .locals 4

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    goto :goto_0

    :cond_1
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleChangeByTouch:Z

    iget p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_4

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_3

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercX:F

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float p1, p1

    div-float/2addr p3, p1

    iput p3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercY:F

    iget p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosX:I

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    div-float/2addr p3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercX:F

    mul-float/2addr p3, v1

    float-to-int p3, p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosY:I

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float p3, p3

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    div-float/2addr p3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercY:F

    mul-float/2addr p3, v1

    float-to-int p3, p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    goto :goto_1

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosX:I

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    div-float/2addr p3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    float-to-int p3, p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget p2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScaleMapPosY:I

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float p3, p3

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->startScale:F

    div-float/2addr p3, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    div-float/2addr v2, v3

    sub-float/2addr p3, v2

    div-float/2addr p3, v1

    float-to-int p3, p3

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    :goto_1
    iget p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->currentScale:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->newScale:F

    :cond_3
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->checkPositionOfMapY()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->checkPositionOfMapX()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->updateSecondSideOfMap()V

    :cond_4
    return-void
.end method

.method public final startScaleTheMap(IIII)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleMode:Z

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 p3, 0x0

    iput-boolean p3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleByYAxis:Z

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->scaleByYAxis:Z

    iput p3, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY:I

    iput p4, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->iStartScalePosY2:I

    :goto_0
    return-void
.end method

.method public final update()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->changeCurrentScaleByX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapScale;->updateScale()V

    :cond_0
    return-void
.end method

.method protected final updateAnimationScale_CenterToXY(II)V
    .locals 1

    int-to-float p1, p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercX:F

    int-to-float p1, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapScale;->fScaleAnimation_PercY:F

    return-void
.end method
