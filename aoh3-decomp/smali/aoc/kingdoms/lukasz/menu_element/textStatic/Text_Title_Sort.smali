.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Sort;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title;
.source "Text_Title_Sort.java"


# instance fields
.field public active:Z

.field public flipY:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;IIIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title;-><init>(Ljava/lang/String;IIIIII)V

    move v0, p1

    iput-boolean v0, v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Sort;->active:Z

    move v0, p2

    iput-boolean v0, v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Sort;->flipY:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    iget-boolean p4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Sort;->active:Z

    if-eqz p4, :cond_0

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const p5, 0x3ecccccd    # 0.4f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p4, v0, v0, v0, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->activeSort:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Sort;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Sort;->getWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p4, p5

    sget p5, Laoc/kingdoms/lukasz/textures/Images;->activeSort:I

    invoke-static {p5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p5

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p4, p5

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Sort;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Sort;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->activeSort:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    const/4 v4, 0x0

    iget-boolean v5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_Sort;->flipY:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    return-void
.end method
