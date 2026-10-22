.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;
.source "ButtonArmyGeneral2_Armies.java"


# instance fields
.field public iCivID:I

.field public iProvinceID:I

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIIIILjava/lang/String;IILjava/lang/String;I)V
    .locals 14

    move-object v13, p0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p14

    move/from16 v12, p15

    invoke-direct/range {v0 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;-><init>(Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V

    move-object/from16 v0, p11

    iput-object v0, v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    move/from16 v0, p13

    iput v0, v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    move/from16 v0, p12

    iput v0, v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iCivID:I

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    move v2, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iCivID:I

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_0

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v0, :cond_6

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    :cond_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    iput v0, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    if-ltz v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    if-eq v0, v2, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ArmyNotFound"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    :goto_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderInGame_Generals()V

    goto :goto_3

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    goto :goto_3

    :cond_5
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->iProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;->key:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->backButton:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Generals()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    :cond_6
    :goto_3
    return-void
.end method
