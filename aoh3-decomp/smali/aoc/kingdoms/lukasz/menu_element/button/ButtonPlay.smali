.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "ButtonPlay.java"


# instance fields
.field public flipX:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 9

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    iput-boolean p6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->flipX:Z

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    sget p4, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosY()I

    move-result p2

    add-int v3, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getHeight()I

    move-result v5

    iget-boolean v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->flipX:Z

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto :goto_1

    :cond_1
    :goto_0
    sget p4, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay2:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosY()I

    move-result p2

    add-int v3, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getHeight()I

    move-result v5

    iget-boolean v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->flipX:Z

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :goto_1
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getTextToDraw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosX()I

    move-result v3

    iget-boolean v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->flipX:Z

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonPlayPADDING:I

    :goto_0
    add-int/2addr v3, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getWidth()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->buttonPlayPADDING:I

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    add-int v6, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->iTextHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v7, v2, p3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_1
    iget v10, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getTextToDraw()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosX()I

    move-result v3

    iget-boolean v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->flipX:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonPlayPADDING:I

    :goto_1
    add-int/2addr v3, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getWidth()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buttonPlayPADDING:I

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getTextWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    add-int v12, v3, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->iTextHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v13, v2, p3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonPlay;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getHeight()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method
