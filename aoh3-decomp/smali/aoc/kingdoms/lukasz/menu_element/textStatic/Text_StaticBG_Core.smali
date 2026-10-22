.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;
.source "Text_StaticBG_Core.java"


# static fields
.field protected static final ANIMATION_T:I = 0x3e8

.field protected static animationState:I

.field protected static lTimeAnimation:J


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->id:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 14

    move-object v1, p0

    move-object v9, p1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct {v0, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    const/high16 v11, 0x3f800000    # 1.0f

    :try_start_0
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->id:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    int-to-float v2, v2

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->id:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v6, v6

    div-float/2addr v2, v6

    sub-float v2, v11, v2

    mul-float/2addr v0, v2

    float-to-int v6, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v8

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxProgress(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget v0, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core$1;

    const-string v2, "rebuildCore"

    invoke-direct {v0, p0, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core$1;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->animationState:I

    if-ltz v0, :cond_4

    const-wide/16 v12, 0x3e8

    const/high16 v2, 0x447a0000    # 1000.0f

    if-nez v0, :cond_2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    mul-float/2addr v0, v11

    div-float/2addr v0, v2

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosY()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int v5, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v6, v3

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    add-int v5, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v6, v3

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->lTimeAnimation:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v4, v12

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->animationState:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->animationState:I

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->lTimeAnimation:J

    goto/16 :goto_1

    :cond_2
    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->lTimeAnimation:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    mul-float/2addr v0, v11

    div-float/2addr v0, v2

    invoke-static {v0, v11}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;->getColorLine()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosY()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int v5, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    sub-int v6, v3, v6

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosX()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int v4, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    add-int v5, v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getWidth()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v0, v6

    sub-int v6, v3, v0

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-wide v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->lTimeAnimation:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sub-long/2addr v4, v12

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->animationState:I

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->lTimeAnimation:J

    :cond_3
    :goto_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosX()I

    move-result v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v6, v0, p3

    move/from16 v2, p4

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->id:I

    return v0
.end method

.method public setIsHovered(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;->setIsHovered(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->lTimeAnimation:J

    const/4 p1, 0x0

    sput p1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Core;->animationState:I

    return-void
.end method
