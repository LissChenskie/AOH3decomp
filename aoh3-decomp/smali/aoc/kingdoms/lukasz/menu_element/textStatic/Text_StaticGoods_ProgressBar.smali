.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;
.source "Text_StaticGoods_ProgressBar.java"


# static fields
.field public static progressBarBG:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public fPerc:F

.field public progressBar:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e20a0a1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dc8c8c9

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIFI)V
    .locals 11

    move-object v9, p0

    move/from16 v10, p8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;-><init>(Ljava/lang/String;IIIIIII)V

    const/4 v0, 0x0

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fPerc:F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e969697

    const v2, 0x3efafafb

    const v3, 0x3f25a5a6

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iput v10, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fPerc:F

    move/from16 v0, p9

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iCurrent:I

    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v0, v10, v0

    const v1, 0x3b808081

    if-gez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f4dcdce

    const v3, 0x3e48c8c9

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    const v0, 0x3f0ccccd    # 0.55f

    cmpg-float v0, v10, v0

    if-gez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f058586

    const v2, 0x3e54d4d5

    invoke-direct {v0, v4, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float v0, v10, v0

    const v2, 0x3f48c8c9

    if-gez v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v2, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    const v0, 0x3f7ae148    # 0.98f

    cmpg-float v0, v10, v0

    if-gez v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc8c8c9

    const v3, 0x3d20a0a1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f169697

    const v2, 0x3cc0c0c1

    const v3, 0x3db8b8b9

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIFIZ)V
    .locals 11

    move-object v9, p0

    move/from16 v10, p8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;-><init>(Ljava/lang/String;IIIIIII)V

    const/4 v0, 0x0

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fPerc:F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e969697

    const v2, 0x3efafafb

    const v3, 0x3f25a5a6

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iput v10, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fPerc:F

    move/from16 v0, p9

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iCurrent:I

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v10, v0

    const v1, 0x3b808081

    if-gez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f4dcdce

    const v3, 0x3e48c8c9

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3e000000    # 0.125f

    cmpg-float v0, v10, v0

    if-gez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f058586

    const v2, 0x3e54d4d5

    invoke-direct {v0, v4, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v0, v10, v0

    const v2, 0x3f48c8c9

    if-gez v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v2, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    const v0, 0x3e99999a    # 0.3f

    cmpg-float v0, v10, v0

    if-gez v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc8c8c9

    const v3, 0x3d20a0a1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f169697

    const v2, 0x3cc0c0c1

    const v3, 0x3db8b8b9

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 8

    sget-object p5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {p5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p5, p1, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {p5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosX()I

    move-result p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p5, v1

    add-int v2, p5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosY()I

    move-result p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p5, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    add-int/2addr p5, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p5, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    add-int v3, p5, p3

    sget p5, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {p5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p5

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fPerc:F

    mul-float/2addr p5, v1

    float-to-int v4, p5

    sget p5, Laoc/kingdoms/lukasz/textures/Images;->progressBar:I

    invoke-static {p5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p5

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p5, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {p5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p5, p1, v0, v1}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->fontID:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosX()I

    move-result p5

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v0

    add-int/2addr p5, v0

    add-int v5, p5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->iTextHeight:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p5, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->progressBarOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    add-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p2, p5

    add-int v6, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getIsHovered()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    move-object v7, p2

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods;->drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method
