.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TextIcon_Siege.java"


# instance fields
.field public final ANIMATION_T:I

.field public animationState:I

.field private iFortHeight:I

.field private iFortWidth:I

.field public iProvinceID:I

.field private iSiegeHeight:I

.field private iSiegeWidth:I

.field public iTextHeight3:I

.field public iTextWidth2:I

.field public iTextWidth3:I

.field public imageID:I

.field public lTimeAnimation:J

.field public lastValue:F

.field public maxWidth:I

.field public sText2:Ljava/lang/String;

.field public sText3:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 14

    move-object v12, p0

    move-object v13, p1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lTimeAnimation:J

    const/4 v0, 0x0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->animationState:I

    const/16 v0, 0x5dc

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->ANIMATION_T:I

    const v0, -0x368e6814

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lastValue:F

    const-string v0, ""

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->sText3:Ljava/lang/String;

    const/4 v1, 0x0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move/from16 v0, p2

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iProvinceID:I

    move/from16 v0, p3

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->imageID:I

    move/from16 v0, p8

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->maxWidth:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lTimeAnimation:J

    iput-object v13, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->sText2:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextWidth2:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getImageScale(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iSiegeWidth:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getImageScale(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iSiegeHeight:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getImageScale(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iFortWidth:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getImageScale(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iFortHeight:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getTextToDraw()Ljava/lang/String;

    return-void
.end method

.method private final getImageScale(I)F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

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
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getWidth()I

    move-result v2

    sget-boolean v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->inAnimation:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->fAnimationPerc:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    :cond_0
    move v10, v2

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v11, 0x3e800000    # 0.25f

    invoke-direct {v2, v3, v4, v5, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    add-int v12, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v3, v12

    move v5, v10

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getIsHovered()Z

    move-result v5

    const v8, 0x3f266666    # 0.65f

    if-nez v5, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v11

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v8

    :goto_1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v3, v12

    move v5, v10

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v12

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    int-to-float v1, v10

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSiegeProgress()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v13, v1

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-boolean v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->inAnimation:Z

    const v14, 0x3ee66666    # 0.45f

    if-eqz v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->fAnimationPerc:F

    sub-float v5, v7, v5

    mul-float/2addr v5, v8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v12

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget v5, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->fAnimationPerc:F

    sub-float v5, v7, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v6

    add-float/2addr v5, v14

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v12

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->animationState:I

    if-ltz v1, :cond_6

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x44bb8000    # 1500.0f

    if-nez v1, :cond_4

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v14, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lTimeAnimation:J

    sub-long/2addr v4, v14

    long-to-float v1, v4

    mul-float/2addr v1, v7

    div-float/2addr v1, v3

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v7, v1

    mul-float/2addr v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    move v3, v12

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v5, 0x5dc

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->animationState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lTimeAnimation:J

    goto :goto_3

    :cond_4
    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v14, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lTimeAnimation:J

    sub-long/2addr v4, v14

    long-to-float v1, v4

    mul-float/2addr v1, v7

    div-float/2addr v1, v3

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColorBar()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    move v3, v12

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lTimeAnimation:J

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v5, 0x5dc

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    const/4 v1, 0x0

    iput v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->animationState:I

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lTimeAnimation:J

    :cond_5
    :goto_3
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_6
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v13, 0x0

    invoke-direct {v1, v13, v13, v13, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move v3, v12

    move v5, v10

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v13, v13, v13, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v1

    add-int v4, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, p3

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextWidth3:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iSiegeWidth:I

    sub-int/2addr v2, v4

    add-int v5, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight:I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight3:I

    add-int/2addr v4, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight:I

    add-int/2addr v2, v4

    add-int v6, v2, p3

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iSiegeWidth:I

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iSiegeHeight:I

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_FORT_DEFENSE:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextWidth3:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v5, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight:I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight3:I

    add-int/2addr v4, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight:I

    add-int/2addr v2, v4

    add-int v6, v2, p3

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iFortWidth:I

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iFortHeight:I

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v10, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->fontID:I

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->sText2:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextWidth:I

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextWidth2:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v12, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight:I

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight3:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v13, v2, p3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getTextToDraw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextWidth:I

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextWidth2:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v2, v6

    add-int v5, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight3:I

    add-int/2addr v6, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    add-int v6, v2, p3

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->sText3:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextWidth3:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v11, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight:I

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight3:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight:I

    add-int/2addr v2, v3

    add-int v12, v2, p3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v13}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getColorBar()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_RED:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iProvinceID:I

    if-ltz v0, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lastValue:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->lastValue:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSiegeProgress()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->setText(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v1

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFortDefense()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->sText3:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->sText3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextWidth3:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->iTextHeight3:I

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->sText:Ljava/lang/String;

    return-object v0
.end method
