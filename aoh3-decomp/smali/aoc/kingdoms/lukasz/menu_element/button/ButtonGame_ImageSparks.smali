.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;
.source "ButtonGame_ImageSparks.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIZI)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;-><init>(Ljava/lang/String;IIIIIIZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;-><init>(Ljava/lang/String;IIIIIZI)V

    return-void
.end method


# virtual methods
.method public drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    sget-object p4, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;->getPosY()I

    move-result p2

    add-int v3, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_ImageSparks;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
