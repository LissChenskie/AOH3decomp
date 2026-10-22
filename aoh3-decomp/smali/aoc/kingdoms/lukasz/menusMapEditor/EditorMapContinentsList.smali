.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapContinentsList.java"


# direct methods
.method public constructor <init>()V
    .locals 24

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v4, v2, 0x5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v2, v4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    const/16 v17, 0x1

    move v12, v5

    move/from16 v14, v17

    :goto_0
    if-ge v14, v15, :cond_0

    new-instance v13, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList$1;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, -0x1

    mul-int/lit8 v7, v0, 0x2

    sub-int v16, v4, v7

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object v7, v13

    move-object/from16 v8, p0

    move/from16 v20, v12

    move v12, v0

    move-object/from16 v21, v13

    move/from16 v13, v20

    move/from16 v22, v14

    move/from16 v14, v16

    move/from16 v23, v15

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;Ljava/lang/String;IIIIIZZ)V

    move-object/from16 v7, v21

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move/from16 v8, v22

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v5

    add-int v12, v13, v7

    add-int/lit8 v14, v8, 0x1

    move/from16 v15, v23

    goto :goto_0

    :cond_0
    move v13, v12

    new-instance v5, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Continents"

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v5

    move v10, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v7, v1, v3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v1

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v3, v7

    move v5, v8

    move v7, v9

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinentsList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Continents"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
