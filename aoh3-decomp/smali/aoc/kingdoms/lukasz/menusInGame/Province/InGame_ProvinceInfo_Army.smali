.class public Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ProvinceInfo_Army.java"


# instance fields
.field public LAST_TIME_CHECK:J

.field public TIME_CHECK:J


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;->LAST_TIME_CHECK:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;->TIME_CHECK:J

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    const/4 v10, 0x0

    if-ltz v0, :cond_4

    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v10

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v0, v2, :cond_2

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_1

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v12, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v13, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    sget v16, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    const/4 v15, 0x0

    move-object v11, v2

    move v14, v1

    invoke-direct/range {v11 .. v16}, Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province;-><init>(ILjava/lang/String;III)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v11, v1

    move v12, v10

    :goto_1
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    if-ge v12, v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, v1, :cond_3

    new-instance v13, Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    move-object v0, v13

    move v3, v11

    move v4, v6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province;-><init>(ILjava/lang/String;III)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    const/4 v2, 0x0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title580:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v4, v0, v8

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pinnedGeneralFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceInfo()Z

    move-result v0

    move-object/from16 v1, p0

    move v6, v8

    move v8, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    iput-boolean v10, v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;->drawScrollPositionAlways:Z

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;->LAST_TIME_CHECK:J

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;->getMenuElementsSize()I

    move-result p1

    if-nez p1, :cond_1

    iget-wide p1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;->LAST_TIME_CHECK:J

    iget-wide p3, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;->TIME_CHECK:J

    add-long/2addr p1, p3

    sget-wide p3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_1

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide p1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;->LAST_TIME_CHECK:J

    const/4 p1, 0x0

    :goto_0
    :try_start_0
    sget p2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result p2

    if-ge p1, p2, :cond_1

    sget p2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p2, p3, :cond_0

    new-instance p1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army$1;

    const-string p2, "rebuildInGame_ProvinceInfo_Army"

    invoke-direct {p1, p0, p2}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public getMenuPosX()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMenuPosY()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->nTranslateY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosX()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->nTranslateY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisible()Z
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHideMenuZoomOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameProvinceInfo()V

    return-void
.end method
