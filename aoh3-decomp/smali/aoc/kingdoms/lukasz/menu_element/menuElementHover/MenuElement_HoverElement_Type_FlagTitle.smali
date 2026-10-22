.class public Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;
.super Ljava/lang/Object;
.source "MenuElement_HoverElement_Type_FlagTitle.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;


# instance fields
.field private iCivID:I

.field private offsetLeft:I

.field private offsetRight:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetRight:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->iCivID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetLeft:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetRight:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetRight:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->iCivID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetLeft:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetRight:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->iCivID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetLeft:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetRight:I

    return-void
.end method

.method private final getImageScale()F
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 6

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p5, v0, v0, v0, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 p4, 0x40000000    # 2.0f

    :try_start_0
    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->iCivID:I

    if-ltz p5, :cond_0

    invoke-static {p5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p5

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetLeft:I

    add-int v2, p2, p5

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p5, p5, 0x2

    add-int/2addr p5, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result v3

    mul-float/2addr v1, v3

    div-float/2addr v1, p4

    float-to-int v1, v1

    sub-int v3, p5, v1

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p5, p5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result v1

    mul-float/2addr p5, v1

    float-to-int v4, p5

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p5, p5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result v1

    mul-float/2addr p5, v1

    float-to-int v5, p5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_0

    :cond_0
    sget p5, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {p5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetLeft:I

    add-int v2, p2, p5

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p5, p5, 0x2

    add-int/2addr p5, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result v3

    mul-float/2addr v1, v3

    div-float/2addr v1, p4

    float-to-int v1, v1

    sub-int v3, p5, v1

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p5, p5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result v1

    mul-float/2addr p5, v1

    float-to-int v4, p5

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p5, p5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result v1

    mul-float/2addr p5, v1

    float-to-int v5, p5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget p5, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {p5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetLeft:I

    add-int v2, p2, p5

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p5, p5, 0x2

    add-int/2addr p5, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result v3

    mul-float/2addr v1, v3

    div-float/2addr v1, p4

    float-to-int v1, v1

    sub-int v3, p5, v1

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p5, p5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result v1

    mul-float/2addr p5, v1

    float-to-int v4, p5

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p5, p5

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result v1

    mul-float/2addr p5, v1

    float-to-int v5, p5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_0
    sget p5, Laoc/kingdoms/lukasz/textures/Images;->flag_rect:I

    invoke-static {p5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetLeft:I

    add-int v2, p2, p5

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p2, p2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result p5

    mul-float/2addr p2, p5

    div-float/2addr p2, p4

    float-to-int p2, p2

    sub-int v3, p3, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float p2, p2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int v4, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float p2, p2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int v5, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public getHeight()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    return v0
.end method

.method public getWidth()I
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetRight:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->offsetLeft:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;->getImageScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
