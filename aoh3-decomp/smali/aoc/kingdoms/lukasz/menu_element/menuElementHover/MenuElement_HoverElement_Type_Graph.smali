.class public Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;
.super Ljava/lang/Object;
.source "MenuElement_HoverElement_Type_Graph.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;


# instance fields
.field public graph:Laoc/kingdoms/lukasz/menu_element/graph/Graph;

.field public iGraphWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;Z)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->iGraphWidth:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->iGraphWidth:I

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    const-string v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->iGraphWidth:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v7, v1, v3

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v1, v0

    move-object v3, p1

    move-object v10, p2

    move v11, p3

    invoke-direct/range {v1 .. v11}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZILaoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;Z)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->graph:Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p5

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->iGraphWidth:I

    if-eq v1, v10, :cond_0

    iput v10, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->iGraphWidth:I

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    const/4 v12, 0x0

    sget-object v12, Lcom/google/android/gms/internal/common/oss/ClXgFvsSKQc;->lLQgVDzMPUpfQbl:Ljava/lang/String;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->graph:Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    iget-object v13, v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->sTextY:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->iGraphWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int v17, v3, v4

    const/16 v18, 0x1

    const/16 v19, 0x1

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->graph:Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    iget-object v3, v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->graphType:Laoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->graph:Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->split100:Z

    move-object v11, v1

    move/from16 v16, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    invoke-direct/range {v11 .. v21}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZILaoc/kingdoms/lukasz/menu_element/graph/Graph$GraphType;Z)V

    iput-object v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->graph:Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f666666    # 0.9f

    mul-float v5, v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->getHeight2()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v6, v2, v4

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float v5, v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->getHeight2()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v6, v2, v4

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v7, p4, v5

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->getHeight2()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v6, v2, v4

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, p4

    const/4 v8, 0x0

    invoke-direct {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    add-int/lit8 v4, p3, 0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->getHeight2()I

    move-result v2

    add-int v2, p3, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v8, v8, v8, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->getHeight2()I

    move-result v2

    add-int v2, p3, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e19999a    # 0.15f

    mul-float v2, v2, p4

    invoke-direct {v1, v8, v8, v8, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->getHeight2()I

    move-result v2

    add-int v2, p3, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->getHeight2()I

    move-result v2

    add-int v2, p3, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, p3, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, p3, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v10, v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->graph:Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v4, p3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method public getHeight()I
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->graph:Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeight2()I
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->graph:Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Graph;->graph:Laoc/kingdoms/lukasz/menu_element/graph/Graph;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->getWidth()I

    move-result v0

    return v0
.end method
