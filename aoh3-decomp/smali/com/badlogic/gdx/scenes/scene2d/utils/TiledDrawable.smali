.class public Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
.source "TiledDrawable.java"


# instance fields
.field private align:I

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    const/16 v0, 0xc

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->align:I

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    const/16 p1, 0xc

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->align:I

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    const/16 p1, 0xc

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->align:I

    return-void
.end method

.method public static draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFI)V
    .locals 44

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v11, v0, p6

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v12, v0, p6

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v14, v0, p6

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v15, v0, p6

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v19

    div-float v10, p4, v11

    float-to-int v0, v10

    invoke-static/range {p7 .. p7}, Lcom/badlogic/gdx/utils/Align;->isLeft(I)Z

    move-result v1

    const/high16 v20, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/16 v21, 0x0

    if-eqz v1, :cond_0

    int-to-float v1, v0

    mul-float/2addr v1, v11

    sub-float v1, p4, v1

    move v8, v0

    move/from16 v23, v1

    move/from16 v22, v21

    goto :goto_2

    :cond_0
    invoke-static/range {p7 .. p7}, Lcom/badlogic/gdx/utils/Align;->isRight(I)Z

    move-result v1

    if-eqz v1, :cond_1

    int-to-float v1, v0

    mul-float/2addr v1, v11

    sub-float v1, p4, v1

    move v8, v0

    move/from16 v22, v1

    move/from16 v23, v21

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_3

    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v9, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_0
    int-to-float v1, v0

    mul-float/2addr v1, v11

    sub-float v1, p4, v1

    mul-float v1, v1, v20

    move v8, v0

    move/from16 v22, v1

    goto :goto_1

    :cond_3
    move v8, v0

    move/from16 v22, v21

    :goto_1
    move/from16 v23, v22

    :goto_2
    div-float v7, p5, v12

    float-to-int v0, v7

    invoke-static/range {p7 .. p7}, Lcom/badlogic/gdx/utils/Align;->isTop(I)Z

    move-result v1

    if-eqz v1, :cond_4

    int-to-float v1, v0

    mul-float/2addr v1, v12

    sub-float v1, p5, v1

    move v6, v0

    move/from16 v24, v1

    move/from16 v25, v21

    goto :goto_5

    :cond_4
    invoke-static/range {p7 .. p7}, Lcom/badlogic/gdx/utils/Align;->isBottom(I)Z

    move-result v1

    if-eqz v1, :cond_5

    int-to-float v1, v0

    mul-float/2addr v1, v12

    sub-float v1, p5, v1

    move v6, v0

    move/from16 v25, v1

    move/from16 v24, v21

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_7

    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v9, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, -0x1

    :goto_3
    int-to-float v1, v0

    mul-float/2addr v1, v12

    sub-float v1, p5, v1

    mul-float v1, v1, v20

    move v6, v0

    move/from16 v24, v1

    goto :goto_4

    :cond_7
    move v6, v0

    move/from16 v24, v21

    :goto_4
    move/from16 v25, v24

    :goto_5
    cmpl-float v0, v22, v21

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    if-lez v0, :cond_b

    div-float v0, v22, v14

    sub-float v28, v18, v0

    cmpl-float v0, v24, v21

    if-lez v0, :cond_8

    div-float v0, v24, v15

    add-float v29, v17, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v22

    move/from16 v5, v24

    move/from16 v30, v14

    move v14, v6

    move/from16 v6, v28

    move/from16 v31, v7

    move/from16 v7, v29

    move/from16 v29, v11

    move v11, v8

    move/from16 v8, v18

    move/from16 v32, v9

    move/from16 v9, v17

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v0, p3, v24

    move/from16 v33, v0

    goto :goto_6

    :cond_8
    move/from16 v31, v7

    move/from16 v32, v9

    move/from16 v29, v11

    move/from16 v30, v14

    move v14, v6

    move v11, v8

    move/from16 v33, p3

    :goto_6
    if-nez v14, :cond_9

    invoke-static/range {p7 .. p7}, Lcom/badlogic/gdx/utils/Align;->isCenterVertical(I)Z

    move-result v0

    if-eqz v0, :cond_9

    sub-float v0, v19, v17

    mul-float v0, v0, v20

    sub-float v1, v26, v31

    mul-float/2addr v0, v1

    sub-float v7, v19, v0

    add-float v9, v17, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move/from16 v3, v33

    move/from16 v4, v22

    move/from16 v5, p5

    move/from16 v6, v28

    move/from16 v8, v18

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v33, v33, p5

    goto :goto_8

    :cond_9
    move/from16 v9, v27

    :goto_7
    if-ge v9, v14, :cond_a

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move/from16 v3, v33

    move/from16 v4, v22

    move v5, v12

    move/from16 v6, v28

    move/from16 v7, v19

    move/from16 v8, v18

    move/from16 v34, v9

    move/from16 v9, v17

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v33, v33, v12

    add-int/lit8 v9, v34, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    cmpl-float v0, v25, v21

    if-lez v0, :cond_c

    div-float v0, v25, v15

    sub-float v9, v19, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p2

    move/from16 v3, v33

    move/from16 v4, v22

    move/from16 v5, v25

    move/from16 v6, v28

    move/from16 v7, v19

    move/from16 v8, v18

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_9

    :cond_b
    move/from16 v31, v7

    move/from16 v32, v9

    move/from16 v29, v11

    move/from16 v30, v14

    move v14, v6

    move v11, v8

    move/from16 v33, p3

    :cond_c
    :goto_9
    cmpl-float v28, v24, v21

    if-lez v28, :cond_f

    add-float v2, p2, v22

    div-float v0, v24, v15

    add-float v33, v17, v0

    if-nez v11, :cond_d

    invoke-static/range {p7 .. p7}, Lcom/badlogic/gdx/utils/Align;->isCenterHorizontal(I)Z

    move-result v0

    if-eqz v0, :cond_d

    sub-float v0, v18, v16

    mul-float v0, v0, v20

    sub-float v1, v26, v10

    mul-float/2addr v0, v1

    add-float v6, v16, v0

    sub-float v8, v18, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, v24

    move/from16 v7, v33

    move/from16 v9, v17

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_b

    :cond_d
    move/from16 v34, v2

    move/from16 v9, v27

    :goto_a
    if-ge v9, v11, :cond_e

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v34

    move/from16 v3, p3

    move/from16 v4, v29

    move/from16 v5, v24

    move/from16 v6, v16

    move/from16 v7, v33

    move/from16 v8, v18

    move/from16 v35, v9

    move/from16 v9, v17

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v34, v34, v29

    add-int/lit8 v9, v35, 0x1

    goto :goto_a

    :cond_e
    :goto_b
    move/from16 v33, p3

    :cond_f
    add-float v22, p2, v22

    if-nez v11, :cond_10

    invoke-static/range {p7 .. p7}, Lcom/badlogic/gdx/utils/Align;->isCenterHorizontal(I)Z

    move-result v0

    if-eqz v0, :cond_10

    sub-float v0, v18, v16

    mul-float v0, v0, v20

    sub-float v1, v26, v10

    mul-float/2addr v0, v1

    add-float v1, v16, v0

    sub-float v0, v18, v0

    move/from16 v36, p4

    move/from16 v34, v0

    move/from16 v35, v1

    move/from16 v9, v32

    goto :goto_c

    :cond_10
    move v9, v11

    move/from16 v35, v16

    move/from16 v34, v18

    move/from16 v36, v29

    :goto_c
    if-nez v14, :cond_11

    invoke-static/range {p7 .. p7}, Lcom/badlogic/gdx/utils/Align;->isCenterVertical(I)Z

    move-result v0

    if-eqz v0, :cond_11

    sub-float v0, v19, v17

    mul-float v0, v0, v20

    sub-float v1, v26, v31

    mul-float/2addr v0, v1

    sub-float v1, v19, v0

    add-float v0, v17, v0

    move/from16 v38, p5

    move/from16 v37, v1

    move/from16 v8, v32

    move/from16 v32, v0

    goto :goto_d

    :cond_11
    move/from16 v38, v12

    move v8, v14

    move/from16 v32, v17

    move/from16 v37, v19

    :goto_d
    move/from16 v39, v22

    move/from16 v7, v27

    :goto_e
    if-ge v7, v9, :cond_13

    add-float v0, p3, v24

    move/from16 v33, v0

    move/from16 v6, v27

    :goto_f
    if-ge v6, v8, :cond_12

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v39

    move/from16 v3, v33

    move/from16 v4, v36

    move/from16 v5, v38

    move/from16 v40, v6

    move/from16 v6, v35

    move/from16 v41, v7

    move/from16 v7, v37

    move/from16 v42, v8

    move/from16 v8, v34

    move/from16 v43, v9

    move/from16 v9, v32

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v33, v33, v38

    add-int/lit8 v6, v40, 0x1

    move/from16 v7, v41

    move/from16 v8, v42

    move/from16 v9, v43

    goto :goto_f

    :cond_12
    move/from16 v41, v7

    move/from16 v42, v8

    move/from16 v43, v9

    add-float v39, v39, v36

    add-int/lit8 v7, v41, 0x1

    goto :goto_e

    :cond_13
    cmpl-float v32, v25, v21

    if-lez v32, :cond_15

    div-float v0, v25, v15

    sub-float v34, v19, v0

    if-nez v11, :cond_14

    invoke-static/range {p7 .. p7}, Lcom/badlogic/gdx/utils/Align;->isCenterHorizontal(I)Z

    move-result v0

    if-eqz v0, :cond_14

    sub-float v0, v18, v16

    mul-float v0, v0, v20

    sub-float v1, v26, v10

    mul-float/2addr v0, v1

    add-float v6, v16, v0

    sub-float v8, v18, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v22

    move/from16 v3, v33

    move/from16 v4, p4

    move/from16 v5, v25

    move/from16 v7, v19

    move/from16 v9, v34

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v22, v22, p4

    goto :goto_11

    :cond_14
    move/from16 v0, v27

    :goto_10
    if-ge v0, v11, :cond_16

    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v3, v22

    move/from16 v4, v33

    move/from16 v5, v29

    move/from16 v6, v25

    move/from16 v7, v16

    move/from16 v8, v19

    move/from16 v9, v18

    move/from16 v10, v34

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v22, v22, v29

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_15
    move/from16 v22, v39

    :cond_16
    :goto_11
    cmpl-float v0, v23, v21

    if-lez v0, :cond_1a

    div-float v0, v23, v30

    add-float v11, v16, v0

    if-lez v28, :cond_17

    div-float v0, v24, v15

    add-float v7, v17, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v22

    move/from16 v3, p3

    move/from16 v4, v23

    move/from16 v5, v24

    move/from16 v6, v16

    move v8, v11

    move/from16 v9, v17

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v0, p3, v24

    move v10, v0

    goto :goto_12

    :cond_17
    move/from16 v10, p3

    :goto_12
    if-nez v14, :cond_18

    invoke-static/range {p7 .. p7}, Lcom/badlogic/gdx/utils/Align;->isCenterVertical(I)Z

    move-result v0

    if-eqz v0, :cond_18

    sub-float v0, v19, v17

    mul-float v0, v0, v20

    sub-float v26, v26, v31

    mul-float v0, v0, v26

    sub-float v7, v19, v0

    add-float v9, v17, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v22

    move v3, v10

    move/from16 v4, v23

    move/from16 v5, p5

    move/from16 v6, v16

    move v8, v11

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float v10, v10, p5

    move v3, v10

    goto :goto_14

    :cond_18
    move v0, v10

    move/from16 v10, v27

    :goto_13
    if-ge v10, v14, :cond_19

    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v3, v22

    move v4, v0

    move/from16 v5, v23

    move v6, v12

    move/from16 v7, v16

    move/from16 v8, v19

    move v9, v11

    move/from16 v27, v10

    move/from16 v10, v17

    invoke-interface/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    add-float/2addr v0, v12

    add-int/lit8 v10, v27, 0x1

    goto :goto_13

    :cond_19
    move v3, v0

    :goto_14
    if-lez v32, :cond_1a

    div-float v0, v25, v15

    sub-float v9, v19, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, v22

    move/from16 v4, v23

    move/from16 v5, v25

    move/from16 v6, v16

    move/from16 v7, v19

    move v8, v11

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    :cond_1a
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 10

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getPackedColor()F

    move-result v0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->align:I

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFI)V

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setPackedColor(F)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getAlign()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->align:I

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    return v0
.end method

.method public setAlign(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->align:I

    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->scale:F

    return-void
.end method

.method public bridge synthetic tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    move-result-object p1

    return-object p1
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getLeftWidth()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setLeftWidth(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRightWidth()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setRightWidth(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getTopHeight()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setTopHeight(F)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getBottomHeight()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setBottomHeight(F)V

    return-object v0
.end method
