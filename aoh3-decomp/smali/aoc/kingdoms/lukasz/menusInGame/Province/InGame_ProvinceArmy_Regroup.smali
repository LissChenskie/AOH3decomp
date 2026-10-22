.class public Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ProvinceArmy_Regroup.java"


# direct methods
.method public constructor <init>()V
    .locals 19

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v2, :cond_0

    :try_start_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosY:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mWidth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v3, v4

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "SelectProvincesToWhichYouWantToMoveArmies"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x3

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$1;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Brush"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->x:I

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v8, v5

    move-object/from16 v9, p0

    move v12, v0

    move v13, v1

    move v14, v3

    move v15, v2

    invoke-direct/range {v8 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$2;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Undo"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->x:I

    add-int v6, v1, v2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v13, v6, v8

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v8, v5

    move-object/from16 v9, p0

    move v12, v0

    move v14, v3

    move v15, v2

    invoke-direct/range {v8 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$3;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Clear"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->x:I

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    add-int v13, v6, v8

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v8, v5

    move-object/from16 v9, p0

    move v12, v0

    move v14, v3

    move v15, v2

    invoke-direct/range {v8 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$4;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Confirm"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v12, -0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v0

    add-int v13, v5, v3

    const/16 v17, 0x1

    move-object v8, v2

    move-object/from16 v9, p0

    move v14, v1

    move v15, v3

    move/from16 v16, v4

    invoke-direct/range {v8 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$5;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Cancel"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->x:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v5

    add-int v12, v0, v3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v0

    add-int v13, v1, v4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v8, v2

    move-object/from16 v9, p0

    move v14, v3

    move v15, v4

    invoke-direct/range {v8 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x0

    move v1, v9

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v2, 0x0

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosX:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosY:I

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mWidth:I

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    iput-boolean v9, v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy_Regroup;->drawScrollPositionAlways:Z

    return-void
.end method

.method public static final confirm()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmy_Move()V

    return-void
.end method


# virtual methods
.method public getMenuPosX()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMenuPosY()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosX()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameProvinceArmy()V

    return-void
.end method
