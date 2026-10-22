.class public Laoc/kingdoms/lukasz/menu_element/Minimap;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Minimap.java"


# static fields
.field public static minimapBoxBorder:I


# instance fields
.field public final boxColor:Lcom/badlogic/gdx/graphics/Color;

.field private iWidnowHeight:I

.field private iWindowPosX:I

.field private iWindowPosY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->boxColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->MINIMAP:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Minimap;->setPosX(I)V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/Minimap;->setPosY(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p1, p1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Minimap;->setWidth(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p1, p1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Minimap;->setHeight(I)V

    return-void
.end method

.method public static getPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public actionElement()V
    .locals 4

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->actionElement()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToMinimapClick(II)V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    :try_start_0
    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, p4, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result p4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result p5

    add-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result p4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result p5

    add-int/2addr p4, p5

    add-int v3, p4, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const p5, 0x3e4ccccd    # 0.2f

    const/4 v0, 0x0

    invoke-direct {p4, v0, v0, v0, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p4, p4, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaled_Scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p4, p4, v1

    const v2, 0x3f19999a    # 0.6f

    if-eqz p4, :cond_4

    new-instance p4, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result p5

    add-int/2addr p5, p2

    int-to-float p5, p5

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, p3

    int-to-float v3, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-direct {p4, p5, v3, v4, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result p4

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p5, p5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosX:I

    add-int/2addr p4, p5

    neg-int p4, p4

    int-to-float p4, p4

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result p5

    div-float/2addr p4, p5

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-boolean p5, p5, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapBelowZero:Z

    if-eqz p5, :cond_0

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result p5

    neg-int p5, p5

    int-to-float p5, p5

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaled_Scale:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    cmpl-float p5, p5, v3

    if-lez p5, :cond_0

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result p5

    int-to-float p5, p5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v0

    div-float v0, p5, v0

    :cond_0
    sub-float/2addr p4, v0

    float-to-int p4, p4

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p4

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p5, p5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapScaled_PosY:I

    add-int/2addr p4, p5

    neg-int p4, p4

    int-to-float p4, p4

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleY()F

    move-result p5

    div-float/2addr p4, p5

    float-to-int p4, p4

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    int-to-float p4, p4

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float p5, p5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleY()F

    move-result v0

    div-float/2addr p5, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    div-float/2addr p5, v0

    add-float/2addr p4, p5

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object p5, p5, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p5

    int-to-float p5, p5

    cmpl-float p4, p4, p5

    if-lez p4, :cond_1

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object p4, p4, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    sub-int/2addr p4, p5

    int-to-float p4, p4

    goto :goto_1

    :cond_1
    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float p4, p4

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleY()F

    move-result p5

    div-float/2addr p4, p5

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result p5

    div-float/2addr p4, p5

    :goto_1
    float-to-int p4, p4

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result p4

    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    add-int/2addr p4, p5

    add-int/lit8 p4, p4, -0x1

    add-int/2addr p4, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result p5

    add-int/2addr p4, p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr p5, v0

    add-int/lit8 p5, p5, -0x1

    add-int/2addr p5, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v0

    add-int/2addr p5, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v3

    div-float/2addr v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_2

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v3

    div-float/2addr v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v0, v3

    :goto_2
    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    add-int/lit8 v3, v3, 0x2

    invoke-static {p1, p4, p5, v0, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p4, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result p4

    iget p5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    add-int/2addr p4, p5

    add-int/2addr p4, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result p5

    add-int/2addr p4, p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v0

    add-int/2addr p5, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v1

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_3

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getMinimapScaled_ScaleX()F

    move-result v1

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    :goto_3
    float-to-int v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    invoke-static {p1, p4, p5, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception p4

    :try_start_3
    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    :cond_4
    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result p4

    neg-int p4, p4

    int-to-float p4, p4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr p4, v3

    float-to-int p4, p4

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p4

    neg-int p4, p4

    int-to-float p4, p4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    div-float/2addr p4, v3

    cmpg-float p4, p4, v0

    if-gez p4, :cond_5

    move p4, v0

    goto :goto_4

    :cond_5
    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p4

    neg-int p4, p4

    int-to-float p4, p4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    div-float/2addr p4, v3

    :goto_4
    float-to-int p4, p4

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    int-to-float p4, p4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    div-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v4

    div-float/2addr v3, v4

    add-float/2addr p4, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float p4, p4, v3

    if-lez p4, :cond_6

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object p4, p4, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    sub-int/2addr p4, v3

    int-to-float p4, p4

    goto :goto_5

    :cond_6
    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float p4, p4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleY:F

    div-float/2addr p4, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr p4, v3

    :goto_5
    float-to-int p4, p4

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result p4

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    add-int/2addr p4, v3

    add-int/lit8 p4, p4, -0x1

    add-int/2addr p4, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v3

    add-int/2addr p4, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v3, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    goto :goto_6

    :cond_7
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    :goto_6
    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    add-int/lit8 v5, v5, 0x2

    invoke-static {p1, p4, v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p4, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result p4

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    add-int/2addr p4, v3

    add-int/2addr p4, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v3

    add-int/2addr p4, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosX:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    goto :goto_7

    :cond_8
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    div-float/2addr v4, v5

    :goto_7
    float-to-int v4, v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    invoke-static {p1, p4, v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getSecondSideOfMap()Z

    move-result p4

    if-eqz p4, :cond_9

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p4, v0, v0, v0, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result p5

    add-int/2addr p4, p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v0

    add-int/2addr p5, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    div-float/2addr v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v0, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    invoke-static {p1, p4, p5, v0, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p4, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result p5

    add-int/2addr p4, p5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWindowPosY:I

    add-int/2addr p5, v0

    add-int/2addr p5, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v0

    add-int/2addr p5, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->fMinimapScaleX:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/Minimap;->iWidnowHeight:I

    invoke-static {p1, p4, p5, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_9
    :goto_8
    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object p4, p4, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOver:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosX()I

    move-result p5

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v0

    add-int/2addr p5, v0

    add-int/2addr p5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPosY()I

    move-result p2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v0

    add-int/2addr p2, v0

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, p5, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_9

    :catch_2
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_9
    return-void
.end method

.method public getHeight()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapHeight:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMinimapWidth:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
