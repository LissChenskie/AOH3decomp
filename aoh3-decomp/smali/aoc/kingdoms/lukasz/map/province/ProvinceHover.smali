.class public Laoc/kingdoms/lukasz/map/province/ProvinceHover;
.super Ljava/lang/Object;
.source "ProvinceHover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;
    }
.end annotation


# static fields
.field public static provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceHover$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final updateProvinceHoverArmy()V
    .locals 16

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v5, :cond_0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "NoGeneral"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    :goto_0
    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    :try_start_1
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v5, :cond_6

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ge v5, v7, :cond_5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/lit8 v7, v4, 0x1

    move v9, v8

    :goto_2
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v7, v10, :cond_1

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v10, v11, :cond_1

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v10, v11, :cond_1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v5, v10

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_1
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-boolean v10, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v10, :cond_3

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_MANPOWER:Z

    if-eqz v10, :cond_3

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v7, v10, :cond_3

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7, v10}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->TEXT_UNKNOWN_MANPOWER:Ljava/lang/String;

    move-object v10, v5

    move v14, v6

    goto :goto_4

    :cond_3
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    int-to-float v5, v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int/2addr v9, v7

    int-to-float v7, v9

    div-float/2addr v5, v7

    move v14, v5

    move-object v10, v6

    :goto_4
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmyPerc;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-lez v4, :cond_4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move v13, v6

    goto :goto_5

    :cond_4
    move v13, v3

    :goto_5
    move-object v9, v5

    invoke-direct/range {v9 .. v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmyPerc;-><init>(Ljava/lang/String;IIIF)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/2addr v4, v8

    goto/16 :goto_1

    :cond_6
    move v4, v3

    :goto_6
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v4, v5, :cond_c

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-lt v5, v7, :cond_b

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/lit8 v9, v4, 0x1

    move v10, v8

    :goto_7
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v9, v11, :cond_7

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v11, v12, :cond_7

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v11, v12, :cond_7

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x1

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v5, v11

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    :cond_7
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-boolean v11, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v11, :cond_9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_MANPOWER:Z

    if-eqz v11, :cond_9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v9, v11, :cond_9

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_8

    :cond_8
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->TEXT_UNKNOWN_MANPOWER:Ljava/lang/String;

    move-object v11, v5

    move v15, v6

    goto :goto_9

    :cond_9
    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    int-to-float v5, v5

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v11, v11, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v5, v10

    move v15, v5

    move-object v11, v9

    :goto_9
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmyPerc;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v13, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-lez v4, :cond_a

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move v14, v9

    goto :goto_a

    :cond_a
    move v14, v3

    :goto_a
    move-object v10, v5

    invoke-direct/range {v10 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmyPerc;-><init>(Ljava/lang/String;IIIF)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    add-int/2addr v4, v8

    goto/16 :goto_6

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_d
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-boolean v5, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v5, :cond_e

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_MANPOWER:Z

    if-eqz v5, :cond_e

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v4, v5, :cond_e

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_10

    :cond_e
    move v4, v3

    move v5, v4

    move v6, v5

    :goto_b
    :try_start_3
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v4, v7, :cond_f

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredArmy:Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :catch_1
    :cond_f
    :try_start_4
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int/2addr v5, v4

    if-eq v5, v6, :cond_10

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Manpower"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " / "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v0, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    sget-object v7, Landroidx/core/text/util/pRCP/IwYCCQBuFGwl;->tnIgT:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v6, v5

    const/16 v5, 0xa

    invoke-static {v6, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v0, v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_10
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_c

    :catch_2
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    :goto_c
    return-void
.end method

.method public static final updateProvinceHoverBattle()V
    .locals 9

    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BattleOf"

    invoke-virtual {v4, v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->battle:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :try_start_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredBattle:Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleID(ILjava/lang/String;)I

    move-result v3

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Soldiers"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v5, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    if-gez v4, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v4, v5, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v4, v5, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v8, v8, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    sget-object v7, Landroidx/core/text/util/pRCP/IwYCCQBuFGwl;->nXW:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v0, v5, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    if-gez v0, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->rebelsFlag:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v0, v3, v4, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v0, v3, v4, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;-><init>(III)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v0, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public static final updateProvinceHoverBuild()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMainMenu()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadGamesList()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarios_NewGame()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLegacies()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioWasteland()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioCivilizations()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioAssign()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioWastelandContinents()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceHover$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    goto :goto_2

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapMode;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapMode;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    goto :goto_2

    :cond_3
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceHover$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    goto :goto_2

    :cond_4
    :goto_0
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceHover$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceHover$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->provinceHoverBuild:Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    :goto_2
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public static final updateProvinceHoverCapitalFlag()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v2

    const-string v3, ""

    const-string v4, "CivilizationRank"

    const/4 v5, 0x0

    const-string v6, ": "

    if-eqz v2, :cond_0

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Religion"

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Religion;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Religion;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v4, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredCapitalProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    :goto_0
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public static final updateProvinceHoverSiege()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SiegeOf"

    invoke-virtual {v3, v5, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :try_start_0
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "SiegeProgress"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredSiegeID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSiegeProgress()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    const/16 v5, 0xa

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public static final updateShipHovered()V
    .locals 11

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "UnknownShip"

    if-ltz v2, :cond_5

    :try_start_1
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    if-ltz v2, :cond_5

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->movingBack:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, " - "

    const-string v5, "Ship"

    if-nez v2, :cond_2

    :try_start_2
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_6

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-ltz v2, :cond_6

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v4, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    const-string v5, ""

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_2

    :cond_2
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_6

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-ltz v2, :cond_6

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v4, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    const-string v5, ""

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->hoveredShipID:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_2

    :cond_5
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    const/4 v4, 0x1

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Pirates"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    :goto_2
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->provinceHover_Informations:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    :goto_3
    return-void
.end method
