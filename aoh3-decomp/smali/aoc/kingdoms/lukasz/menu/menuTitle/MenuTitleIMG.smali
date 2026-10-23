.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
.source "MenuTitleIMG.java"


# instance fields
.field public imageID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZZI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;IIZZ)V

    iput p6, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->imageID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;IZZ)V

    iput p5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->imageID:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 1

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, p3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;IZZ)V

    iput p4, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->imageID:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 7

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->getHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method
