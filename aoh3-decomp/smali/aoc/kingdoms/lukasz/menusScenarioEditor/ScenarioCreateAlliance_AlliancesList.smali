.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioCreateAlliance_AlliancesList.java"


# direct methods
.method public constructor <init>()V
    .locals 30

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "CreateAlliance"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    mul-int/lit8 v7, v0, 0x2

    sub-int v17, v5, v7

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v7, v14

    move-object/from16 v8, p0

    move v10, v0

    move v11, v4

    move/from16 v12, v17

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;Ljava/lang/String;IIII)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v4, v7

    const/4 v7, 0x0

    move v15, v7

    :goto_0
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v15, v7, :cond_0

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$2;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v9, v7, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->Name_Alliance:Ljava/lang/String;

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v7, 0x4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v7, v17, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v16, v7, v8

    const/16 v18, 0x1

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v0

    move v13, v4

    move/from16 v28, v5

    move-object v5, v14

    move/from16 v14, v16

    move/from16 v29, v15

    move/from16 v15, v18

    move/from16 v16, v29

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$3;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Remove"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v22, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v7, v17, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v0

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v23, v7, v8

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/16 v26, 0x1

    move-object/from16 v18, v5

    move-object/from16 v19, p0

    move/from16 v24, v4

    move/from16 v27, v29

    invoke-direct/range {v18 .. v27}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    add-int/lit8 v15, v29, 0x1

    move/from16 v5, v28

    goto :goto_0

    :cond_0
    move/from16 v28, v5

    new-instance v5, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v8, 0x0

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/model/data/xlbt/LBhZogys;->eufrh:Ljava/lang/String;

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

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v3, v7

    move/from16 v4, v28

    move v5, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 7

    add-int v2, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p2

    sub-int p2, p3, p2

    add-int/2addr p2, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p6

    invoke-virtual {p6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p6

    add-int/2addr p6, p5

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p6, v0

    invoke-static {p1, v2, p2, p4, p6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->mainBox:I

    add-int v3, p3, p7

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, p5, p2

    const/4 v6, 0x1

    move-object v0, p1

    move v4, p4

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIZ)V

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Alliances"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
