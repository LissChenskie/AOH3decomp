.class public Laoc/kingdoms/lukasz/textures/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private iHeight:I

.field private iWidth:I

.field private texture:Lcom/badlogic/gdx/graphics/Texture;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/textures/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    return-void
.end method

.method private final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
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

    iget-object v2, v0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v3, p2

    int-to-float v3, v3

    iget v4, v0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    add-int v4, p3, v4

    neg-int v4, v4

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

.method private final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V
    .locals 18

    move/from16 v0, p7

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

    move-object/from16 v8, p0

    iget-object v2, v8, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v3, p2

    int-to-float v3, v3

    add-int v4, p3, v0

    neg-int v4, v4

    int-to-float v4, v4

    move/from16 v5, p4

    int-to-float v5, v5

    move/from16 v6, p5

    int-to-float v6, v6

    move/from16 v7, p6

    int-to-float v7, v7

    int-to-float v0, v0

    move v8, v0

    invoke-virtual/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    return-void
.end method

.method private final draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V
    .locals 14

    move/from16 v0, p5

    move-object v1, p0

    iget-object v3, v1, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move/from16 v2, p2

    int-to-float v4, v2

    add-int v2, p3, v0

    neg-int v2, v2

    int-to-float v5, v2

    move/from16 v2, p4

    int-to-float v6, v2

    int-to-float v7, v0

    move-object v2, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    return-void
.end method

.method private final draw_1(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V
    .locals 13

    move-object v0, p0

    iget-object v2, v0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    move v1, p2

    int-to-float v3, v1

    iget v1, v0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    add-int v1, p3, v1

    neg-int v1, v1

    int-to-float v4, v1

    move/from16 v1, p4

    int-to-float v5, v1

    move/from16 v1, p5

    int-to-float v6, v1

    move-object v1, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    int-to-float p2, p2

    iget v1, p0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    add-int/2addr p3, v1

    neg-int p3, p3

    int-to-float p3, p3

    invoke-virtual {p1, v0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v8, p4

    move/from16 v9, p4

    iget v3, v15, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    move v7, v3

    move v14, v3

    int-to-float v4, v3

    mul-float v4, v4, p4

    int-to-float v3, v3

    sub-float/2addr v4, v3

    float-to-int v3, v4

    add-int v3, p3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v13, v15, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    move v6, v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v8, p4

    move/from16 v9, p4

    move/from16 v10, p5

    iget v3, v15, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    move v7, v3

    move v14, v3

    int-to-float v4, v3

    mul-float v4, v4, p4

    int-to-float v3, v3

    sub-float/2addr v4, v3

    float-to-int v3, v4

    add-int v3, p3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v15, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    move v13, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 6

    iget-object v1, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    int-to-float v2, p2

    neg-int p2, p3

    iget p3, p0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    sub-int/2addr p2, p3

    int-to-float v3, p2

    int-to-float v4, p4

    int-to-float v5, p3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 6

    iget-object v1, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    int-to-float v2, p2

    add-int/2addr p3, p5

    neg-int p2, p3

    int-to-float v3, p2

    int-to-float v4, p4

    int-to-float v5, p5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v11, p7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v15, p8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v7, p5

    neg-int v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 13

    move-object v12, p0

    iget v8, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v9, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .locals 13

    move-object v12, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v9, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 13

    move-object v12, p0

    iget v8, v12, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    iget v9, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move v4, v8

    move v5, v9

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw_1(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 13

    move-object v12, p0

    iget v9, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v9

    move/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw_1(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v11, p7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v15, p7

    move/from16 v16, p8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v10, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v11, p9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v10, p8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v10, p8

    move/from16 v15, p9

    move/from16 v16, p10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIZZ)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    return-void
.end method

.method public final draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw2_2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIIIZZ)V

    return-void
.end method

.method public final draw2_Scale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final draw2_Scale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v6, p4

    move/from16 v13, p4

    move/from16 v7, p5

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v8, p8

    move/from16 v9, p8

    move/from16 v3, p5

    int-to-float v3, v3

    mul-float v3, v3, p8

    float-to-int v3, v3

    add-int v3, p3, v3

    move-object/from16 v12, p0

    iget v4, v12, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move/from16 v12, v17

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final drawProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v15, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    move v13, v6

    iget v7, v15, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    move v14, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    invoke-direct/range {v0 .. v16}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIIFFFIIIIZZ)V

    return-void
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    return v0
.end method

.method public final getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    return v0
.end method

.method public final init(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1, p2, p3}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/textures/Image;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p2, p4, p5}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/textures/Image;->iWidth:I

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/textures/Image;->iHeight:I

    return-void
.end method
