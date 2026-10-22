.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonMainTitle.java"


# instance fields
.field private final LOGO_PADDING:I

.field private logoHeight:I

.field private logoWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/16 v0, 0x1e

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->LOGO_PADDING:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->mainTitle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->init(Ljava/lang/String;IIIIIIZZZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->mainTitle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42700000    # 60.0f

    sub-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->logoWidth:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->logoHeight:I

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainTitle:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getHeight()I

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v5, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimationHover:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getPosX()I

    move-result v0

    add-int v7, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getHeight()I

    move-result v10

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f129293

    const v2, 0x3efcfcfd

    const v3, 0x3e969697

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getPosX()I

    move-result v0

    add-int v7, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getWidth()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    if-eqz p4, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->COLOR_BUTTON_MENU_HOVER_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move p4, v4

    goto :goto_2

    :cond_3
    :goto_1
    const p4, 0x3f666666    # 0.9f

    :goto_2
    invoke-direct {v0, v4, v4, v4, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->logo:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getWidth()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->logoWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->getPosY()I

    move-result p2

    add-int/lit8 p2, p2, 0x1e

    add-int v3, p2, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->logoWidth:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainTitle;->logoHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
