.class public Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "ScenarioGovernment_List.java"


# instance fields
.field public iCivID:I


# direct methods
.method public constructor <init>()V
    .locals 24

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v10, 0x0

    iput v10, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->iCivID:I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x2

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v0, 0x4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v15, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v0, 0x2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v17

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iput v0, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->iCivID:I

    goto :goto_0

    :cond_0
    iput v10, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->iCivID:I

    :goto_0
    new-instance v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "CapitalCity"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v4, v0, v1

    mul-int/lit8 v0, v12, 0x2

    sub-int v18, v17, v0

    const/16 v19, 0x1

    move-object v0, v8

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v6, v16

    move/from16 v7, v18

    move-object v10, v8

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v19, v16, v0

    new-instance v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$2;

    const-string v2, "+"

    const/4 v4, -0x1

    div-int/lit8 v20, v18, 0x2

    add-int v21, v12, v20

    const/16 v22, 0x1

    move-object v0, v8

    move/from16 v5, v21

    move/from16 v6, v19

    move/from16 v7, v20

    move-object v10, v8

    move/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$2;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$3;

    const-string v2, "-"

    const/4 v8, 0x1

    move-object v0, v10

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$3;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    mul-int/lit8 v10, v16, 0x2

    add-int/2addr v0, v10

    add-int v19, v19, v0

    new-instance v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "MilitaryAcademy"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v4, v0, v1

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v6, v19

    move/from16 v7, v18

    move/from16 v23, v14

    move-object v14, v8

    move/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$4;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v19, v19, v0

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$5;

    const/4 v2, 0x0

    sget-object v2, Lcom/badlogic/gdx/backends/android/surfaceview/JuyF/CvuNnwgYwe;->YIyXQGsmVM:Ljava/lang/String;

    const/4 v4, -0x1

    const/4 v8, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v5, v21

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$5;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$6;

    const-string v2, "-"

    move-object v0, v14

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$6;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v10

    add-int v19, v19, v0

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$7;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "MilitaryAcademyForGenerals"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v4, v0, v1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v6, v19

    move/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$7;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v19, v19, v0

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$8;

    const-string v2, "+"

    const/4 v4, -0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v5, v21

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$8;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$9;

    const-string v2, "-"

    move-object v0, v14

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$9;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v10

    add-int v19, v19, v0

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$10;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "SupremeCourt"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v4, v0, v1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v6, v19

    move/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$10;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v19, v19, v0

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$11;

    const-string v2, "+"

    const/4 v4, -0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v5, v21

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$11;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$12;

    const-string v2, "-"

    move-object v0, v14

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$12;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v10

    add-int v19, v19, v0

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$13;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "NuclearReactor"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    add-int v4, v0, v1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v6, v19

    move/from16 v7, v18

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$13;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v19, v19, v0

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$14;

    const-string v2, "+"

    const/4 v4, -0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v5, v21

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$14;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$15;

    const-string v2, "-"

    move-object v0, v14

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List$15;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v10

    add-int v7, v19, v0

    new-instance v8, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const-string v1, ""

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v8

    move v3, v13

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;FIZZ)V

    add-int v3, v13, v15

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v13

    mul-int/lit8 v15, v15, 0x2

    sub-int/2addr v0, v15

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v0, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->iCivID:I

    if-lez v0, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v23

    move/from16 v4, v17

    move-object v6, v11

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawEditorMenuBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V
    .locals 7

    add-int v2, p2, p6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p2

    sub-int p2, p3, p2

    add-int/2addr p2, p7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioGovernment_List;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
