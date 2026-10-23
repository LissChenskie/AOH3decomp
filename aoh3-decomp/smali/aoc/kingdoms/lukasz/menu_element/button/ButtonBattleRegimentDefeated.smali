.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegiment;
.source "ButtonBattleRegimentDefeated.java"


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegiment;-><init>(IIIIIIIZZ)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    new-instance p5, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const p4, 0x3e19999a    # 0.15f

    goto :goto_1

    :cond_1
    :goto_0
    const p4, 0x3eb33333    # 0.35f

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p5, v0, v0, v0, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;->imageID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;->getPosX()I

    move-result p5

    add-int/lit8 p5, p5, 0x1

    add-int/2addr p5, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    invoke-virtual {p4, p1, p5, v0}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;->getIsHovered()Z

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;->getPosX()I

    move-result p4

    add-int v1, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;->getPosY()I

    move-result p2

    add-int v2, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;->getHeight()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    :cond_2
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
