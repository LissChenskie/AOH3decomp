.class public Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;
.super Ljava/lang/Object;
.source "MenuElement_HoverElement_Type_ImageTemporaryLoad.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;


# instance fields
.field private iHeight:I

.field private iHoverLoadedTemporaryImagesID:I

.field private iWidth:I

.field private offsetLeft:I

.field private offsetRight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->init(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->init(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->init(Ljava/lang/String;II)V

    return-void
.end method

.method private final getImage()Laoc/kingdoms/lukasz/textures/Image;
    .locals 2

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->iHoverLoadedTemporaryImagesID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->imageNotFound:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    return-object v0
.end method

.method private final getImageScale()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private final init(Ljava/lang/String;II)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/menu/HoverManager;->loadHoverLoadedTemporaryImage(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->iHoverLoadedTemporaryImagesID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->offsetLeft:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->offsetRight:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->getImage()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->getImageScale()F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->iWidth:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->getImage()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->getImageScale()F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->iHeight:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 7

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p5, v0, v0, v0, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->getImage()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->offsetLeft:I

    add-int v3, p2, p4

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, p3, p2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->iWidth:I

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->iHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->getImage()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->offsetLeft:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->offsetRight:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTemporaryLoad;->iWidth:I

    add-int/2addr v0, v1

    return v0
.end method
