.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapProvinceNamePoints.java"


# static fields
.field public static centerPoint:Z = false

.field public static firstPoint:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$1;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, -0x1

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v13, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v14, v1, 0x2

    const/4 v15, 0x1

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$2;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v21, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v22, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v23, v1, 0x2

    const/16 v24, 0x1

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method

.method public static keyUp(I)Z
    .locals 14

    const/16 v0, 0x3e

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v0, :cond_0

    sget-boolean p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    xor-int/2addr p0, v2

    sput-boolean p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    sput-boolean v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    return v2

    :cond_0
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1

    sget-boolean p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    xor-int/2addr p0, v2

    sput-boolean p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    return v2

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_2c

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/16 v0, 0x2e

    const/4 v3, 0x3

    if-ne p0, v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    if-ne v0, v3, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    const/4 v4, 0x2

    iput v4, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    goto :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iput v3, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    :goto_0
    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$3;

    const-string v4, "updateDrawProvinceNames"

    invoke-direct {v0, v4}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_3
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/16 v6, 0x16

    const/16 v7, 0x15

    const/16 v8, 0x2f

    const/16 v9, 0x33

    const/16 v10, 0x20

    const/16 v11, 0x1d

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, -0x40800000    # -1.0f

    if-eqz v0, :cond_f

    if-ne p0, v7, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    add-float/2addr v7, v13

    iput v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    :cond_4
    if-ne p0, v6, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    add-float/2addr v6, v12

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    :cond_5
    if-ne p0, v5, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    add-float/2addr v5, v13

    iput v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    :cond_6
    if-ne p0, v4, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    add-float/2addr v4, v12

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    :cond_7
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v0, :cond_b

    if-ne p0, v11, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    :cond_8
    if-ne p0, v10, :cond_9

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    :cond_9
    if-ne p0, v9, :cond_a

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    :cond_a
    if-ne p0, v8, :cond_27

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    goto/16 :goto_1

    :cond_b
    if-ne p0, v11, :cond_c

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    :cond_c
    if-ne p0, v10, :cond_d

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    :cond_d
    if-ne p0, v9, :cond_e

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    :cond_e
    if-ne p0, v8, :cond_27

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v3

    int-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    goto/16 :goto_1

    :cond_f
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    if-eqz v0, :cond_1b

    if-ne p0, v7, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    add-float/2addr v7, v13

    iput v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    :cond_10
    if-ne p0, v6, :cond_11

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    add-float/2addr v6, v12

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    :cond_11
    if-ne p0, v5, :cond_12

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    add-float/2addr v5, v13

    iput v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    :cond_12
    if-ne p0, v4, :cond_13

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    add-float/2addr v4, v12

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    :cond_13
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v0, :cond_17

    if-ne p0, v11, :cond_14

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    :cond_14
    if-ne p0, v10, :cond_15

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    :cond_15
    if-ne p0, v9, :cond_16

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    :cond_16
    if-ne p0, v8, :cond_27

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    goto/16 :goto_1

    :cond_17
    if-ne p0, v11, :cond_18

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    :cond_18
    if-ne p0, v10, :cond_19

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    :cond_19
    if-ne p0, v9, :cond_1a

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    :cond_1a
    if-ne p0, v8, :cond_27

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v3

    int-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    goto/16 :goto_1

    :cond_1b
    if-ne p0, v7, :cond_1c

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    add-float/2addr v7, v13

    iput v7, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    :cond_1c
    if-ne p0, v6, :cond_1d

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    add-float/2addr v6, v12

    iput v6, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    :cond_1d
    if-ne p0, v5, :cond_1e

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    add-float/2addr v5, v13

    iput v5, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    :cond_1e
    if-ne p0, v4, :cond_1f

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    add-float/2addr v4, v12

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    :cond_1f
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->CTRL_HOLD:Z

    if-eqz v0, :cond_23

    if-ne p0, v11, :cond_20

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    :cond_20
    if-ne p0, v10, :cond_21

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    :cond_21
    if-ne p0, v9, :cond_22

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, -0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    :cond_22
    if-ne p0, v8, :cond_27

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v4, v4, 0xf

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    goto :goto_1

    :cond_23
    if-ne p0, v11, :cond_24

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    :cond_24
    if-ne p0, v10, :cond_25

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    :cond_25
    if-ne p0, v9, :cond_26

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v5, v5, -0x3

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    :cond_26
    if-ne p0, v8, :cond_27

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v3

    int-to-float v3, v5

    add-float/2addr v4, v3

    iput v4, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    :cond_27
    :goto_1
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_29

    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_28

    return v2

    :cond_28
    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    :cond_29
    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_2a

    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iput p0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget-object p0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    iput v3, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    iput p0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-boolean p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    xor-int/2addr p0, v2

    sput-boolean p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    :cond_2a
    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->clearProvNameData(I)V

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNameData(IZ)V

    return v2

    :cond_2b
    new-instance p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterX:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fCenterY:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fX2:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceNameData;->fY2:F

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->provinceNames:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v2, p0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->clearProvNameData(I)V

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNameData(IZ)V

    :cond_2c
    return v1
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v0, v2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v6, v0, v2

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    const/4 p1, 0x0

    sput p1, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->fboNumToGenerate_Names:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesTexture()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvinceNames;->disposeProvinceNamesFBO()V

    return-void
.end method

.method public final drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 6

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PROVINCE NAME: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "SELECT PROVINCE"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n W A S D x3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n CTRL + W A S D x15"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n ARROWS x1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menu/FQy/TGqtTWl;->kuBKwp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n C -> Center Point ON/OFF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n P -> RESET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->centerPoint:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n MODE -> CENTER POINT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-boolean v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->firstPoint:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n MODE -> LEFT POINT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n MODE -> RIGHT POINT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f19999a    # 0.6f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {p1, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr p2, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr p3, v1

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_TITLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, v0, p2, p3, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
