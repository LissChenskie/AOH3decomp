.class public Laoc/kingdoms/lukasz/map/map/MapBG;
.super Ljava/lang/Object;
.source "MapBG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;,
        Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;,
        Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;,
        Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;,
        Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;,
        Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;
    }
.end annotation


# static fields
.field public static iHeightOfMap:I = 0x1

.field public static iWidthOfMap:I = 0x1

.field public static loadMapBG_FileID:I

.field public static mapBGSea:Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;


# instance fields
.field public final ALPHA_MINIMAPS:I

.field public final EXTRA_XY:F

.field public PreviewBelowZero:Z

.field private animationTime:J

.field public drawMapAnimation:Z

.field public fMinimapScaleX:F

.field public fMinimapScaleY:F

.field public fMinimapScaled_Scale:F

.field public fPreviewScaleX:F

.field public fPreviewScaleY:F

.field public fPreviewScaled_Scale:F

.field private gameMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field private gameMap2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public gameMap2Size:I

.field public gameMapSize:I

.field private iBGID:I

.field private iBackground2Size_X:I

.field private iBackground2Size_Y:I

.field private iBackgroundSize_X:I

.field private iBackgroundSize_Y:I

.field public iHeightOfMapTech:I

.field private iHeightOfMap_Real:I

.field private iHeightOfSingleBG:I

.field private iHeightOfSingleBG2:I

.field private iHeightOfSingleBGTech:I

.field private iHeightOfSingleBG_xMapScale:I

.field public iMapExtraScale:F

.field public iMapScale:I

.field public iMapScaleBG:F

.field public iMinimapHeight:I

.field public iMinimapScaled_Height:I

.field public iMinimapScaled_PosX:I

.field public iMinimapScaled_PosY:I

.field public iMinimapScaled_Width:I

.field public iMinimapWidth:I

.field public iPreviewHeight:I

.field public iPreviewScaled_Height:I

.field public iPreviewScaled_PosX:I

.field public iPreviewScaled_PosY:I

.field public iPreviewScaled_Width:I

.field public iPreviewWidth:I

.field private iWidthOfMapTech:I

.field private iWidthOfMap_Real:I

.field private iWidthOfSingleBG:I

.field private iWidthOfSingleBG2:I

.field private iWidthOfSingleBGTech:I

.field private iWidthOfSingleBG_xMapScale:I

.field private inAnimation:Z

.field public isOutsideInView:Z

.field public isOutsideInView_Bot:Z

.field public mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

.field private mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

.field public minimapBG:Laoc/kingdoms/lukasz/textures/Image;

.field public minimapBelowZero:Z

.field public minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

.field public minimapOver:Laoc/kingdoms/lukasz/textures/Image;

.field private outsideMapImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field private outsideMapImagesData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;",
            ">;"
        }
    .end annotation
.end field

.field private outsideMapImagesData_Below:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;",
            ">;"
        }
    .end annotation
.end field

.field private outsideMapImagesSize:I

.field private outsideMapImagesSize_Below:I

.field private outsideMapImages_Below:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public outsideScale:F

.field public outsideScale2:F

.field public previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

.field public requestToDisposeMinimap:Z

.field public scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

.field public scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

.field public scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

.field public secondSideOfMap:Z

.field private worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapBG$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBGSea:Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    const/4 v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScaleBG:F

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap_Real:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap_Real:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBGTech:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBGTech:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMapTech:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->secondSideOfMap:Z

    const/4 v3, 0x0

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize_Below:I

    new-instance v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapAnimation:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBGID:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView_Bot:Z

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale:F

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale2:F

    const/16 v3, 0xdc

    iput v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->ALPHA_MINIMAPS:I

    const/high16 v3, 0x3e000000    # 0.125f

    iput v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->EXTRA_XY:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosY:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Width:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Height:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaled_Scale:F

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_PosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_PosY:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Width:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Height:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fPreviewScaled_Scale:F

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->PreviewBelowZero:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateActiveMapBGShader()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateWorldMap()V

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/map/map/MapBG;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBGID:I

    return p0
.end method

.method static synthetic access$002(Laoc/kingdoms/lukasz/map/map/MapBG;I)I
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBGID:I

    return p1
.end method

.method static synthetic access$100(Laoc/kingdoms/lukasz/map/map/MapBG;)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateBGAnimationTime()V

    return-void
.end method

