.class public Laoc/kingdoms/lukasz/map/ColonizationManager;
.super Ljava/lang/Object;
.source "ColonizationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static establishSettlement(III)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p0, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD:Z

    if-nez v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_PLAYER_TRIBAL:Z

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->TRIBAL:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS:Z

    if-eqz v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS_MIN_TURN_ID:I

    if-ge v1, v2, :cond_2

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    if-nez v1, :cond_2

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Law"

    invoke-virtual {p2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "NoColonization"

    invoke-virtual {p2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->law:I

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string p2, "NoColonization.d"

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    return v0

    :cond_2
    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/ColonizationManager;->getNumberOfSettlers(II)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-gtz p2, :cond_4

    return v0

    :cond_4
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->COLONIZATION_MAX_SETTLERS:I

    mul-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->clearPopulationData()V

    invoke-virtual {v1, p0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {p2, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationStartedTurnID(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object p2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->COLONIZATION_GROWTH_RATE_EXTRA:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationGrowthRateExtra(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addColonizationProvince(I)V

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    :goto_1
    if-ltz p1, :cond_7

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v2, p0, :cond_6

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeAllSettlers()V

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-nez v2, :cond_6

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v2, :cond_5

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    :cond_5
    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    return p2

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static establishSettlement_Gold(II)Z
    .locals 4

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_COST:F

    sub-float/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->clearPopulationData()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->ALLOW_COLONIZATION_BY_SPENDING_GOLD_SETTLERS_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationStartedTurnID(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRate()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->COLONIZATION_GROWTH_RATE_EXTRA:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationGrowthRateExtra(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addColonizationProvince(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final getNumberOfSettlers(II)I
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v2, p0, :cond_0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->getNumberOfSettlers()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final getSettlementEstablishmentProgress(I)F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->getColonizationStartedTurnID()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->COLONIZATION_TIME:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
