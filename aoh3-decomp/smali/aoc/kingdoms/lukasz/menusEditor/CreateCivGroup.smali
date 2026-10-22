.class public Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "CreateCivGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 19

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0xa

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v3, 0xa

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    const/4 v7, 0x0

    move/from16 v16, v4

    move v15, v7

    :goto_0
    sget v7, Laoc/kingdoms/lukasz/map/RulersManager;->iGroupsSize:I

    if-ge v15, v7, :cond_0

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;

    sget-object v7, Laoc/kingdoms/lukasz/map/RulersManager;->groups:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v10, v0, 0x2

    sub-int v13, v7, v10

    const/16 v17, 0x1

    move-object v7, v14

    move v10, v5

    move v11, v0

    move/from16 v12, v16

    move/from16 v18, v0

    move-object v0, v14

    move/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v4

    add-int v16, v16, v0

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v18

    goto :goto_0

    :cond_0
    new-instance v4, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const-string v8, ""

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v4

    move v10, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v5, v1, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int v8, v0, v3

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v3, v5

    move v4, v7

    move v5, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iput p1, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->GroupID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivGroup()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusEditor/CreateCivGroup;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/iOYW/ALZmnpZHj;->nXSoYf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
