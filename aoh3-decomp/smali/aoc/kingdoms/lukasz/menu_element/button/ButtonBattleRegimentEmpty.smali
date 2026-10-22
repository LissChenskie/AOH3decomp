.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "ButtonBattleRegimentEmpty.java"


# instance fields
.field public imageID:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->imageID:I

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->setPosX(I)V

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->setPosY(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->setWidth(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getImageAlpha(Z)F

    move-result p4

    invoke-direct {p5, v0, v0, v0, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->imageID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getPosX()I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    add-int/2addr p5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    invoke-virtual {p4, p1, p5, v0}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getIsHovered()Z

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getPosX()I

    move-result p4

    add-int v1, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getPosY()I

    move-result p2

    add-int v2, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getHeight()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    :cond_0
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getImageAlpha(Z)F
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x3e19999a    # 0.15f

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x3eb33333    # 0.35f

    :goto_1
    return p1
.end method
