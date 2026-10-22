.class public Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BuildingsGroup.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iProvinceID:I

.field public static isCapital:Z

.field public static lTime:J

.field public static mTranslateX:I

.field public static menuHeight:I

.field public static menuX:I

.field public static menuY:I


# instance fields
.field public imgBot:I

.field public imgTitle:I

.field public imgTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    if-ne v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop928:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTop:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideBot928:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgBot:I

    sput-boolean v10, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->isCapital:Z

    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title698:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop698:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTop:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideBot698:I

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgBot:I

    sput-boolean v11, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->isCapital:Z

    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    :goto_0
    move v12, v0

    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v14

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v14

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuX:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v15, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v0

    add-int/2addr v0, v15

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuY:I

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Administration"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v16

    move-object v0, v7

    move-object/from16 v1, p0

    move v6, v12

    move-object v11, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$2;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Military"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v4, v0, v12

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v7

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$3;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Economy"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v12, 0x2

    add-int v4, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v7

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->isCapital:Z

    if-eqz v0, :cond_1

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v1, 0x0

    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/JuyF/CvuNnwgYwe;->QOhNW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v12, 0x3

    add-int v4, v0, v1

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v7

    move-object v0, v11

    move-object/from16 v1, p0

    move v6, v12

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;IIIII)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    add-int v11, v1, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    add-int/2addr v11, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v15

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->menuPosY:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-nez v1, :cond_2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v15

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    move v7, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getInnerTitleHeight()I

    move-result v0

    sub-int v0, v7, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuHeight:I

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    add-int/lit8 v1, v15, -0x1

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v13, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$5;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ConstructNewBuilding"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTitle:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v14

    move v3, v15

    move v4, v13

    move v5, v7

    move-object v6, v8

    move v7, v11

    move v8, v12

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Buildings(ZZ)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 15

    move-object v6, p0

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v2, v0

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    :goto_0
    sput v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->mTranslateX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object/from16 v5, p1

    invoke-static {v5, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getPosX()I

    move-result v0

    add-int v8, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getPosY()I

    move-result v0

    add-int v9, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v11, v0, v1

    const/4 v12, 0x0

    iget v13, v6, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgTop:I

    iget v14, v6, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->imgBot:I

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public getInnerTitleHeight()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameBuildings()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->lTime:J

    return-void
.end method
