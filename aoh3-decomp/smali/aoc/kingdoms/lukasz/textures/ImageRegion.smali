.class public Laoc/kingdoms/lukasz/textures/ImageRegion;
.super Ljava/lang/Object;
.source "ImageRegion.java"


# instance fields
.field private iHeight:I

.field private iRegionHeight:I

.field private iRegionWidth:I

.field private iWidth:I

.field private textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;I)V

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;II)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    invoke-virtual/range {p0 .. p7}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/ImageRegion;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v15, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    move v13, v6

    iget v14, v15, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    move v7, v14

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/ImageRegion;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v15, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    move v13, v6

    iget v14, v15, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    move v7, v14

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/ImageRegion;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    iget-object v2, v0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    move/from16 v3, p2

    int-to-float v3, v3

    move/from16 v4, p3

    neg-int v4, v4

    iget v5, v0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move/from16 v5, p4

    int-to-float v5, v5

    move/from16 v6, p5

    int-to-float v6, v6

    move/from16 v7, p6

    int-to-float v7, v7

    move/from16 v8, p7

    int-to-float v8, v8

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v15, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    move v13, v6

    iget v7, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    move v14, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v12, v16

    invoke-virtual/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/ImageRegion;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v15, p4

    move/from16 v16, p5

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    move v13, v6

    iget v7, v12, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    move v14, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-virtual/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/ImageRegion;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move-object/from16 v15, p0

    iget v3, v15, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    sub-int v3, p5, v3

    add-int v3, p3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/ImageRegion;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Laoc/kingdoms/lukasz/textures/ImageRegion;->drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 6

    iget v4, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    iget v5, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/ImageRegion;->drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    return-void
.end method

.method public final drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 6

    iget-object v1, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    int-to-float v2, p2

    neg-int p2, p3

    sub-int/2addr p2, p5

    int-to-float v3, p2

    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    return-void
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    return v0
.end method

.method public final getRegionHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    return v0
.end method

.method public final getRegionWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    return v0
.end method

.method public final getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    return-object v0
.end method

.method public final getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    return v0
.end method

.method public final init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    iput p6, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    return-void
.end method

.method public final init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;II)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput p6, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionWidth:I

    iput p7, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iRegionHeight:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iWidth:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/textures/ImageRegion;->iHeight:I

    return-void
.end method
