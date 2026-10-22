.class public Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button_MainMenuIcon.java"


# instance fields
.field public imgID:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 13

    move-object v12, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    move v0, p1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->imgID:I

    const-string v1, ""

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->fontID:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->iTextPositionX:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v0, v0, v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v0, v0, v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d0f5c29    # 0.035f

    invoke-direct {v1, v0, v0, v0, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->getPosX()I

    move-result v1

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->getPosY()I

    move-result v1

    add-int v5, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->getHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    if-eqz p4, :cond_2

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->getIsHovered()Z

    move-result p4

    if-eqz p4, :cond_3

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_3
    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->imgID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->imgID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p2, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_MainMenuIcon;->imgID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
