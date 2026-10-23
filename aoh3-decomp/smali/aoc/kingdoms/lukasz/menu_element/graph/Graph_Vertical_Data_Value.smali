.class public Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;
.super Ljava/lang/Object;
.source "Graph_Vertical_Data_Value.java"


# static fields
.field protected static final ALPHA:F = 0.35f

.field protected static final ALPHA_GRADIENT:F = 0.7f

.field protected static final ALPHA_GRADIENT2:F = 0.35f

.field protected static final COLOR_VALUE_BORDER:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field protected iColorDataID:I

.field protected iHeight:I

.field protected iValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->COLOR_VALUE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iValue:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iColorDataID:I

    return-void
.end method

.method private drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 12

    move-object v8, p1

    move-object/from16 v9, p7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v10, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sub-int v1, p3, p5

    sub-int v11, v1, p6

    move-object v1, p1

    move v2, p2

    move v3, v11

    move/from16 v4, p4

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p2

    move v3, v11

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v9, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    div-int/lit8 v9, p4, 0x3

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, v11

    move v4, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int v1, p2, p4

    sub-int v2, v1, v9

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    return-void
.end method


# virtual methods
.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 8

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected final getDataTypeID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iColorDataID:I

    return v0
.end method

.method protected final getHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iHeight:I

    return v0
.end method

.method protected final getValue()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iValue:I

    return v0
.end method

.method protected final setHeight(I)V
    .locals 1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iHeight:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Value;->iHeight:I

    :cond_0
    return-void
.end method
