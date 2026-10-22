.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;
.source "Text_Title_BattleLine.java"


# instance fields
.field public activeLine:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 8

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->activeLine:I

    return-void
.end method


# virtual methods
.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ea66666    # 0.325f

    const/4 v10, 0x0

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e19999a    # 0.15f

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy1:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x2

    mul-int/2addr v2, v7

    add-int/2addr v1, v2

    move v11, v1

    const/4 v12, 0x0

    :goto_0
    const v14, 0x3e4ccccd    # 0.2f

    const v15, 0x3e666666    # 0.225f

    const/4 v6, 0x1

    if-ge v12, v7, :cond_2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->activeLine:I

    if-ne v6, v5, :cond_0

    const/high16 v15, 0x3f800000    # 1.0f

    :cond_0
    invoke-direct {v1, v2, v3, v4, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v15

    move-object/from16 v2, p1

    const/high16 v8, 0x3f800000    # 1.0f

    move v13, v6

    move v6, v15

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->activeLine:I

    if-ne v13, v2, :cond_1

    move v13, v8

    goto :goto_1

    :cond_1
    const v13, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-direct {v1, v8, v8, v8, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy1:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v2, v7

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_2
    move v13, v6

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    :goto_2
    const/4 v1, 0x6

    if-ge v12, v1, :cond_5

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->activeLine:I

    if-nez v5, :cond_3

    move v5, v8

    goto :goto_3

    :cond_3
    move v5, v15

    :goto_3
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->activeLine:I

    if-nez v2, :cond_4

    move v5, v8

    goto :goto_4

    :cond_4
    const v5, 0x3ecccccd    # 0.4f

    :goto_4
    invoke-direct {v1, v8, v8, v8, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v2, v7

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_5
    const/4 v12, 0x0

    :goto_5
    if-ge v12, v7, :cond_8

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->activeLine:I

    if-ne v13, v5, :cond_6

    move v5, v8

    goto :goto_6

    :cond_6
    move v5, v15

    :goto_6
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->activeLine:I

    if-ne v13, v2, :cond_7

    move v5, v8

    goto :goto_7

    :cond_7
    const v5, 0x3ecccccd    # 0.4f

    :goto_7
    invoke-direct {v1, v8, v8, v8, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy1:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v2, v7

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    :cond_8
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy1:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v7

    add-int/2addr v1, v2

    move v11, v1

    const/4 v12, 0x0

    :goto_8
    const/16 v1, 0xa

    if-ge v12, v1, :cond_b

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->activeLine:I

    if-ne v7, v5, :cond_9

    move v5, v8

    goto :goto_9

    :cond_9
    move v5, v15

    :goto_9
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v7

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v10, v10, v10, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v3, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v4

    add-int v4, v2, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->activeLine:I

    if-ne v7, v2, :cond_a

    move v5, v8

    goto :goto_a

    :cond_a
    const v5, 0x3ecccccd    # 0.4f

    :goto_a
    invoke-direct {v1, v8, v8, v8, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosX()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v11

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getPosY()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v7

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int v3, v3, p3

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v2, v7

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8

    :cond_b
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_BattleLine;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats2(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method
