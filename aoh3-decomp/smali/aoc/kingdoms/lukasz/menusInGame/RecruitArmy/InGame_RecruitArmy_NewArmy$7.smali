.class Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;
.source "InGame_RecruitArmy_NewArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIIIIZ)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;-><init>(IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 7

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getValue1()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getValue2()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getCurrent()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v4, v1}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->updateCreateNewArmy(IIZ)V

    goto :goto_4

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    const/4 v3, 0x5

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getValue1()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getValue2()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getCurrent()I

    move-result v6

    if-nez v6, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    invoke-virtual {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->updateCreateNewArmy(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy_Battlefield;->rebuildMenuIfVisible()V

    return-void
.end method

.method public actionElementPPM()V
    .locals 7

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->SHIFT_HOLD:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getValue1()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getValue2()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getCurrent()I

    move-result v5

    if-ne v5, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v3, v4, v1}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->updateCreateNewArmy(IIZ)V

    goto :goto_3

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getValue1()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getValue2()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getCurrent()I

    move-result v6

    if-ne v6, v2, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    invoke-virtual {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->updateCreateNewArmy(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy_Battlefield;->rebuildMenuIfVisible()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 8

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit_03;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iUnitID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->unitTypeID:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->iArmyID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->armyID:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getPosY()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getPaddingIMG()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    add-int v3, v0, p3

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->textWidth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/model/ia/uNBYrZVGzy;->UzvZRagmF:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->createNewArmy:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$CreateNewArmy;->numOfRegiments:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getPosX()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getPosY()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$7;->getPaddingIMG()I

    move-result v4

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    add-int v4, v0, p3

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_1
    :goto_1
    return-void
.end method
