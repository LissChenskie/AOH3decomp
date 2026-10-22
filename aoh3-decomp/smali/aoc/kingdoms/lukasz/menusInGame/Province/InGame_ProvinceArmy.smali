.class public Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ProvinceArmy.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static final ANIMATION_TIME_MOVE:I = 0x96

.field public static besiegesProvince:Z = false

.field public static chooseProvinceExtraY:I = 0x0

.field public static iActiveID:I = 0x0

.field public static iCivFlagID:I = 0x0

.field public static iProvinceID:I = 0x0

.field public static key:Ljava/lang/String; = ""

.field public static lTime:J = 0x0L

.field public static lTimeMOVE:J = 0x0L

.field public static nTranslateX:I = 0x0

.field public static nTranslateY:I = 0x0

.field public static sActiveKEY:Ljava/lang/String; = ""


# instance fields
.field public imageOverID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 30

    move-object/from16 v15, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v14, 0x0

    iput v14, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title530:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title530:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v12, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->armyCampOver0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x2

    mul-int/lit8 v16, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    mul-int/lit8 v2, v17, 0x2

    add-int v18, v1, v2

    const-string v19, ""

    sput-boolean v14, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->besiegesProvince:Z

    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    if-lez v1, :cond_1f

    :try_start_1
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    if-lt v1, v2, :cond_0

    :try_start_2
    sput v14, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move/from16 v27, v11

    move/from16 v28, v12

    move-object v11, v13

    goto/16 :goto_f

    :cond_0
    :goto_0
    :try_start_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v9

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->iActiveID:I

    sput v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->tDivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->key:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iCivFlagID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-ltz v9, :cond_1

    :try_start_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_1
    :try_start_5
    sput-object v19, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyID;->getButtonHeight()I

    move-result v1

    add-int v1, v1, v16

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v20, v1, v2

    if-ltz v9, :cond_1f

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    if-nez v1, :cond_2

    :try_start_6
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$1;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "NoGeneral"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iCivFlagID:I

    move-object v1, v7

    move-object/from16 v2, p0

    move/from16 v5, v17

    move/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;III)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move/from16 v26, v9

    move/from16 v27, v11

    move/from16 v28, v12

    move-object v11, v13

    goto/16 :goto_2

    :cond_2
    :try_start_7
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$2;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v3, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iCivFlagID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v7, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v10, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v14, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v14, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    move/from16 v22, v2

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    move-object/from16 v23, v2

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getCombatExperience()I

    move-result v24
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object v1, v8

    move-object/from16 v2, p0

    move/from16 v25, v7

    move/from16 v7, v17

    move-object v15, v8

    move/from16 v8, v20

    move/from16 v26, v9

    move/from16 v9, v25

    move/from16 v21, v10

    move/from16 v10, v22

    move/from16 v27, v11

    move/from16 v11, v21

    move/from16 v28, v12

    move v12, v14

    move-object v14, v13

    move-object/from16 v13, v23

    move-object/from16 v29, v14

    move/from16 v14, v24

    :try_start_8
    invoke-direct/range {v1 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v11, v29

    :try_start_9
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v20, v20, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    :cond_3
    move v13, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    move/from16 v14, v26

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const-string v2, "ArmyIsFightingInABattle"

    const-string v3, "ArmyIsRetreating"

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    :goto_3
    :try_start_a
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnitsSize()I

    move-result v4

    if-ge v1, v4, :cond_5

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_5
    const/4 v1, -0x1

    :goto_4
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v4, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_6
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    const-string v4, ": "

    if-eqz v2, :cond_8

    if-ltz v1, :cond_7

    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_8
    if-ltz v1, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "MovingTo"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Moving"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :goto_5
    :try_start_c
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-nez v2, :cond_a

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea0:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    move-object/from16 v15, p0

    :try_start_d
    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    :goto_6
    const/4 v4, 0x2

    goto/16 :goto_8

    :cond_a
    move-object/from16 v15, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v2, v12, :cond_b

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea1:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_6

    :cond_b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea2:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto/16 :goto_8

    :cond_c
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea3:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto/16 :goto_8

    :cond_d
    const/4 v4, 0x2

    move-object/from16 v15, p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-nez v2, :cond_e

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyMove0:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto/16 :goto_8

    :cond_e
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v2, v12, :cond_f

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyMove1:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto/16 :goto_8

    :cond_f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v2, v4, :cond_10

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyMove2:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto/16 :goto_8

    :cond_10
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyMove3:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v15, p0

    goto/16 :goto_d

    :cond_11
    const/4 v4, 0x2

    move-object/from16 v15, p0

    :try_start_e
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v1, :cond_12

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_7

    :cond_12
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-eqz v1, :cond_13

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_13
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ArmyBesiegesProvince"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    :try_start_f
    sput-boolean v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->besiegesProvince:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_7

    :cond_15
    :try_start_10
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "WaitingForOrders"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    :goto_7
    :try_start_11
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-nez v2, :cond_16

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea0:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto/16 :goto_8

    :cond_16
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v2, v12, :cond_17

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea1:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_8

    :cond_17
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v2, v4, :cond_18

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea2:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_8

    :cond_18
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyAtSea3:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_8

    :cond_19
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-nez v2, :cond_1a

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyCampOver0:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_8

    :cond_1a
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v2, v12, :cond_1b

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyCampOver1:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_8

    :cond_1b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    if-ne v2, v4, :cond_1c

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyCampOver2:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    goto :goto_8

    :cond_1c
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->armyCampOver3:I

    iput v2, v15, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    :goto_8
    move-object/from16 v19, v1

    :try_start_12
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$3;

    const-string v3, ""

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    mul-int/2addr v1, v4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v21

    move-object v1, v10

    move-object/from16 v2, p0

    move v4, v5

    move v5, v6

    move/from16 v6, v17

    move/from16 v7, v20

    move-object v12, v10

    move/from16 v10, v21

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-boolean v2, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v2, :cond_1e

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_MANPOWER:Z

    if-eqz v2, :cond_1e

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :cond_1e

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_a

    :cond_1d
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$5;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-object v3, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->TEXT_UNKNOWN_MANPOWER:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v8, v1, v2

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v5, v17

    move/from16 v6, v20

    move v9, v13

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_b

    :goto_9
    move/from16 v6, v20

    goto :goto_c

    :cond_1e
    :goto_a
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$4;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMorale:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v8, v1, v2

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v5, v17

    move/from16 v6, v20

    move v9, v13

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :goto_b
    add-int/2addr v1, v2

    add-int v20, v20, v1

    goto :goto_9

    :goto_c
    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$6;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getArmyMovementSpeed()F

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int v8, v1, v2

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v5, v17

    move v9, v13

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    goto :goto_11

    :catch_2
    move-exception v0

    :goto_d
    move-object/from16 v19, v1

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v11, v29

    goto :goto_e

    :catch_6
    move-exception v0

    move/from16 v27, v11

    move/from16 v28, v12

    move-object v11, v13

    :goto_e
    move-object v1, v0

    :goto_f
    :try_start_13
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_11

    :catch_7
    move-exception v0

    goto :goto_10

    :cond_1f
    move/from16 v27, v11

    move/from16 v28, v12

    move-object v11, v13

    goto :goto_11

    :catch_8
    move-exception v0

    move/from16 v27, v11

    move/from16 v28, v12

    move-object v11, v13

    :goto_10
    move-object v1, v0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_11
    move-object/from16 v4, v19

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v1, :cond_21

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    if-ge v2, v3, :cond_20

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    :cond_20
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_21
    move/from16 v3, v27

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v9, v1, v8

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v10, v28

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v10, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v18, v18, v1

    sput v18, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosX:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyID;->getButtonHeight()I

    move-result v1

    add-int/2addr v1, v9

    add-int v1, v1, v16

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosY:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mPosX:I

    sub-int v12, v10, v1

    sput v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyUnits;->mWidth:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mPosX:I

    sput v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mPosY:I

    sput v10, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;->mWidth:I

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$7;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->title530:I

    move-object v1, v12

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move v4, v9

    move v5, v10

    move v6, v8

    move-object v7, v11

    move v8, v13

    move v9, v14

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method public static centerToArmy()V
    .locals 5

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iCivFlagID:I

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 17

    move-object/from16 v7, p0

    const-string v8, "rebuildInGame_ProvinceArmy"

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTime:J

    sub-long/2addr v4, v9

    long-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v1, p3, v1

    move v3, v0

    move v4, v1

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    move/from16 v4, p3

    :goto_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-wide v5, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTimeMOVE:J

    sub-long/2addr v5, v9

    long-to-float v2, v5

    const/high16 v5, 0x43160000    # 150.0f

    div-float/2addr v2, v5

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    :cond_1
    sput v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateX:I

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->nTranslateY:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosX()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    move-object/from16 v6, p1

    invoke-static {v6, v0, v1, v2, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosX()I

    move-result v0

    add-int v10, v0, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosY()I

    move-result v0

    add-int v11, v0, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v12, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v13, v0, v1

    const/4 v14, 0x0

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->insideTop530:I

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->insideBot530:I

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v16}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    iget v0, v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosX()I

    move-result v0

    add-int v11, v0, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getPosY()I

    move-result v0

    add-int v12, v0, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getHeight()I

    move-result v0

    iget v1, v7, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->imageOverID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-super/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->besiegesProvince:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "WaitingForOrders"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->besiegesProvince:Z

    :cond_2
    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-nez v0, :cond_3

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$8;

    const-string v1, "setVisibleInGame_ProvinceArmy"

    invoke-direct {v0, v7, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_1

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lt v0, v2, :cond_4

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$9;

    invoke-direct {v0, v7, v8}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_1

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getArmyBattleKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->key:Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$10;

    const-string v1, "rebuildInGame_Battle"

    invoke-direct {v0, v7, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->checkActiveArmy_Fog()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$11;

    invoke-direct {v0, v7, v8}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_6
    return-void
.end method

.method public getPosY()I
    .locals 2

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->chooseProvinceMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    :cond_0
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

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

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->getVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->lTime:J

    :cond_0
    if-nez p1, :cond_3

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyMode:Z

    :cond_1
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    if-eqz v0, :cond_2

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->regroupArmyMode:Z

    :cond_2
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    if-eqz v0, :cond_3

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    :cond_3
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    return-void
.end method
