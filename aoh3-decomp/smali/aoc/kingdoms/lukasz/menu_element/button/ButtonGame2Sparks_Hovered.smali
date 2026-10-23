.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;
.source "ButtonGame2Sparks_Hovered.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    sget-object p4, Laoc/kingdoms/lukasz/menus/MainMenu;->sparksColors:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager;->sparksAnimationHover:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;->getPosY()I

    move-result p2

    add-int v3, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2Sparks_Hovered;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method
