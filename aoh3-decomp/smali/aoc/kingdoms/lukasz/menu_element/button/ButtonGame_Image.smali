.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "ButtonGame_Image.java"


# instance fields
.field public iconHeight:I

.field public iconWidth:I

.field public imageID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIZI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIIIIIZ)V

    iput p9, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->imageID:I

    invoke-direct {p0, p9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getImageScale(I)F

    move-result p1

    const/high16 p2, 0x3fa00000    # 1.25f

    mul-float/2addr p1, p2

    invoke-static {p9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iconWidth:I

    invoke-static {p9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iconHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIIIIZ)V

    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->imageID:I

    invoke-direct {p0, p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getImageScale(I)F

    move-result p1

    const/high16 p2, 0x3fa00000    # 1.25f

    mul-float/2addr p1, p2

    invoke-static {p8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iconWidth:I

    invoke-static {p8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iconHeight:I

    return-void
.end method

.method private final getImageScale(I)F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 14

    move-object v0, p0

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iTextWidth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iconWidth:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iconHeight:I

    div-int/lit8 v3, v7, 0x2

    sub-int/2addr v1, v3

    add-int v5, v1, p3

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iconWidth:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getTextToDraw()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iconWidth:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iconWidth:I

    add-int/2addr v1, v2

    add-int v11, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->iTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v12, v1, p3

    move/from16 v1, p4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