.method static synthetic access$1000(Laoc/kingdoms/lukasz/map/map/MapBG;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    return p0
.end method

.method static synthetic access$1100(Laoc/kingdoms/lukasz/map/map/MapBG;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    return p0
.end method

.method static synthetic access$1200(Laoc/kingdoms/lukasz/map/map/MapBG;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Laoc/kingdoms/lukasz/map/map/MapBG;)Z
    .locals 0

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z

    return p0
.end method

.method static synthetic access$202(Laoc/kingdoms/lukasz/map/map/MapBG;Z)Z
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z

    return p1
.end method

.method static synthetic access$300(Laoc/kingdoms/lukasz/map/map/MapBG;)J
    .locals 2

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J

    return-wide v0
.end method

.method static synthetic access$400(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method static synthetic access$500(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method static synthetic access$600(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method static synthetic access$700(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_Over(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method static synthetic access$800(Laoc/kingdoms/lukasz/map/map/MapBG;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_Below(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method static synthetic access$900(Laoc/kingdoms/lukasz/map/map/MapBG;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    return p0
.end method

.method private final drawMapBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    invoke-interface {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->secondSideOfMap:Z

    if-eqz v0, :cond_4

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v0, :cond_4

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    add-int/2addr v3, v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY(II)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_3

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int v5, v3, v5

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX(II)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int v5, v3, v5

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX2(II)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    add-int v6, p2, v3

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    iget v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScaleBG:F

    invoke-virtual {v5, p1, v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    :cond_1
    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    sub-int/2addr v1, v3

    :cond_3
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    sub-int/2addr v2, v3

    :goto_2
    if-ltz v0, :cond_9

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    add-int/2addr v3, v2

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewY(II)Z

    move-result v3

    if-eqz v3, :cond_7

    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    add-int/lit8 v4, v4, -0x1

    :goto_3
    if-ltz v4, :cond_8

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int v5, v3, v5

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX(II)Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int v5, v3, v5

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->inViewX2(II)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    add-int v6, p2, v3

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    iget v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScaleBG:F

    invoke-virtual {v5, p1, v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    :cond_6
    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    sub-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_7
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    sub-int/2addr v1, v3

    :cond_8
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    invoke-interface {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;->drawMapEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapOver:Laoc/kingdoms/lukasz/map/map/MapOver;

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapOver;->drawMapOverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method private final drawMapBG2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 12

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    invoke-interface {v0, p1}, Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->secondSideOfMap:Z

    if-eqz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v0, :cond_1

    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    add-int v5, p2, v3

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    sub-int v8, v5, v10

    add-int v9, p3, v2

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    sub-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    sub-int/2addr v2, v3

    :goto_2
    if-ltz v0, :cond_3

    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    add-int/lit8 v4, v4, -0x1

    :goto_3
    if-ltz v4, :cond_2

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    add-int v5, p2, v3

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    sub-int v8, v5, v10

    add-int v9, p3, v2

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    sub-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_2
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    invoke-interface {p2, p1}, Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;->drawMapEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method private final drawMapBG_Sea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBGSea:Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;

    invoke-interface {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;->drawMapSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method private final drawOutsideTheMap_Below(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView_Bot:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateOutsideTheMap_Scale()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView_Bot:Z

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->outsideMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int v4, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v6, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v9, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale:F

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw2_Scale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int v6, v0, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    div-int/lit8 v8, v0, 0x2

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    div-int/lit8 v2, v2, 0x8

    sub-int v4, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    div-int/lit8 v6, v0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_BelowImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_BelowImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    add-int v4, p3, v0

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    div-float/2addr p3, v0

    float-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    neg-int v7, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V

    return-void
.end method

.method private final drawOutsideTheMap_BelowImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize_Below:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    float-to-int v2, v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    invoke-virtual {v1, p1, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final drawOutsideTheMap_Over(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 11

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateOutsideTheMap_Scale()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView:Z

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->outsideMap:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    sub-int v0, p3, v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    add-int v4, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v6, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    iget v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale:F

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2_Scale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    div-int/lit8 v0, v0, 0x2

    sub-int v6, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    div-int/lit8 v8, v0, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    sub-int v0, p3, v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sub-int v4, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    div-int/lit8 v6, v0, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_OverImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0, p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawOutsideTheMap_OverImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    add-int/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    div-float/2addr p3, v0

    float-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    neg-int v7, p2

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    return-void
.end method

.method private final drawOutsideTheMap_OverImages(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    float-to-int v2, v2

    add-int/2addr v2, p2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    sub-int v3, p3, v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->map_border:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    add-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    invoke-virtual {v1, p1, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final drawOutsideTheMap_Shadow()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->ShadowY:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private final loadOutsideMapImages()V
    .locals 6

    :try_start_0
    const-string v0, "gfx/map/OutsideMapImages_Over.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    const-string v3, "Data"

    const-class v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v2, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;->Data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gfx/map/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->imageFileName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float/2addr v4, v1

    float-to-int v1, v4

    sub-int/2addr v3, v1

    int-to-float v1, v3

    iput v1, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Over:I

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float/2addr v4, v1

    float-to-int v1, v4

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v3, v1

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private final loadOutsideMapImages_Below()V
    .locals 7

    :try_start_0
    const-string v0, "gfx/map/OutsideMapImages_Below.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    const-string v3, "Data"

    const-class v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v2, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG$ConfigJson;->Data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gfx/map/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->imageFileName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosX_Percentage:F

    :cond_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gtz v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    :cond_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    goto :goto_1

    :cond_3
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iput v4, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    :goto_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fScale:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;->OutsideTheMapMaxY_Below:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    :cond_4
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesData_Below:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;

    iput v3, v1, Laoc/kingdoms/lukasz/map/map/MapBG$OutsideMapImage;->fPosY_Percentage:F

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImages_Below:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideMapImagesSize_Below:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private final updateBGAnimationTime()V
    .locals 8

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z

    if-eqz v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_AnimationDuration:I

    int-to-long v2, v2

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v6, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J

    goto :goto_0

    :cond_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->animationTime:J

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->inAnimation:Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    move v1, v0

    :goto_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    :cond_6
    return-void
.end method

.method public final disposeMinimapOfCivilizations()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final disposeMinimapOfCivilizations_Real()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    invoke-interface {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;->drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected final drawMap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 8

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v0, v0

    mul-float/2addr p4, v0

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    int-to-float v3, v3

    mul-float/2addr v3, p4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    :goto_0
    if-ltz v0, :cond_1

    sget v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    add-int v6, p2, v3

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p4

    float-to-int v7, v7

    sub-int/2addr v6, v7

    add-int v7, p3, v2

    invoke-virtual {v5, p1, v6, v7, p4}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    int-to-float v3, v3

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    int-to-float v3, v3

    mul-float/2addr v3, p4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final drawMapBG2_TechTree(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 12

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBGTech:I

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v0, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMapTech:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    add-int v5, p2, v3

    iget v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBGTech:I

    sub-int v8, v5, v10

    add-int v9, p3, v2

    iget v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBGTech:I

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBGTech:I

    sub-int/2addr v3, v5

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBGTech:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    invoke-interface {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;->drawMapBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawMinimapTexture_Generate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 12

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    if-nez v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :goto_0
    iput-boolean v8, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    add-int/lit8 v2, v0, 0x0

    int-to-float v2, v2

    const/high16 v3, 0x3e000000    # 0.125f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    rsub-int/lit8 v4, v2, 0x0

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x0

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    rsub-int/lit8 v3, v2, 0x0

    add-int/2addr v1, v2

    if-gez v3, :cond_0

    move v3, v8

    :cond_0
    sub-int/2addr v0, v4

    sub-int v2, v1, v3

    int-to-float v5, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v5, v6

    int-to-float v9, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v9, v10

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v5, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v6, v9

    float-to-int v6, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v2, v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v5, v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v5, v10

    div-float/2addr v9, v5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v9, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v4, v0

    div-int/lit8 v0, v5, 0x2

    sub-int/2addr v4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v9, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v9, v6

    div-float v9, v0, v9

    move v6, v2

    move v2, v3

    move v0, v5

    :goto_1
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v5, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v5, v10

    const v10, 0x3f733333    # 0.95f

    cmpl-float v5, v5, v10

    if-gez v5, :cond_3

    int-to-float v5, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v5, v11

    cmpl-float v5, v5, v10

    if-gez v5, :cond_3

    if-ltz v3, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v10, v4

    move v11, v9

    move v9, v2

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v6

    const/high16 v9, 0x3f800000    # 1.0f

    move v10, v8

    move v11, v9

    move v9, v10

    :goto_3
    iput v10, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosX:I

    iput v9, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Width:I

    iput v6, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Height:I

    iput v11, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaled_Scale:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    :try_start_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    mul-int/lit8 v5, v0, 0x1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    mul-int/lit8 v6, v0, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_2
    :try_start_6
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :goto_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    int-to-float v2, v7

    div-float/2addr v1, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v7, v1, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_3
    :try_start_8
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_6
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    mul-int/2addr v1, v7

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    neg-int v2, v2

    mul-int/2addr v2, v7

    invoke-static {p1, v8, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    int-to-float v0, v10

    mul-float v1, v0, v11

    float-to-int v1, v1

    neg-int v1, v1

    int-to-float v2, v9

    mul-float/2addr v2, v11

    float-to-int v2, v2

    neg-int v2, v2

    const/16 v3, 0xdc

    invoke-static {p1, v1, v2, v11, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Minimap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    add-float/2addr v0, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v0, v0

    add-int/2addr v0, v1

    invoke-static {p1, v0, v2, v11, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Minimap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :cond_4
    if-gez v10, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v11

    float-to-int v0, v0

    sub-int/2addr v1, v0

    invoke-static {p1, v1, v2, v11, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Minimap(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    iput-boolean v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :catch_4
    :try_start_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_7
    :try_start_b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    :try_start_c
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_8

    :catch_5
    :try_start_d
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_8
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    mul-int/lit8 v4, v3, 0x1

    sub-int/2addr v2, v4

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    mul-int/2addr v4, v7

    mul-int/2addr v3, v7

    invoke-static {v8, v2, v4, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->createFromFrameBuffer(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    :try_start_e
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_9

    :catch_6
    :try_start_f
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :goto_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v7, v1, v2}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    :try_start_10
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_a

    :catch_7
    :try_start_11
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v7, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    :try_start_12
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_b

    :catch_8
    :try_start_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_b
    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    mul-int/lit8 v5, v4, 0x1

    sub-int/2addr v3, v5

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    mul-int/2addr v5, v7

    mul-int/2addr v4, v7

    invoke-static {v8, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->createFromFrameBuffer(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    iget v6, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    :try_start_14
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_c

    :catch_9
    :try_start_15
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :goto_c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v7, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    :try_start_16
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    goto :goto_d

    :catch_a
    :try_start_17
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_d
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    :catch_b
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    iput-boolean v7, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    :cond_6
    :goto_e
    return-void
.end method

.method public getHeight()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    return v0
.end method

.method public getHeight_Real()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap_Real:I

    return v0
.end method

.method public getHideMenuZoomOut()Z
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Scale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getMinimapScaled_ScaleX()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Width:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getMinimapScaled_ScaleY()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_Height:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getPreviewScaled_ScaleX()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Width:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getPreviewScaled_ScaleY()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Height:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    return v0
.end method

.method public getWidth_Real()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap_Real:I

    return v0
.end method

.method public final loadMapBG()Z
    .locals 7

    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "map/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "background/main/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public final loadMapBG_Begin()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->dispose()V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundSize_X:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundSize_Y:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    return-void
.end method

.method public final loadMapBG_End()V
    .locals 7

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    if-ge v1, v2, :cond_0

    sget v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_Y:I

    if-ge v0, v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackgroundSize_X:I

    mul-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap_Real:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap_Real:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v1, v2

    sput v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    mul-int/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateMapDistance()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth_Real()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/Map;->isWorldMap(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    div-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight_Real()I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-float v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth_Real()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight_Real()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistanceManhattan:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG_xMapScale:I

    mul-int/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG_xMapScale:I

    int-to-float v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScaleBG:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    sput v1, Laoc/kingdoms/lukasz/map/map/MapScale;->MINSCALE:F

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Size_X:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Size_Y:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    return-void
.end method

.method public final loadMapBG_ZoomOut()Z
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Enable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Laoc/kingdoms/lukasz/map/map/MapBG;->loadMapBG_FileID:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    if-ge v0, v2, :cond_1

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "map/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "background/zoomOut/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final loadMapBG_ZoomOut_End()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Enable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2Size:I

    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMap:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    div-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBG2:I

    sget v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMap:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    div-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBG2:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfSingleBGTech:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfSingleBGTech:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMapTech:I

    move v0, v1

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMapTech:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iWidthOfMapTech:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    :goto_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_Y:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap2:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iBackground2Size_X:I

    mul-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final loadMapBorder()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-string v1, "gfx/map/MapBorder.json"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const-class v2, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBorder:Laoc/kingdoms/lukasz/map/map/MapBG$MapBorder;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->loadOutsideMapImages()V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->loadOutsideMapImages_Below()V

    return-void
.end method

.method public final loadMinimap()V
    .locals 6

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "map/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v3, Lcom/google/android/gms/common/internal/constants/oyIG/kfGnwGN;->WuZ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "minimapBG.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "minimapOver.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "scenarioBG.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "scenarioOver.png"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scenarioMask.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

    return-void
.end method

.method public final previewTexture_Generate(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "scenarios/"

    const-string v10, "/preview.png"

    const-string v11, "map/"

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    const/4 v0, 0x0

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    :cond_0
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    if-nez v0, :cond_c

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :goto_0
    iput-boolean v13, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v2

    add-int/lit8 v3, v0, 0x0

    int-to-float v3, v3

    const/high16 v4, 0x3e000000    # 0.125f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    rsub-int/lit8 v5, v3, 0x0

    add-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x0

    int-to-float v3, v3

    mul-float/2addr v3, v4

    float-to-int v3, v3

    rsub-int/lit8 v4, v3, 0x0

    add-int/2addr v2, v3

    if-gez v4, :cond_1

    move v4, v13

    :cond_1
    sub-int/2addr v0, v5

    sub-int v3, v2, v4

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v6, v7

    int-to-float v14, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v14, v15

    cmpl-float v7, v7, v15

    if-ltz v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v6, v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v7, v14

    float-to-int v7, v7

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v14, v7, 0x2

    sub-int/2addr v3, v14

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v6, v15

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v6, v15

    div-float/2addr v14, v6

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v14, v6

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v0, v6, 0x2

    sub-int/2addr v5, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v14, v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v14, v7

    div-float v14, v0, v14

    move v7, v3

    move v3, v4

    move v0, v6

    :goto_1
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v6, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v6, v15

    const v15, 0x3f733333    # 0.95f

    cmpl-float v6, v6, v15

    if-gez v6, :cond_4

    int-to-float v6, v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v6, v13

    cmpl-float v6, v6, v15

    if-gez v6, :cond_4

    if-ltz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v4

    if-lt v2, v4, :cond_3

    goto :goto_2

    :cond_3
    move v13, v3

    move v15, v14

    move v14, v5

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    move v15, v14

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    iput v14, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_PosX:I

    iput v13, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_PosY:I

    iput v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Width:I

    iput v7, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewScaled_Height:I

    iput v15, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->fPreviewScaled_Scale:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v12, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_4
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    mul-int/lit8 v6, v0, 0x1

    iget v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    mul-int/lit8 v7, v0, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :catch_2
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :goto_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    int-to-float v3, v12

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    neg-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v12, v2, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catch_3
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_6
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    mul-int/2addr v2, v12

    iget v3, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    neg-int v3, v3

    mul-int/2addr v3, v12

    const/4 v4, 0x0

    invoke-static {v8, v4, v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefaultProvince:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    const/16 v2, 0xdc

    if-eqz v0, :cond_5

    int-to-float v0, v14

    mul-float/2addr v0, v15

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v3, v13

    mul-float/2addr v3, v15

    float-to-int v3, v3

    neg-int v3, v3

    invoke-static {v8, v0, v3, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_7

    :cond_5
    int-to-float v0, v14

    mul-float/2addr v0, v15

    float-to-int v0, v0

    neg-int v0, v0

    int-to-float v3, v13

    mul-float/2addr v3, v15

    float-to-int v3, v3

    neg-int v3, v3

    invoke-static {v8, v0, v3, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :goto_7
    int-to-float v0, v14

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v15

    add-float/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v3, :cond_6

    mul-float v3, v0, v15

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v15

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v4, v13

    mul-float/2addr v4, v15

    float-to-int v4, v4

    neg-int v4, v4

    invoke-static {v8, v3, v4, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_8

    :cond_6
    mul-float v3, v0, v15

    float-to-int v3, v3

    neg-int v3, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v15

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v4, v13

    mul-float/2addr v4, v15

    float-to-int v4, v4

    neg-int v4, v4

    invoke-static {v8, v3, v4, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :cond_7
    :goto_8
    if-gez v14, :cond_9

    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v3, :cond_8

    mul-float/2addr v0, v15

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-int v3, v3

    sub-int/2addr v0, v3

    int-to-float v3, v13

    mul-float/2addr v3, v15

    float-to-int v3, v3

    neg-int v3, v3

    invoke-static {v8, v0, v3, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    goto :goto_9

    :cond_8
    mul-float/2addr v0, v15

    float-to-int v0, v0

    neg-int v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v15

    float-to-int v3, v3

    sub-int/2addr v0, v3

    int-to-float v3, v13

    mul-float/2addr v3, v15

    float-to-int v3, v3

    neg-int v3, v3

    invoke-static {v8, v0, v3, v15, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :goto_9
    iput-boolean v12, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_a

    :catch_4
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_a
    :try_start_b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v12, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_d

    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_b

    :catch_5
    :try_start_d
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_b
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v4, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    mul-int/lit8 v5, v4, 0x1

    sub-int/2addr v3, v5

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    mul-int/2addr v5, v12

    mul-int/2addr v4, v12

    const/4 v6, 0x0

    invoke-static {v6, v3, v5, v4}, Lcom/badlogic/gdx/graphics/Pixmap;->createFromFrameBuffer(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :try_start_e
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    :catch_6
    :try_start_f
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->flipPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    goto :goto_c

    :cond_a
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->flipPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    :goto_c
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    :try_start_10
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_d

    :catch_7
    :try_start_11
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :goto_d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v3, v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v0, v12, v2, v3}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_e

    :catch_8
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v12, v3, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    :try_start_14
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_f

    :catch_9
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_f
    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v5, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    mul-int/lit8 v6, v5, 0x1

    sub-int/2addr v4, v6

    iget v6, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    mul-int/2addr v6, v12

    mul-int/2addr v5, v12

    const/4 v7, 0x0

    invoke-static {v7, v4, v6, v5}, Lcom/badlogic/gdx/graphics/Pixmap;->createFromFrameBuffer(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v2, v3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    :try_start_16
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    :catch_a
    :try_start_17
    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->flipPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    goto :goto_10

    :cond_b
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->previewOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    invoke-interface {v3}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->flipPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    :goto_10
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    iget v7, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    :try_start_18
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_11

    :catch_b
    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    :goto_11
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->setWorldSize(FF)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->apply()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    neg-int v4, v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v12, v3, v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->setToOrtho(ZFF)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/OrthographicCamera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_d

    :try_start_1a
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    goto :goto_12

    :catch_c
    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :goto_12
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    :catch_d
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_c
    :goto_13
    return-void
.end method

.method public final updateActiveMapBGShader()V
    .locals 2

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DISEASES:I

    if-ne v0, v1, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$3;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapShader:Laoc/kingdoms/lukasz/map/map/MapBG$MapShader;

    :goto_0
    return-void
.end method

.method public updateMapBGSea()V
    .locals 1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_DISABLE_SEA_WAVES:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$10;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$10;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBGSea:Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$9;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$9;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapBG;->mapBGSea:Laoc/kingdoms/lukasz/map/map/MapBG$MapBGSea;

    :goto_1
    return-void
.end method

.method public final updateMinimapResolution()V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateMinimapScaleY()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateMinimapScaleX()V

    return-void
.end method

.method protected final updateMinimapScaleX()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    return-void
.end method

.method protected final updateMinimapScaleXY()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateMinimapScaleX()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updateMinimapScaleY()V

    return-void
.end method

.method protected final updateMinimapScaleY()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    return-void
.end method

.method public updateOutsideTheMap_Scale()V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->isOutsideInView_Bot:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale2:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e7ae148    # 0.245f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale2:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale:F

    return-void

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    div-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->outsideScale:F

    return-void
.end method

.method public final updatePreviewResolution()V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updatePreviewScaleY()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fPreviewScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->updatePreviewScaleX()V

    return-void
.end method

.method protected final updatePreviewScaleX()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fPreviewScaleX:F

    return-void
.end method

.method protected final updatePreviewScaleY()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->iPreviewHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->fPreviewScaleY:F

    return-void
.end method

.method public final updateWorldMap()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->gameMapSize:I

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadGamesList()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMapID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/Map;->isWorldMap(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Enable:Z

    if-eqz v0, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$5;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    goto :goto_1

    :cond_1
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$6;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$6;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    goto :goto_1

    :cond_2
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$7;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$7;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapBG$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapBG$4;-><init>(Laoc/kingdoms/lukasz/map/map/MapBG;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapBG;->worldMap:Laoc/kingdoms/lukasz/map/map/MapBG$WorldMap;

    :goto_1
    return-void
.end method
