.class public Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BuildingsGroupID.java"


# instance fields
.field public groupID:I


# direct methods
.method public constructor <init>(I)V
    .locals 27

    move-object/from16 v13, p0

    move/from16 v14, p1

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput v14, v13, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->groupID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v0, 0x2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v12, v1, 0x4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    const/16 v17, 0x1

    const/4 v9, 0x0

    if-ltz v1, :cond_8

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    if-ltz v1, :cond_8

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    if-ne v1, v14, :cond_8

    move/from16 v18, v0

    move v8, v9

    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v8, v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-virtual {v0, v1, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ShowUpgrades:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-direct {v0, v1, v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    move v0, v9

    goto/16 :goto_2

    :cond_1
    if-lez v8, :cond_2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ShowUpgrades:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-direct {v0, v1, v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-eqz v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v0

    if-gez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v1

    if-eq v0, v1, :cond_4

    goto/16 :goto_1

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    if-eq v0, v1, :cond_5

    goto/16 :goto_1

    :cond_5
    move/from16 v0, v17

    :goto_2
    if-eqz v0, :cond_6

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$1;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    invoke-virtual {v0, v1, v8}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v3

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v4, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    mul-int/lit8 v0, v16, 0x2

    sub-int v19, v12, v0

    const/16 v20, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v5, v8

    move/from16 v6, v16

    move-object/from16 v21, v7

    move/from16 v7, v18

    move/from16 v22, v8

    move/from16 v8, v19

    move v13, v9

    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;IZIIIIIZ)V

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v18, v18, v0

    goto :goto_3

    :cond_6
    move/from16 v22, v8

    move v13, v9

    :goto_3
    add-int/lit8 v8, v22, 0x1

    move v9, v13

    move-object/from16 v13, p0

    goto/16 :goto_0

    :cond_7
    move v13, v9

    move/from16 v0, v18

    goto :goto_4

    :cond_8
    move v13, v9

    :goto_4
    move v9, v0

    move v8, v13

    :goto_5
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v8, v0, :cond_12

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    if-ne v0, v14, :cond_11

    move/from16 v18, v9

    move v9, v13

    :goto_6
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v9, v0, :cond_10

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_8

    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ShowUpgrades:Z

    if-eqz v0, :cond_a

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {v0, v8, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_7
    move v0, v13

    goto/16 :goto_9

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-eqz v0, :cond_c

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v0

    if-gez v0, :cond_c

    goto :goto_7

    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v0, :cond_d

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v1

    if-eq v0, v1, :cond_d

    goto :goto_7

    :cond_d
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v0, :cond_e

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    if-eq v0, v1, :cond_e

    goto :goto_7

    :cond_e
    :goto_8
    move/from16 v0, v17

    :goto_9
    if-eqz v0, :cond_f

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$2;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v3

    mul-int/lit8 v0, v16, 0x2

    sub-int v19, v12, v0

    const/16 v20, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v8

    move v5, v9

    move/from16 v6, v16

    move-object v13, v7

    move/from16 v7, v18

    move/from16 v22, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move/from16 v9, v20

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;IZIIIIIZ)V

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v18, v18, v0

    goto :goto_a

    :cond_f
    move/from16 v22, v8

    move/from16 v19, v9

    :goto_a
    add-int/lit8 v9, v19, 0x1

    move/from16 v8, v22

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_10
    move/from16 v22, v8

    move/from16 v9, v18

    goto :goto_b

    :cond_11
    move/from16 v22, v8

    :goto_b
    add-int/lit8 v8, v22, 0x1

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_12
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$3;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "NotAvailable"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v7, v0, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v9

    move v6, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;Ljava/lang/String;IIIIII)V

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v18, v9

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v0, :cond_13

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    const/4 v3, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    mul-int/lit8 v1, v16, 0x2

    sub-int v8, v12, v1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v1, v9

    move/from16 v6, v16

    move/from16 v7, v18

    move-object/from16 v24, v9

    move/from16 v9, v19

    move-object/from16 v19, v10

    move/from16 v10, v20

    move-object/from16 v20, v11

    move/from16 v11, v22

    move/from16 v22, v12

    move/from16 v12, v23

    invoke-direct/range {v1 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;-><init>(IZIIIIIZZZZ)V

    move-object/from16 v1, v24

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v18, v18, v1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move/from16 v12, v22

    goto :goto_c

    :cond_13
    move-object/from16 v19, v10

    move/from16 v22, v12

    move/from16 v9, v18

    goto :goto_d

    :cond_14
    move-object/from16 v19, v10

    move/from16 v22, v12

    :goto_d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SHOW_TO_BE_RESEARCHED_BUILDINGS:Z

    if-eqz v0, :cond_16

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_16

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ToBeResearched"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v7, v0, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v9

    move/from16 v6, v22

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;Ljava/lang/String;IIIIII)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v13

    move/from16 v18, v9

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v13, :cond_15

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$5;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    const/4 v3, 0x0

    move-object/from16 v10, v19

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    mul-int/lit8 v0, v16, 0x2

    move/from16 v9, v22

    sub-int v8, v9, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v6, v16

    move/from16 v7, v18

    move/from16 v25, v9

    move/from16 v9, v19

    move-object/from16 v19, v10

    move/from16 v10, v20

    move-object/from16 v26, v11

    move/from16 v11, v22

    move/from16 v20, v12

    move/from16 v12, v23

    invoke-direct/range {v0 .. v12}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;IZIIIIIZZZZ)V

    move-object/from16 v0, v26

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v18, v18, v0

    add-int/lit8 v12, v20, 0x1

    move/from16 v22, v25

    goto :goto_e

    :cond_15
    move/from16 v25, v22

    move/from16 v9, v18

    goto :goto_f

    :cond_16
    move/from16 v25, v22

    :goto_f
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuHeight:I

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, v25

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuX:I

    mul-int v12, v4, v14

    add-int v2, v0, v12

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuY:I

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->menuHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v6, v15

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    move v1, v9

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->drawScrollPositionAlways2:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 11

    move-object v8, p1

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->mTranslateX:I

    move-object v10, p0

    iget v0, v10, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->groupID:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosX()I

    move-result v1

    add-int v2, v1, v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ea66666    # 0.325f

    invoke-direct {v0, v6, v6, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosX()I

    move-result v1

    add-int v2, v1, v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v2, v1, v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object v0, p0

    move v2, v9

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameBuildings()V

    return-void
.end method
