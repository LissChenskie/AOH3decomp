.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "TextTop.java"


# static fields
.field public static final ANIMATION_T:I = 0x3e8

.field public static final EXTRA_WIDTH_BOX_PADDING:I

.field protected static animationState:I

.field protected static lTimeAnimation:J


# instance fields
.field public WIDTH_LAST_TURN_UPDATE:I

.field public fontID2:I

.field public iTextHeight:I

.field public iTextHeight2:I

.field public iTextPosX:I

.field public iTextWidth:I

.field public iTextWidth2:I

.field public imageID:I

.field public lastValue:F

.field public sText:Ljava/lang/String;

.field public sText2:Ljava/lang/String;

.field public sparksAnimationTop:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

.field public textPosY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x3

    sput v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText2:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight:I

    const/4 v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight2:I

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sparksAnimationTop:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    const v0, -0x368c6e9b

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lastValue:F

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->WIDTH_LAST_TURN_UPDATE:I

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->imageID:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setPosX(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setPosY(I)V

    sget p4, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsHeight:I

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setHeight(I)V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setText2(Ljava/lang/String;)V

    sget p2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p1

    add-int/2addr p2, p1

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextPosX:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID2:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result p1

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight:I

    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight2:I

    add-int/2addr p2, p3

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p2, p3

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->textPosY:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getPosX()I

    move-result v1

    add-int v11, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getPosY()I

    move-result v1

    add-int v12, v1, p3

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3f266666    # 0.65f

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3e99999a    # 0.3f

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v13, 0x0

    const/high16 v14, 0x3e800000    # 0.25f

    invoke-direct {v1, v13, v13, v13, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v4, v2, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    move v3, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v13, v13, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v4, v12

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3f59999a    # 0.85f

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v8, v12, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getIsHovered()Z

    move-result v1

    const/high16 v14, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    if-nez v10, :cond_0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getIsActiveButton()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sparksAnimationTop:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v13, v13, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    if-ltz v1, :cond_4

    const-wide/16 v15, 0x3e8

    const/high16 v2, 0x447a0000    # 1000.0f

    if-nez v1, :cond_2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float/2addr v1, v14

    div-float/2addr v1, v2

    invoke-static {v1, v14}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v11, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v5, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v11, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v5, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v15

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    sget v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    goto/16 :goto_0

    :cond_2
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float/2addr v1, v14

    div-float/2addr v1, v2

    invoke-static {v1, v14}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    sub-int v5, v2, v4

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    add-int/2addr v3, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v2

    add-int/2addr v2, v12

    add-int/lit8 v4, v2, -0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v7

    float-to-int v5, v5

    sub-int v5, v2, v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v3, v15

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    :cond_3
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getImageID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    add-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getImageID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v12

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextPosX:I

    add-int v4, v11, v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->textPosY:I

    add-int v5, v12, v1

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID2:I

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText2:Ljava/lang/String;

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextPosX:I

    add-int v4, v11, v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->textPosY:I

    add-int/2addr v12, v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight:I

    add-int/2addr v12, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v12, v1

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->TEXT_TOP_BOT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final extraWidth()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->EXTRA_WIDTH_BOX_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method protected getColor2(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getImageID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->imageID:I

    return v0
.end method

.method public getIsActiveButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight:I

    return v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    return v0
.end method

.method public setIsHovered(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsHovered(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->lTimeAnimation:J

    const/4 p1, 0x0

    sput p1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->animationState:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText:Ljava/lang/String;

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight:I

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result p1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setWidth(I)V

    :cond_0
    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->WIDTH_LAST_TURN_UPDATE:I

    add-int/lit16 v0, v0, 0x16d

    if-le p1, v0, :cond_1

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth2:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setWidth(I)V

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->WIDTH_LAST_TURN_UPDATE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setText2(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->sText2:Ljava/lang/String;

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->fontID2:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth2:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextHeight2:I

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result p1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth2:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->iTextWidth2:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final setWidthOfButton()V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->extraWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->setWidth(I)V

    return-void
.end method
