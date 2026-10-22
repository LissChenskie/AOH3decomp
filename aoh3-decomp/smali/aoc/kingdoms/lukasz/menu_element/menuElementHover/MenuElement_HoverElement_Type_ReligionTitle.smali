.class public Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;
.super Ljava/lang/Object;
.source "MenuElement_HoverElement_Type_ReligionTitle.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;


# instance fields
.field private iHeight:I

.field private iReligionID:I

.field private iWidth:I

.field private offsetLeft:I

.field private offsetRight:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->iWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->iHeight:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->iReligionID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->offsetLeft:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->offsetRight:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->getImageScale()F

    move-result p3

    mul-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->iWidth:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->getImageScale()F

    move-result p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->iHeight:I

    return-void
.end method

.method private final getImageScale()F
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->iReligionID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 6

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p5, v0, v0, v0, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget-object p4, p4, Laoc/kingdoms/lukasz/map/ReligionManager;->religionImages:Ljava/util/List;

    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->iReligionID:I

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->offsetLeft:I

    add-int v2, p2, p4

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->iHeight:I

    sub-int/2addr p2, v5

    div-int/lit8 p2, p2, 0x2

    add-int v3, p3, p2

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->iWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public getHeight()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->offsetRight:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->offsetLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ReligionTitle;->iWidth:I

    add-int/2addr v0, v1

    return v0
.end method
