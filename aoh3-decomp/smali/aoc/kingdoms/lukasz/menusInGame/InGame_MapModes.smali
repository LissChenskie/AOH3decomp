.class public Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_MapModes.java"


# static fields
.field public static maxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->mapModesCivs:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->population:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->mapModesTerrain:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->updateMaxWidth(I)V

    const/4 v8, 0x0

    move v2, v8

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    array-length v3, v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-ge v2, v3, :cond_13

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    if-nez v3, :cond_0

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$1;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesCivs:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    if-ne v3, v7, :cond_1

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$2;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesTerrain:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    if-ne v3, v5, :cond_2

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$3;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesGoods:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$4;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesWonders:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    if-ne v3, v4, :cond_4

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$5;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->population:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$6;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$7;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$8;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->government:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0x8

    if-ne v3, v4, :cond_8

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$9;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesReligion:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0x9

    if-ne v3, v4, :cond_9

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$10;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->revolutionRisk:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_a

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$11;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->mapModesInfrastructure:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xb

    if-ne v3, v4, :cond_b

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$12;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->fort:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xc

    if-ne v3, v4, :cond_c

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$13;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_d

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$14;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->loot:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xe

    if-ne v3, v4, :cond_e

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$15;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->devastation:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0xf

    if-ne v3, v4, :cond_f

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$16;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->war:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_10

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$17;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_10
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0x11

    if-ne v3, v4, :cond_11

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$18;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->defensivePact:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_11
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->MAP_MODES_ORDER:[I

    aget v3, v3, v2

    const/16 v4, 0x12

    if-ne v3, v4, :cond_12

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$19;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->nonAggression:I

    invoke-direct {v3, p0, v4, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_13
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->ENABLE_PROVINCE_INCOME_MAP_MODE:Z

    if-eqz v2, :cond_14

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$20;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    invoke-direct {v2, p0, v3, v1, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :cond_14
    const/4 v1, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v2

    mul-int/2addr v2, v5

    sub-int v2, v0, v2

    const/16 v3, 0x96

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v7

    mul-int/2addr v7, v5

    add-int/2addr v0, v7

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->arrowUpDown:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v5, v4

    sub-int v5, v0, v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->arrowUpDown:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v7, v4

    add-int/2addr v0, v7

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v7, v0, v4

    const/4 v9, 0x1

    move-object v0, p0

    move v4, v5

    move v5, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    iput-boolean v8, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->drawScrollPositionAlways:Z

    return-void
.end method

.method public static actionDevastation()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVASTATION:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVASTATION:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    :cond_0
    return-void
.end method

.method public static actionGoods()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOODS:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOODS:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    :cond_0
    return-void
.end method

.method public static actionGovernment()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOVERNMENT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOVERNMENT:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    :cond_0
    return-void
.end method

.method public static actionInfrastructure()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INFRASTRUCTURE:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INFRASTRUCTURE:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    :cond_0
    return-void
.end method

.method public static actionLoot()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_LOOT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_LOOT:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    :cond_0
    return-void
.end method

.method public static actionReligion()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELIGION:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELIGION:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    :cond_0
    return-void
.end method

.method public static actionUnrest()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_UNREST:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_UNREST:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameActiveProvince:Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameActiveProvince;->resetLastActiveProvince()V

    const/4 v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceInfo(Z)V

    :cond_0
    return-void
.end method

.method public static updateMaxWidth(I)V
    .locals 2

    invoke-static {p0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->maxWidth:I

    if-le v0, v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->maxWidth:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getMenuPosY()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->minimapOfCivilizations:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/Minimap;->getPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

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

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGame()V

    return-void
.end method
