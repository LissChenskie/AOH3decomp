.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMapProvinceConnections.java"


# static fields
.field public static activeProvinceID:I = -0x1


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

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections$1;

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

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections$2;

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v2, v2, 0x2

    add-int v21, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v22, v1, v2

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/16 v24, 0x1

    move-object/from16 v16, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections$2;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method

.method public static addConnection(II)Z
    .locals 12

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5a

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    if-ne v3, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    if-ne v3, p0, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    if-ne v3, p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    goto :goto_3

    :cond_6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringSeaProvince(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    goto :goto_3

    :cond_7
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    :goto_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    goto :goto_4

    :cond_8
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringSeaProvince(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    goto :goto_4

    :cond_9
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->addNeighboringProvince(I)V

    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_5
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    if-ge v4, v5, :cond_23

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    if-lez v5, :cond_21

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_6
    if-ge v6, v5, :cond_b

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    if-ne v8, v9, :cond_a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    if-ne v8, v9, :cond_a

    move v7, v0

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    if-eqz v7, :cond_1a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_7
    if-ge v6, v5, :cond_d

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    if-ne v8, v9, :cond_c

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    if-ne v8, v9, :cond_c

    move v7, v0

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_d
    if-nez v7, :cond_13

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    sub-int/2addr v5, v0

    move v6, v1

    :goto_8
    if-ltz v5, :cond_20

    if-nez v6, :cond_f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_9
    if-ge v8, v7, :cond_12

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    if-ne v9, v10, :cond_e

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_e

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_c

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_f
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_a
    if-ge v8, v7, :cond_11

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    if-ne v9, v10, :cond_10

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_10

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v1

    goto :goto_b

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    move v7, v0

    :goto_b
    if-eqz v7, :cond_12

    goto/16 :goto_19

    :cond_12
    :goto_c
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_8

    :cond_13
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    sub-int/2addr v5, v0

    :goto_d
    if-ltz v5, :cond_17

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    move v7, v1

    :goto_e
    if-ge v7, v6, :cond_15

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    if-ne v8, v9, :cond_14

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    if-ne v8, v9, :cond_14

    move v6, v0

    goto :goto_f

    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_15
    move v6, v1

    :goto_f
    if-nez v6, :cond_16

    :goto_10
    add-int/lit8 v5, v5, 0x1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    sub-int/2addr v6, v0

    if-ge v5, v6, :cond_17

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_16
    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_17
    move v5, v1

    :goto_11
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    if-ge v5, v6, :cond_20

    move v6, v1

    :goto_12
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    if-ge v6, v7, :cond_19

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    if-ne v7, v8, :cond_18

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    if-ne v7, v8, :cond_18

    move v6, v0

    goto :goto_13

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_19
    move v6, v1

    :goto_13
    if-eqz v6, :cond_20

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    sub-int/2addr v5, v0

    move v6, v1

    :goto_14
    if-ltz v5, :cond_20

    if-nez v6, :cond_1c

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_15
    if-ge v8, v7, :cond_1f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    if-ne v9, v10, :cond_1b

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_1b

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_18

    :cond_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_1c
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_16
    if-ge v8, v7, :cond_1e

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    if-ne v9, v10, :cond_1d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_1d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v1

    goto :goto_17

    :cond_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_1e
    move v7, v0

    :goto_17
    if-eqz v7, :cond_1f

    goto :goto_19

    :cond_1f
    :goto_18
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_14

    :cond_20
    :goto_19
    move v5, v0

    goto :goto_1a

    :cond_21
    move v5, v1

    :goto_1a
    if-eqz v5, :cond_22

    goto :goto_1b

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_23
    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3d

    move v4, v1

    :goto_1c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    if-ge v4, v5, :cond_3d

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    if-lez v5, :cond_3b

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_1d
    if-ge v6, v5, :cond_25

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_24

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    if-ne v8, v9, :cond_24

    move v7, v0

    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_25
    if-eqz v7, :cond_34

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_1e
    if-ge v6, v5, :cond_27

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    if-ne v8, v9, :cond_26

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    if-ne v8, v9, :cond_26

    move v7, v0

    :cond_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_27
    if-nez v7, :cond_2d

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    sub-int/2addr v5, v0

    move v6, v1

    :goto_1f
    if-ltz v5, :cond_3a

    if-nez v6, :cond_29

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_20
    if-ge v8, v7, :cond_2c

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    if-ne v9, v10, :cond_28

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_28

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_23

    :cond_28
    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_29
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_21
    if-ge v8, v7, :cond_2b

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    if-ne v9, v10, :cond_2a

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_2a

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v1

    goto :goto_22

    :cond_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    :cond_2b
    move v7, v0

    :goto_22
    if-eqz v7, :cond_2c

    goto/16 :goto_30

    :cond_2c
    :goto_23
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1f

    :cond_2d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    sub-int/2addr v5, v0

    :goto_24
    if-ltz v5, :cond_31

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    move v7, v1

    :goto_25
    if-ge v7, v6, :cond_2f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_2e

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    if-ne v8, v9, :cond_2e

    move v6, v0

    goto :goto_26

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_2f
    move v6, v1

    :goto_26
    if-nez v6, :cond_30

    :goto_27
    add-int/lit8 v5, v5, 0x1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    sub-int/2addr v6, v0

    if-ge v5, v6, :cond_31

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_30
    add-int/lit8 v5, v5, -0x1

    goto :goto_24

    :cond_31
    move v5, v1

    :goto_28
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    if-ge v5, v6, :cond_3a

    move v6, v1

    :goto_29
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    if-ge v6, v7, :cond_33

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    if-ne v7, v8, :cond_32

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    if-ne v7, v8, :cond_32

    move v6, v0

    goto :goto_2a

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_33
    move v6, v1

    :goto_2a
    if-eqz v6, :cond_3a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_34
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    sub-int/2addr v5, v0

    move v6, v1

    :goto_2b
    if-ltz v5, :cond_3a

    if-nez v6, :cond_36

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_2c
    if-ge v8, v7, :cond_39

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ne v9, v10, :cond_35

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_35

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_2f

    :cond_35
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_36
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_2d
    if-ge v8, v7, :cond_38

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ne v9, v10, :cond_37

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_37

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v1

    goto :goto_2e

    :cond_37
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_38
    move v7, v0

    :goto_2e
    if-eqz v7, :cond_39

    goto :goto_30

    :cond_39
    :goto_2f
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2b

    :cond_3a
    :goto_30
    move v5, v0

    goto :goto_31

    :cond_3b
    move v5, v1

    :goto_31
    if-eqz v5, :cond_3c

    goto :goto_32

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1c

    :cond_3d
    :goto_32
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_57

    move v4, v1

    :goto_33
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    if-ge v4, v5, :cond_57

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    if-lez v5, :cond_55

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_34
    if-ge v6, v5, :cond_3f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    if-ne v8, v9, :cond_3e

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    if-ne v8, v9, :cond_3e

    move v7, v0

    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_3f
    if-eqz v7, :cond_4e

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    move v6, v1

    move v7, v6

    :goto_35
    if-ge v6, v5, :cond_41

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_40

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v0

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    if-ne v8, v9, :cond_40

    move v7, v0

    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_35

    :cond_41
    if-nez v7, :cond_47

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    sub-int/2addr v5, v0

    move v6, v1

    :goto_36
    if-ltz v5, :cond_54

    if-nez v6, :cond_43

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_37
    if-ge v8, v7, :cond_46

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ne v9, v10, :cond_42

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_42

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_3a

    :cond_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_43
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_38
    if-ge v8, v7, :cond_45

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ne v9, v10, :cond_44

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_44

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v1

    goto :goto_39

    :cond_44
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    :cond_45
    move v7, v0

    :goto_39
    if-eqz v7, :cond_46

    goto/16 :goto_47

    :cond_46
    :goto_3a
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_36

    :cond_47
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    sub-int/2addr v5, v0

    :goto_3b
    if-ltz v5, :cond_4b

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    move v7, v1

    :goto_3c
    if-ge v7, v6, :cond_49

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_48

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    if-ne v8, v9, :cond_48

    move v6, v0

    goto :goto_3d

    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_49
    move v6, v1

    :goto_3d
    if-nez v6, :cond_4a

    :goto_3e
    add-int/lit8 v5, v5, 0x1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    sub-int/2addr v6, v0

    if-ge v5, v6, :cond_4b

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_4a
    add-int/lit8 v5, v5, -0x1

    goto :goto_3b

    :cond_4b
    move v5, v1

    :goto_3f
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    if-ge v5, v6, :cond_54

    move v6, v1

    :goto_40
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    if-ge v6, v7, :cond_4d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    if-ne v7, v8, :cond_4c

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    if-ne v7, v8, :cond_4c

    move v6, v0

    goto :goto_41

    :cond_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    :cond_4d
    move v6, v1

    :goto_41
    if-eqz v6, :cond_54

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_4e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v5

    sub-int/2addr v5, v0

    move v6, v1

    :goto_42
    if-ltz v5, :cond_54

    if-nez v6, :cond_50

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_43
    if-ge v8, v7, :cond_53

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ne v9, v10, :cond_4f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_4f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v0

    goto :goto_46

    :cond_4f
    add-int/lit8 v8, v8, 0x1

    goto :goto_43

    :cond_50
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    move v8, v1

    :goto_44
    if-ge v8, v7, :cond_52

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-ne v9, v10, :cond_51

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v10

    if-ne v9, v10, :cond_51

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v1

    goto :goto_45

    :cond_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    :cond_52
    move v7, v0

    :goto_45
    if-eqz v7, :cond_53

    goto :goto_47

    :cond_53
    :goto_46
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_42

    :cond_54
    :goto_47
    move v5, v0

    goto :goto_48

    :cond_55
    move v5, v1

    :goto_48
    if-eqz v5, :cond_56

    goto :goto_49

    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_33

    :cond_57
    :goto_49
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_58

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_58
    if-le p0, p1, :cond_59

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p0, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    goto :goto_4a

    :cond_59
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    :goto_4a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Added"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " - "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildEditorMapProvinceConnectionsList()Laoc/kingdoms/lukasz/menu/Menu;

    :cond_5a
    return v0
.end method

.method public static generateConnections()V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_f

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_BoxInBox(II)Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v0

    move v5, v4

    :goto_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v6

    if-ge v4, v6, :cond_c

    move v6, v0

    :goto_3
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v7

    if-ge v6, v7, :cond_a

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v7

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    if-ne v7, v8, :cond_8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v7

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    if-ne v7, v8, :cond_8

    const/4 v7, 0x1

    :try_start_0
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    if-ne v8, v10, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v8, v9, :cond_2

    :goto_4
    move v5, v7

    goto/16 :goto_5

    :catch_0
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v6, 0x1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    if-ne v10, v8, :cond_0

    move v8, v0

    :cond_0
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    if-ne v10, v9, :cond_1

    move v9, v0

    :cond_1
    :try_start_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    if-ne v10, v11, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v8, v9, :cond_2

    goto :goto_4

    :catch_1
    :cond_2
    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    if-ne v8, v10, :cond_5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v8, v9, :cond_5

    goto :goto_4

    :catch_2
    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v6, -0x1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    if-ne v10, v8, :cond_3

    move v8, v0

    :cond_3
    if-gez v9, :cond_4

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v9

    sub-int/2addr v9, v7

    :cond_4
    :try_start_3
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    if-ne v10, v11, :cond_5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    if-ne v8, v9, :cond_5

    goto/16 :goto_4

    :catch_3
    :cond_5
    :try_start_4
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    if-ne v8, v10, :cond_8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    if-ne v8, v9, :cond_8

    goto/16 :goto_4

    :catch_4
    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v9, v6, 0x1

    if-gez v8, :cond_6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v8

    sub-int/2addr v8, v7

    :cond_6
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsSize()I

    move-result v10

    if-ne v10, v9, :cond_7

    move v9, v0

    :cond_7
    :try_start_5
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v10

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-virtual {v11, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsX(I)I

    move-result v11

    if-ne v10, v11, :cond_8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPointsY(I)I

    move-result v9
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    if-ne v8, v9, :cond_8

    goto/16 :goto_4

    :catch_5
    :cond_8
    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_a
    :goto_5
    if-eqz v5, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_c
    :goto_6
    if-eqz v5, :cond_d

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->addConnection(II)Z

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_e
    move v1, v2

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public static final generateConnections_BoxInBox(II)Z
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v1

    invoke-static {p0, v0, v1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    invoke-static {p0, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    invoke-static {p0, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    invoke-static {p0, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    invoke-static {p1, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v2

    invoke-static {p1, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v2

    invoke-static {p1, v0, v2}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result p0

    invoke-static {p1, v0, p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->generateConnections_PointInBox(III)Z

    move-result p0

    if-eqz p0, :cond_7

    return v1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static final generateConnections_PointInBox(III)Z
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result p1

    if-lt p2, p1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result p0

    if-gt p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static keyUp(I)Z
    .locals 7

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    if-ltz v0, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_ProvinceID(I)V

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    if-ltz v0, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawDetails;->updateDrawProvinceDetails_ProvinceID_Active(I)V

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildEditorMapProvinceConnectionsList()Laoc/kingdoms/lukasz/menu/Menu;

    :cond_2
    const/16 v0, 0x2e

    const-string v1, ": "

    const-string v2, "Done"

    const/4 v3, 0x1

    if-ne p0, v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildProvinceBG(Z)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x87

    if-ne p0, v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildProvinceBG_Just(Z)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    :cond_4
    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    const/4 v1, 0x0

    if-gez v0, :cond_5

    return v1

    :cond_5
    const/16 v2, 0x42

    if-ne p0, v2, :cond_6

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->addConnection(II)Z

    move-result p0

    return p0

    :cond_6
    const/16 v2, 0x29

    if-ne p0, v2, :cond_10

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v0, p0, :cond_f

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-le v2, v4, :cond_9

    move v2, v1

    :goto_0
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    move v2, v1

    :goto_1
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    :goto_2
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    move v2, v1

    :goto_3
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_b

    move v2, v1

    :goto_4
    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_b

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    :goto_5
    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsX:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->lPointsY:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-le v1, v2, :cond_d

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->removeProvinceBorder(I)V

    goto :goto_6

    :cond_d
    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->removeProvinceBorder(I)V

    :goto_6
    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-le v1, v2, :cond_e

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v1, v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    goto :goto_7

    :cond_e
    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v1, v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addProvinceBorder(ILjava/util/List;Ljava/util/List;)V

    :cond_f
    :goto_7
    return v3

    :cond_10
    const/16 v2, 0x43

    if-ne p0, v2, :cond_15

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v0, p0, :cond_14

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeNeighboringProvince(I)V

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeNeighboringSeaProvince(I)V

    sget p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeNeighboringProvince(I)V

    sget p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeNeighboringSeaProvince(I)V

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result p0

    const/4 v0, -0x1

    if-nez p0, :cond_11

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result p0

    if-nez p0, :cond_11

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    :cond_11
    sget p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result p0

    if-nez p0, :cond_12

    sget p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result p0

    if-nez p0, :cond_12

    sget p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setLevelOfPort(I)V

    :cond_12
    sget p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-le p0, v0, :cond_13

    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeProvinceBorder(I)V

    goto :goto_8

    :cond_13
    sget p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeProvinceBorder(I)V

    :goto_8
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Removed"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildEditorMapProvinceConnectionsList()Laoc/kingdoms/lukasz/menu/Menu;

    :cond_14
    return v3

    :cond_15
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

    mul-int/lit8 v0, v0, 0x3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

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

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawEditorText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACTIVE PROVINCE ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceConnections;->activeProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nSPACE -> SET ACTIVE PROVINCE\nENTER -> ADD CONNECTION\nBACKSPACE -> REMOVE CONNECTION\nM -> REFLECT PROVINCE BORDER\nR -> REBUILD PROVINCE BACKGROUND\nF5 -> REBUILD PROVINCE BG WITHOUT CROP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

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
