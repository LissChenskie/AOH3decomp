.class public Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Buildings.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iProvinceID:I


# instance fields
.field private lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const-wide/16 v0, 0x0

    move-object/from16 v11, p0

    iput-wide v0, v11, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->lTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v14, v2, v3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v15, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v2, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$1;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "BuildingsConstructed"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v8, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    add-int v9, v2, v3

    const/4 v7, 0x0

    move-object v2, v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v17, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    const/4 v10, 0x0

    add-int/lit8 v18, v2, 0x0

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    mul-int/lit8 v2, v1, 0x2

    sub-int v19, v13, v2

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v2, v9

    move v6, v1

    move/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v22, v9

    move/from16 v9, v20

    move v11, v10

    move/from16 v10, v21

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;-><init>(ZIIIIIZZ)V

    move-object/from16 v2, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v18, v18, v2

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$2;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "UniqueCapitalBuildings"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v8, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    add-int v9, v2, v3

    move-object v2, v10

    move-object/from16 v3, p0

    move/from16 v7, v18

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v18, v18, v2

    move v10, v11

    move/from16 v3, v17

    move/from16 v2, v18

    :goto_0
    sget v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v10, v4, :cond_2

    move/from16 v18, v2

    move v9, v11

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v9, v2, :cond_1

    if-eqz v3, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-nez v2, :cond_0

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$3;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Buildings"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v20, v13, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x6

    add-int v21, v2, v3

    move-object v2, v8

    move-object/from16 v3, p0

    move/from16 v7, v18

    move-object v11, v8

    move/from16 v8, v20

    move/from16 v20, v9

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;Ljava/lang/String;IIIII)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v18, v18, v2

    const/4 v11, 0x0

    goto :goto_2

    :cond_0
    move/from16 v20, v9

    move v11, v3

    :goto_2
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;

    const/4 v3, 0x0

    const/16 v21, 0x1

    const/16 v23, 0x1

    move-object v2, v9

    move v4, v10

    move/from16 v5, v20

    move v6, v1

    move/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v24, v9

    move/from16 v9, v21

    move/from16 v21, v10

    move/from16 v10, v23

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;-><init>(ZIIIIIZZ)V

    move-object/from16 v2, v24

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    add-int v18, v18, v2

    add-int/lit8 v9, v20, 0x1

    move v3, v11

    move/from16 v10, v21

    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_1
    move/from16 v21, v10

    add-int/lit8 v10, v21, 0x1

    move/from16 v2, v18

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_2
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v12

    sub-int/2addr v1, v15

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v13, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$4;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ConstructNewBuilding"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    move-object v2, v9

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move-object v3, v9

    move v4, v14

    move v5, v15

    move v6, v13

    move v7, v1

    move-object v8, v0

    move v9, v10

    move v10, v11

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;)J
    .locals 2

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->lTime:J

    return-wide v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p2, v0

    :cond_0
    move v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosX()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, p2, v0, v1, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosX()I

    move-result p2

    add-int v4, p2, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosY()I

    move-result p2

    add-int v5, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getHeight()I

    move-result p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v7, p2, v0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosX()I

    move-result p2

    add-int v5, p2, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getPosY()I

    move-result p2

    add-int v6, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->getHeight()I

    move-result p2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;->lTime:J

    return-void
.end method
