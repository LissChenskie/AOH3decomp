.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonArmyIcon.java"


# static fields
.field public static maxWidth:I = 0x1


# instance fields
.field public armyKey:Ljava/lang/String;

.field public checkbox:Z

.field public imageID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(III)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    const-string v1, ""

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->iTextPositionX:I

    const/16 v6, 0x14

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->imageID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->setWidth(I)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    const-string v1, ""

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->iTextPositionX:I

    const/16 v6, 0x14

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->imageID:I

    move/from16 v0, p4

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->setWidth(I)V

    return-void
.end method

.method public constructor <init>(IIIZLjava/lang/String;)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    const-string v1, ""

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->iTextPositionX:I

    const/16 v6, 0x14

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->imageID:I

    move/from16 v0, p4

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    move-object/from16 v0, p5

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->armyKey:Ljava/lang/String;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->setWidth(I)V

    return-void
.end method

.method public constructor <init>(IIIZLjava/lang/String;I)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Government/nSju/IlLkpaQxs;->LHHsRHuQZJ:Ljava/lang/String;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->iTextPositionX:I

    const/16 v6, 0x14

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->imageID:I

    move/from16 v0, p4

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    move-object/from16 v0, p5

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->armyKey:Ljava/lang/String;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getButtonWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->setWidth(I)V

    return-void
.end method

.method public static getButtonHeight()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getButtonWidth()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->maxWidth:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getClickable()Z

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getIsHovered()Z

    move-result v5

    invoke-static {v4, v5, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyID;->getBoxAlpha(ZZZ)F

    move-result p4

    invoke-direct {v0, v1, v2, v3, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getPosX()I

    move-result p4

    add-int v6, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getPosY()I

    move-result p2

    add-int v7, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getHeight()I

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getImageID()I

    move-result p4

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getImageID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getImageID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public getCheckboxState()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    return v0
.end method

.method public getImageID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->imageID:I

    return v0
.end method

.method public setCheckboxState(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->checkbox:Z

    return-void
.end method
