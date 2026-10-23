.class public Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
.super Ljava/lang/Object;
.source "MenuElement_Hover.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu/Hover;


# static fields
.field public static ANIMATION_ALPHA:F = 0.0f

.field public static ANIMATION_INTERVAL:I = 0x992

.field public static ANIMATION_PADDING:F = 0.0f

.field public static ANIMATION_TIME:J = 0x0L

.field public static DRAW_EXTRA_TIME:I = 0x9c4

.field public static final TEXT_SCALE:F = 0.9f

.field public static colorGradient:Lcom/badlogic/gdx/graphics/Color;

.field public static colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

.field public static lTimeDrawExtra:J


# instance fields
.field public INIT_TIME:J

.field private backAnimation:Z

.field public haveDrawExtraElement:Z

.field private iElementsSize:I

.field public iFontID:I

.field public iHeight:I

.field public iHeight2:I

.field public iHeightDrawExtra:I

.field private iMaxWidth:I

.field private iScrollPosX:I

.field private iWidth:I

.field private iWidthOver:I

.field private lElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e008081

    const v2, 0x3ee66666    # 0.45f

    const v3, 0x3da0a0a1

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e828283

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e0c8c8d

    const v4, 0x3e48c8c9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    invoke-direct {p0, p1, v0, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->init(Ljava/util/List;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->init(Ljava/util/List;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iFontID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iMaxWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    invoke-direct {p0, p1, v0, p2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->init(Ljava/util/List;IZ)V

    return-void
.end method

.method public static final getDrawExtraXPos()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private final init(Ljava/util/List;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;",
            ">;IZ)V"
        }
    .end annotation

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iFontID:I

    move p2, p1

    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    const/4 v1, 0x1

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    if-le v0, v2, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->drawElement:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    if-lez p2, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr p2, v0

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    :cond_3
    move p2, p1

    :goto_1
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    if-le v0, v2, :cond_4

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getWidth()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iMaxWidth:I

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    sub-int/2addr v0, v1

    mul-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr p2, v0

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    move p2, p1

    :goto_2
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    if-ge p1, v0, :cond_7

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->drawElement:Z

    if-eqz v0, :cond_6

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    add-int/lit8 p2, p2, 0x1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_8

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, p3

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, p3

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    :cond_8
    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr p3, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p2, p2, 0x5

    add-int/2addr p3, p2

    add-int/2addr p1, p3

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide p1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->INIT_TIME:J

    return-void
.end method

.method public static final resetAnimation()V
    .locals 2

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_TIME:J

    const v0, 0x3cb851ec    # 0.0225f

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    int-to-float v0, v0

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->initHide()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->updateHeight()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getMinPosX()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    sub-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr p2, v0

    :cond_1
    if-gez p3, :cond_2

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_0

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr p3, v0

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawAlwaysBelow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->updateHeight()V

    int-to-float p2, p2

    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p3, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    sub-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr p2, v0

    :cond_0
    if-gez p3, :cond_1

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_0

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_2

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr p3, v0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawAlwaysOver(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->initHide()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->updateHeight()V

    int-to-float p2, p2

    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p2, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr p3, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    sub-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr p2, v0

    :cond_1
    if-gez p3, :cond_2

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_0

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr p3, v0

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawAlwaysOver_Mobile(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->updateHeight()V

    int-to-float p2, p2

    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    div-int/lit8 v0, v0, 0x4

    sub-int/2addr p2, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    if-ge p2, v0, :cond_0

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    sub-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr p2, v0

    :cond_1
    if-gez p3, :cond_2

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_0

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int/2addr v0, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr p3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr p3, v0

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawProvinceInfo(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->initHide()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    int-to-float p2, p2

    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final draw_Hover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getScrollPosX()I

    move-result v16

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/16 v17, 0x1

    if-ltz v0, :cond_0

    move/from16 v18, v17

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move/from16 v18, v0

    :goto_0
    const v19, 0x3dcccccd    # 0.1f

    const v0, 0x3f79999a    # 0.975f

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v18, :cond_2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float/2addr v2, v0

    invoke-direct {v1, v15, v15, v15, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int v20, p2, v16

    iget v3, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v4, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    sget v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, p3

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    div-int/lit8 v1, v0, 0x2

    add-int v11, p3, v1

    iget v12, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v13, v0, -0x2

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object/from16 v9, p1

    move/from16 v10, v20

    move v5, v15

    move v15, v0

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    iget-boolean v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float/2addr v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v11, v0, v1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v12, v0

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p1

    move/from16 v10, v20

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v12, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x2

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float v1, v1, v19

    invoke-direct {v0, v5, v5, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, p3, v0

    add-int/lit8 v11, v0, -0x1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v1, v5

    goto/16 :goto_1

    :cond_2
    move v5, v15

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float/2addr v2, v0

    invoke-direct {v1, v5, v5, v5, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int v20, p2, v16

    iget v3, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v4, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sget v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, p3

    move v5, v8

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    div-int/lit8 v1, v0, 0x2

    add-int v11, p3, v1

    iget v12, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v13, v0, -0x2

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object/from16 v9, p1

    move/from16 v10, v20

    move v1, v15

    move v15, v0

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    iget-boolean v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float/2addr v5, v8

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v0, p3, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v11, v0, v2

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v12, v0

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p1

    move/from16 v10, v20

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v0, p3, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v11, v0, v2

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v12, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x2

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    mul-float v2, v2, v19

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v0, p3, v0

    add-int/lit8 v11, v0, -0x1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v12, v0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :cond_3
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v16

    move-object v8, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIFZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getScrollPosX()I

    move-result v16

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/16 v17, 0x1

    if-ltz v0, :cond_0

    move/from16 v18, v17

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move/from16 v18, v0

    :goto_0
    const v15, 0x3dcccccd    # 0.1f

    const v0, 0x3f79999a    # 0.975f

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v18, :cond_3

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v1, p3, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    sub-int/2addr v1, v2

    move/from16 v19, v1

    goto :goto_1

    :cond_1
    move/from16 v19, p3

    :goto_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v14, v14, v14, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int v20, p2, v16

    iget v3, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v4, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    div-int/lit8 v1, v0, 0x2

    add-int v11, v19, v1

    iget v12, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v13, v0, -0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v9, p1

    move/from16 v10, v20

    move v5, v14

    move v14, v0

    move v4, v15

    move v15, v1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    iget-boolean v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, v19, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v11, v0, v1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v9

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v12, v0

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p1

    move/from16 v10, v20

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, v19, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v9

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v12, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v0, 0x2

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move/from16 v10, v20

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    add-int v0, v19, v0

    add-int/lit8 v11, v0, -0x1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v2, v5

    goto/16 :goto_3

    :cond_3
    move v5, v14

    move v4, v15

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v1, p3, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    sub-int/2addr v1, v2

    move/from16 v19, v1

    goto :goto_2

    :cond_4
    move/from16 v19, p3

    :goto_2
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v5, v5, v5, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int v20, p2, v16

    iget v3, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    iget v8, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    move v15, v4

    move v4, v8

    move v14, v5

    move v5, v9

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradient:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    div-int/lit8 v1, v0, 0x2

    add-int v11, v19, v1

    iget v12, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v13, v0, -0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v9, p1

    move/from16 v10, v20

    move v2, v14

    move v14, v0

    move v0, v15

    move v15, v1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    iget-boolean v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->haveDrawExtraElement:Z

    if-eqz v1, :cond_5

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->colorGradientLoading:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {v1, v3, v4, v5, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v1, v19, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v11, v1, v3

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v1, v1

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v3, v9

    long-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v12, v1

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p1

    move/from16 v10, v20

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v1, v19, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v11, v1, v3

    iget v1, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v1, v1

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v3, v9

    long-to-float v3, v3

    sget v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v12, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v1, 0x2

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move/from16 v10, v20

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    add-int v0, v19, v0

    add-int/lit8 v11, v0, -0x1

    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidth:I

    int-to-float v0, v0

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v9, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v3, v9

    long-to-float v1, v3

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v12, v0

    const/4 v13, 0x1

    move-object/from16 v9, p1

    move/from16 v10, v20

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :cond_5
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_3
    move/from16 v3, v19

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, v16

    move-object v8, v6

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIFZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final draw_HoverWithoutAnimation(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIFZ)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iElementsSize:I

    if-ge v0, v2, :cond_2

    if-nez p6, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->drawElement:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    add-int v2, p2, p4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v4

    add-int v5, v2, v4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    add-int v6, v2, v1

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iMaxWidth:I

    move-object v4, p1

    move v7, p5

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lElements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getMinPosX()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final getScrollPosX()I
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    const-wide/16 v2, 0x5dc

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    neg-int v1, v1

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iWidthOver:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    if-le v0, v1, :cond_1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->backAnimation:Z

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTime:J

    :cond_1
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iScrollPosX:I

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public initHide()Z
    .locals 4

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->INIT_TIME:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->notifications:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Notifications;->HOVER_HIDE_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final updateHeight()V
    .locals 4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->lTimeDrawExtra:J

    sub-long/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->DRAW_EXTRA_TIME:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeightDrawExtra:I

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight2:I

    :goto_0
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->iHeight:I

    return-void
.end method
