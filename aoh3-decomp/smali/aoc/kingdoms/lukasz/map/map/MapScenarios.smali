.class public Laoc/kingdoms/lukasz/map/map/MapScenarios;
.super Ljava/lang/Object;
.source "MapScenarios.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;,
        Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;,
        Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;,
        Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;,
        Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;,
        Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivDataSerializer;
    }
.end annotation


# static fields
.field public static DEFAULT_VALUE:I

.field public static scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;


# instance fields
.field public SCENARIOS_SIZE:I

.field public details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;",
            ">;"
        }
    .end annotation
.end field

.field public editorProvinceReligion:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lScenarios_Preview:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public lScenarios_TagsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sActiveScenarioTag:Ljava/lang/String;

.field public scenarioEditor_isCampaign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    const/4 v0, -0x2

    sput v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->sActiveScenarioTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditor_isCampaign:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    return-void
.end method

.method public static final buildAlliancesSpecial()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecialSize:I

    if-ge v0, v1, :cond_2

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addInAllianceSpecial(I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addInAllianceSpecial(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addInAllianceSpecial(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final buildArmyPosition()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->clearArmyPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addArmyPosition(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static buildCivData()V
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0, v0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->updateCivBonuses(IIIZ)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0, v0}, Laoc/kingdoms/lukasz/map/ReligionManager;->updateCivBonuses(IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildVassals()V

    move v1, v0

    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    :try_start_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setTaxationLevel(I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setResearchLevel(I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->CORRUPTION_BASE_VALUE:F

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCorruption(F)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLegacyPerMonth()V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-void
.end method

.method public static buildCivData_Load()V
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0, v0}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->updateCivBonuses(IIIZ)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    invoke-virtual {v2, v1, v3, v0, v0}, Laoc/kingdoms/lukasz/map/ReligionManager;->updateCivBonuses(IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static buildCivData_Load2()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLegacyPerMonth()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final buildCivsColors()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateColorMap()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final buildCivsStability()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivStability()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final buildIncome()V
    .locals 3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildProsperity_AverageEconomy()V

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyMaintenance()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateIncome()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateIncome()V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public static final buildManpower()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static buildProvinceData()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/BonusesManager;->initAndBuildProvinceBonuses()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->initProvinceData()V

    return-void
.end method

.method public static final buildStartingRelationsRandom()V
    .locals 8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS_CHANCE:I

    if-lez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v4

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingRelationsRandom_IsInDistance(II)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS_CHANCE:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    if-le v4, v5, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_2
    if-ltz v3, :cond_3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS:I

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v4, v6

    cmpl-float v6, v4, v5

    if-lez v6, :cond_2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS_MIN:I

    goto :goto_3

    :cond_2
    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_RANDOM_RELATIONS_MIN:I

    neg-int v6, v6

    :goto_3
    int-to-float v6, v6

    add-float/2addr v4, v6

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v2, v7, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation(IIF)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v2, v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->setRelation(IIF)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static buildStartingRelationsRandom_IsInDistance(II)Z
    .locals 2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result p0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->RANDOM_RELATIONS_DISTANCE:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final buildVassals()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addVassal(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static loadRandomScenario()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    if-ne v1, v0, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    if-nez v1, :cond_1

    sget-boolean v1, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v2, v1, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->setRandomCiv()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    const/4 v1, 0x0

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    sput-boolean v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    sput-object v1, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menu/View;->LOAD_SCENARIO:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->dice:I

    invoke-virtual {v1, v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    return-void
.end method

.method public static final updateUQ_UI()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->UQ_UI:Z

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBGUQ:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStatsUQ:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats2UQ:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->topStats2:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->leftSideBarUQ:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->leftSideBar:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraUQ:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBGClassic:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStatsClassic:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats2Classic:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->topStats2:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->leftSideBarClassic:I

    sput v0, Laoc/kingdoms/lukasz/textures/Images;->leftSideBar:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraClassic:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    :goto_0
    return-void
.end method


# virtual methods
.method public final buildCivsGold()V
    .locals 7

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Gold:I

    sget v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    if-eq v2, v3, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Gold:I

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    goto :goto_1

    :cond_0
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final buildCivsGovernmentBuildings()V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CCL:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCapitalLevel(I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAL:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setMilitaryAcademyLevel(I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAGL:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setMilitaryAcademyForGeneralsLevel(I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->SCL:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setSupremeCourtLevel(I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->NRL:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setNuclearReactorLevel(I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildCapitalCity_Bonuses()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildMilitaryAcademy_Bonuses()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildMilitaryAcademyForGenerals_Bonuses()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildSupremeCourt_Bonuses()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildNuclearReactor_Bonuses()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public final buildCivsGovernmentBuildings_LoadSavedGame()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildCapitalCity_Bonuses()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildMilitaryAcademy_Bonuses()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildMilitaryAcademyForGenerals_Bonuses()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildNuclearReactor_Bonuses()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final buildCivsLegacy_Nukes_Aggressiveness()V
    .locals 7

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Legacy:I

    sget v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    if-eq v2, v3, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Legacy:I

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    goto :goto_1

    :cond_0
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    :goto_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Nukes:I

    if-lez v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Nukes:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setNukes(I)V

    :cond_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->v:I

    if-eqz v2, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->v:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setExtraAggressiveness(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final buildCivsManpower()V
    .locals 6

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final buildCivsNeighbors()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;->buildNeighbors(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final buildProvincesCores()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final buildProvincesEconomy()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->economy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Economy;->BASE_ECONOMY_NEUTRAL:F

    mul-float/2addr v4, v5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    goto/16 :goto_1

    :cond_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Economy:I

    if-nez v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    int-to-float v4, v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Economy:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final buildProvincesManpower()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->BASE_MANPOWER_NEUTRAL:F

    mul-float/2addr v4, v5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setManpower(F)V

    goto/16 :goto_1

    :cond_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Manpower:I

    if-nez v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    int-to-float v4, v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setManpower(F)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Manpower:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setManpower(F)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final buildProvincesPopulation()V
    .locals 14

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge v1, v2, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I

    if-eqz v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput v4, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    :goto_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v5, v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v7

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v8, :cond_0

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    neg-float v8, v8

    goto :goto_2

    :cond_0
    move v8, v4

    :goto_2
    add-float/2addr v7, v8

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v8, v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BasePopulation:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_e

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    const/high16 v6, 0x42c80000    # 100.0f

    if-nez v2, :cond_4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    int-to-float v8, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    add-float/2addr v8, v9

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget-boolean v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v9, :cond_3

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    neg-float v9, v9

    goto :goto_4

    :cond_3
    move v9, v4

    :goto_4
    add-float/2addr v6, v9

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v9, v9, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BasePopulation:I

    int-to-float v9, v9

    add-float/2addr v6, v9

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const v9, 0x461c4000    # 10000.0f

    div-float/2addr v6, v9

    mul-float/2addr v8, v6

    float-to-int v6, v8

    invoke-virtual {v2, v7, v6}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    goto/16 :goto_b

    :cond_4
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I

    if-nez v2, :cond_6

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    int-to-float v2, v2

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    add-float/2addr v2, v7

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v7

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v8, :cond_5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    neg-float v8, v8

    goto :goto_5

    :cond_5
    move v8, v4

    :goto_5
    add-float/2addr v7, v8

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v8, v8, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BasePopulation:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    div-float/2addr v7, v6

    mul-float/2addr v2, v7

    goto :goto_7

    :cond_6
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I

    int-to-float v2, v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v7, :cond_7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    neg-float v7, v7

    goto :goto_6

    :cond_7
    move v7, v4

    :goto_6
    add-float/2addr v6, v7

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v7, v7, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BasePopulation:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    div-float/2addr v6, v7

    mul-float/2addr v2, v6

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_7
    float-to-int v2, v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-nez v6, :cond_8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    goto/16 :goto_b

    :cond_8
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ne v6, v0, :cond_9

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v7

    invoke-virtual {v6, v7, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    goto/16 :goto_b

    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v5

    :goto_8
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v7, v8, :cond_a

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->CORES_STARTING_POPULATION_MIN:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->CORES_STARTING_POPULATION_RANDOM:I

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_a
    move v7, v5

    move v8, v7

    :goto_9
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v7, v9, :cond_b

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_b
    move v7, v5

    :goto_a
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v7, v9, :cond_c

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCore(I)I

    move-result v10

    int-to-float v11, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v8

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-virtual {v9, v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_c
    invoke-interface {v6}, Ljava/util/List;->clear()V

    :cond_d
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_e
    return-void
.end method

.method public final buildProvincesReligion()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion_LoadScenario(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final buildProvincesTaxEfficiency()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->BASE_TAX_EFFICIENCY_NEUTRAL:F

    mul-float/2addr v4, v5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setTaxEfficiency(F)V

    goto/16 :goto_1

    :cond_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TaxEff:I

    if-nez v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    int-to-float v4, v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setTaxEfficiency(F)V

    goto :goto_1

    :cond_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TaxEff:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v6, v6, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BaseEconomy:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v3, v2

    mul-float/2addr v4, v3

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setTaxEfficiency(F)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final buildStartingAdvisors(II)V
    .locals 5

    :goto_0
    if-ge p1, p2, :cond_4

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ADVISOR_ADMINISTRATIVE_CHANCE:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v3, v3, v4

    if-ge v0, v3, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iput-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ADVISOR_ECONOMY_CHANCE:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v3, v3, v4

    if-ge v0, v3, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iput-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ADVISOR_INNOVATION_CHANCE:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v3, v3, v4

    if-ge v0, v3, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {p1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    iput-object v3, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ADVISOR_MILITARY_CHANCE:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v1, v1, v3

    if-ge v0, v1, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final buildStartingArmy()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingArmy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final buildStartingArmy(I)V
    .locals 10

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_c

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ARMY:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v0, v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ARMY_RANDOM:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ARMY_RANDOM:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->STARTING_ARMY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    if-eq v1, p1, :cond_1

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_ARMY_VASSAL:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :cond_1
    if-lez v0, :cond_c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v3, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    if-nez v6, :cond_2

    move v3, v0

    move v5, v2

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-nez v6, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-nez v6, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-lez v5, :cond_5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-nez v5, :cond_4

    move v5, v3

    move v3, v2

    goto :goto_2

    :cond_4
    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    goto :goto_2

    :cond_5
    move v5, v2

    :goto_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    if-lez v4, :cond_6

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    new-instance v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v7, v8, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    if-lez v3, :cond_7

    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_7

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    new-instance v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v6, v7, v4}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    if-lez v3, :cond_8

    int-to-float v3, v0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->STARTING_ARMY_SIEGE_UNITS_PERC:[F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v4, v4, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v0, v3

    goto :goto_5

    :cond_8
    move v3, v2

    :goto_5
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    if-lez v4, :cond_9

    move v4, v2

    :goto_6
    if-ge v4, v0, :cond_9

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    new-instance v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v6, v7, v5}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    if-lez v0, :cond_a

    :goto_7
    if-ge v2, v3, :cond_a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-direct {v4, v5, v0}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_b

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-ne v0, p1, :cond_b

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    goto :goto_8

    :cond_b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    :goto_8
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->getGeneral_Random(I)Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-direct {v4, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_c
    :goto_9
    return-void
.end method

.method public final buildStartingGenerals(II)V
    .locals 4

    :goto_0
    if-ge p1, p2, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_NUM_OF_STARTING_GENERALS:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v1, v1, v2

    if-ge v0, v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_STARTING_GENERAL_CHANCE:[I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->getGeneral_Random(I)Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final clearData()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->AUTO_SAVE_LAST_TURN_ID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_1_ClearData()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->resetPriceChangePerc()V

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->fog:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->initFogOfWar()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->clearData()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/SiegeManager;->clearData()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->clearData()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->clearData()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->clearData()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->iLastUpdateTurnID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->THREAD_TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->clearData()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/war/WarManager;->clearData()V

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/AI/AI_Manager;->aiBudget:Laoc/kingdoms/lukasz/jakowski/AI/AI_Budget;

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiAggressivnes:I

    return-void
.end method

.method public final clearScenarios()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    return-void
.end method

.method public final createScenario()V
    .locals 7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->disposeCivilizations()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearAllianceSpecial()V

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sput v1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;->AUTO_SAVE_LAST_TURN_ID:I

    const/4 v1, 0x0

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    :try_start_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Day:I

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Month:I

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getAgeOfYear(I)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->updateManpowerImg()V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;-><init>()V

    sput-object v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    const-string v2, ""

    sput-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sAuthor:Ljava/lang/String;

    sput-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    sput-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sName:Ljava/lang/String;

    move v2, v1

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->clearData()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/WondersManager;->initProvinceWonders()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getNeutralCivilization()Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    iput v1, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    move v2, v1

    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_4

    move v3, v1

    :goto_3
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLandSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_1

    move v5, v0

    goto :goto_4

    :cond_1
    move v5, v1

    :goto_4
    invoke-virtual {v4, v5, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addProvince_Just(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBorder(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Player/Player;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    return-void
.end method

.method public final initCivilizations_ArmiesWithoutGenerals()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;->buildArmiesWithoutGenerals(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final initCivilizations_ConvertReligion()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->buildProvincesConvertReligion(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final initCivilizations_NonCore()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->buildProvincesNonCore(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadCivilizations(Z)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/Civilization;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ".json"

    const/4 v2, 0x0

    sget-object v2, Landroidx/arch/core/ht/qIuEvFbUtcea;->VKKU:Ljava/lang/String;

    const-string v3, "/Data.json"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getNeutralCivilization()Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    iput v5, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    :try_start_0
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "scenarios/"

    const-string v7, "map/"

    if-eqz v5, :cond_1

    :try_start_1
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->LANGUAGE_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :goto_1
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v3, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x1

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v7, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    invoke-virtual {v2, v7, v6}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget-object v6, v15, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v6

    new-instance v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    iget-object v8, v15, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    iget v9, v15, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->PCID:I

    iget v10, v6, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v11, v6, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v12, v6, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    iget v13, v15, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    iget v7, v6, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->ReligionID:I

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->GroupID:I

    const/16 v16, 0x1

    move/from16 v17, v6

    move-object v6, v14

    move/from16 v18, v7

    move v7, v5

    move-object/from16 p1, v2

    move-object v2, v14

    move/from16 v14, v18

    move-object/from16 v18, v3

    move-object v3, v15

    move/from16 v15, v17

    invoke-direct/range {v6 .. v16}, Laoc/kingdoms/lukasz/map/civilization/Civilization;-><init>(ILjava/lang/String;IIIIIIIZ)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_3
    :try_start_2
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->sActiveScenarioTag:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    const-string v0, ""

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->sActiveScenarioTag:Ljava/lang/String;

    :goto_4
    return-object v4
.end method

.method public final loadCivilizationsProvinces()V
    .locals 8

    const-string v0, "/DataProvinces.json"

    const-string v1, "map/"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scenarios/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;

    iget-object v5, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;->Provinces:[I

    array-length v5, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    iget-object v7, v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData_Provinces;->Provinces:[I

    aget v7, v7, v6

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_LoadScenario(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final loadCores()V
    .locals 7

    const-string v0, "scenarios/"

    const-string v1, "/Cores.json"

    const-string v2, "map/"

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;

    iget v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->id:I

    if-ltz v4, :cond_0

    iget v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->id:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->id:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->clearCores()V

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget v5, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->id:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget-object v6, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCoresData;->Cores:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->addCore_Just(I)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final loadPreviews()V
    .locals 10

    const-string v0, "previewSpecial.png"

    const-string v1, "/"

    const-string v2, "scenarios/"

    const-string v3, "map/"

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    move v4, v5

    :goto_0
    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_1
    :goto_1
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_3

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Government/nSju/IlLkpaQxs;->XAXgovSeb:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public final loadReligions(Z)V
    .locals 6

    const-string v0, "/Religions.json"

    const/4 v1, 0x0

    sget-object v1, Landroidx/arch/core/ht/qIuEvFbUtcea;->kRlRaZvVso:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadReligions_JustBuild(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "scenarios/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v4, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;

    iget v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    if-ltz v4, :cond_0

    iget v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->rel:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    if-nez p1, :cond_1

    iget v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v4, :cond_1

    iget v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_1

    iget v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    if-ne v4, v5, :cond_1

    iget v4, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v5, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->rel:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setReligionID_UpdateBonuses(I)V

    :cond_1
    if-eqz p1, :cond_0

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    iget v5, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->id:I

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioReligionData;->rel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final loadReligions_JustBuild(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadScenarioCharacters(Z)V
    .locals 7

    const-string v0, "scenarios/"

    const-string v1, "/Characters.json"

    const-string v2, "map/"

    if-nez p1, :cond_7

    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-class v3, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;

    iget-object v3, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->CivTAG:Ljava/lang/String;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Administrative:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Administrative:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Administrative:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadAdvisor(ILjava/lang/String;I)V

    :cond_1
    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Economic:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Economic:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Economic:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadAdvisor(ILjava/lang/String;I)V

    :cond_2
    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Innovation:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Innovation:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Innovation:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v3, v4, v6}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadAdvisor(ILjava/lang/String;I)V

    :cond_3
    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Military:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Military:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Military:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v3, v4, v6}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadAdvisor(ILjava/lang/String;I)V

    :cond_4
    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Generals:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Generals:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_0

    iget-object v4, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Generals:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v4, v5

    :goto_1
    if-ltz v4, :cond_0

    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Generals:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    iget-object v5, v2, Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;->Generals:[Ljava/lang/String;

    aget-object v5, v5, v4

    const/16 v6, -0x63

    invoke-static {v3, v5, v6, v6}, Laoc/kingdoms/lukasz/jakowski/CharactersManager;->loadGeneral(ILjava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public final loadScenario_1()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_1_ClearData()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->updateManpowerImg()V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->updateAge(Z)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Campaign:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditor_isCampaign:Z

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SCENARIO_EVENTS:Z

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    const/16 v2, 0x18

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->HOURS_PER_TURN:I

    return-void
.end method

.method public final loadScenario_10()V
    .locals 2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulers(II)V

    return-void
.end method

.method public final loadScenario_11()V
    .locals 2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulers(II)V

    return-void
.end method

.method public final loadScenario_12()V
    .locals 2

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$1;

    const-string v1, "buildCivilizationsRegions"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapScenarios;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->initRandomAdvantages()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->initAdvantagePoints()V

    return-void
.end method

.method public final loadScenario_13()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesReligion()V

    return-void
.end method

.method public final loadScenario_14()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesCores()V

    return-void
.end method

.method public final loadScenario_15()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioArmies()V

    return-void
.end method

.method public final loadScenario_16()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesEconomy()V

    return-void
.end method

.method public final loadScenario_17()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesTaxEfficiency()V

    return-void
.end method

.method public final loadScenario_18()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesManpower()V

    return-void
.end method

.method public final loadScenario_19()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsGovernmentBuildings()V

    return-void
.end method

.method public final loadScenario_1_ClearData()V
    .locals 2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->disposeCivilizations()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearAllianceSpecial()V

    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Day:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Month:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getAgeOfYear(I)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    return-void
.end method

.method public final loadScenario_2()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadWasteland()V

    return-void
.end method

.method public final loadScenario_20()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioBuildings()V

    return-void
.end method

.method public final loadScenario_21()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvinceData()V

    return-void
.end method

.method public final loadScenario_22()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivData()V

    return-void
.end method

.method public final loadScenario_23()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadCores()V

    return-void
.end method

.method public final loadScenario_24()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildProvincesPopulation()V

    return-void
.end method

.method public final loadScenario_25(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadReligions(Z)V

    return-void
.end method

.method public final loadScenario_26()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsGold()V

    return-void
.end method

.method public final loadScenario_27()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsManpower()V

    return-void
.end method

.method public final loadScenario_28()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateWorldResourcesProduced(Z)V

    return-void
.end method

.method public final loadScenario_29()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->initUniqueCivsGoods()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildDistanceToCapital()V

    return-void
.end method

.method public final loadScenario_3(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadCivilizations(Z)Ljava/util/List;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->fogDrawArmy:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadScenario_30()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioRelations()V

    return-void
.end method

.method public final loadScenario_31()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioMilitaryAccess()V

    return-void
.end method

.method public final loadScenario_32()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioAlliances()V

    return-void
.end method

.method public final loadScenario_33()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioDefensive()V

    return-void
.end method

.method public final loadScenario_34()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioTruces()V

    return-void
.end method

.method public final loadScenario_35()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioNonAggression()V

    return-void
.end method

.method public final loadScenario_36(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingRelationsRandom()V

    :cond_0
    return-void
.end method

.method public final loadScenario_37()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioGuarantee()V

    return-void
.end method

.method public final loadScenario_38(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenarioCharacters(Z)V

    return-void
.end method

.method public final loadScenario_39(Z)V
    .locals 0

    return-void
.end method

.method public final loadScenario_3_A()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadScenario_A()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadScenario_3_B()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadScenario_B()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadScenario_3_C()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadCivilizationsProvinces()V

    return-void
.end method

.method public final loadScenario_4()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildTechTree()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadScenario_40(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingAdvisors(II)V

    :cond_0
    return-void
.end method

.method public final loadScenario_41(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingAdvisors(II)V

    :cond_0
    return-void
.end method

.method public final loadScenario_42()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadScenarioAlliancesSpecial()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->loadAlliancesSpecial_Images()V

    return-void
.end method

.method public final loadScenario_43()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildAlliancesSpecial()V

    return-void
.end method

.method public final loadScenario_44()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildManpower()V

    return-void
.end method

.method public final loadScenario_45()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->buildCivilizationRanking()V

    return-void
.end method

.method public final loadScenario_46()V
    .locals 0

    return-void
.end method

.method public final loadScenario_47()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCities()V

    return-void
.end method

.method public final loadScenario_48()V
    .locals 2

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$2;

    const-string v1, "loadScenario_48"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/map/map/MapScenarios$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapScenarios;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    return-void
.end method

.method public final loadScenario_49(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingGenerals(II)V

    :cond_0
    return-void
.end method

.method public final loadScenario_5()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildProvinceIsCapital()V

    return-void
.end method

.method public final loadScenario_50(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingGenerals(II)V

    :cond_0
    return-void
.end method

.method public final loadScenario_51(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildStartingArmy()V

    :cond_0
    return-void
.end method

.method public final loadScenario_52()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildArmyPosition()V

    return-void
.end method

.method public final loadScenario_53()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsStability()V

    return-void
.end method

.method public final loadScenario_54()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsLegacy_Nukes_Aggressiveness()V

    return-void
.end method

.method public final loadScenario_55()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildIncome()V

    return-void
.end method

.method public final loadScenario_56()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->initCivilizations_ConvertReligion()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->initCivilizations_NonCore()V

    return-void
.end method

.method public final loadScenario_57()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->initCivilizations_ArmiesWithoutGenerals()V

    return-void
.end method

.method public final loadScenario_58()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->updateUQ_UI()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsColors()V

    return-void
.end method

.method public final loadScenario_59()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/events/EventsManager;->clearEventsScenario()V

    invoke-static {}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents_Scenario()V

    return-void
.end method

.method public final loadScenario_6()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->initProvinceData()V

    return-void
.end method

.method public final loadScenario_60()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->buildCivsNeighbors()V

    return-void
.end method

.method public final loadScenario_61()V
    .locals 0

    return-void
.end method

.method public final loadScenario_62(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/map/FormableCivManager;->buildFormableCivilizations()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->loadFormableCivs()V

    const/4 p1, 0x1

    sput-boolean p1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Government;->reloadFlags:Z

    :cond_0
    return-void
.end method

.method public final loadScenario_63()V
    .locals 0

    return-void
.end method

.method public final loadScenario_64()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->loadMissions_Civs()V

    return-void
.end method

.method public final loadScenario_7()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLandSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    move v4, v0

    :goto_2
    invoke-virtual {v3, v4, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder(ZI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addProvince_LoadScenario(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateNumOfProvinces()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public final loadScenario_8()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;-><init>()V

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->STARTING_DIPLOMACY_POINTS:F

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadScenario_9()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildWastelandLevels()V

    return-void
.end method

.method public final loadScenarios(Z)V
    .locals 17

    move-object/from16 v1, p0

    if-nez p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->clearScenarios()V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    const-string v4, ";"

    const-string v5, "Scenarios.txt"

    const-string v8, "Details.json"

    const-string v9, "/"

    const-string v10, "scenarios/"

    const-string v11, "map/"

    if-eqz v0, :cond_1b

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v5, :cond_8

    new-instance v14, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v14}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const/4 v0, 0x0

    :goto_1
    sget v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v0, v15, :cond_3

    sget-boolean v15, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v15, :cond_1

    sget-object v15, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v12, v4, v13

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15, v6}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v12, v4, v13

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v15, v4, v13

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v12, v4, v13

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_5

    const/4 v6, 0x0

    :goto_3
    sget v12, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v6, v12, :cond_5

    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v15, v4, v13

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v6}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_5
    :goto_4
    move-object v6, v0

    if-nez v6, :cond_6

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v7, v4, v13

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    aget-object v0, v4, v13

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-virtual {v14, v0, v6}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sget-boolean v4, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v4, :cond_9

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    goto :goto_6

    :cond_9
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    :goto_6
    array-length v5, v4

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_b

    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_8
    sget v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v4, v5, :cond_f

    sget-boolean v5, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v5, :cond_c

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    goto :goto_9

    :cond_c
    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    :goto_9
    array-length v6, v5

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_e

    aget-object v12, v5, v7

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_b
    sget v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v4, v5, :cond_12

    sget-object v5, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_11

    aget-object v12, v5, v7

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_12
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move v5, v4

    move v4, v0

    :goto_d
    if-ge v4, v5, :cond_1a

    :try_start_3
    new-instance v6, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const/4 v0, 0x0

    :goto_e
    sget v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v0, v7, :cond_15

    sget-boolean v7, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v7, :cond_13

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v7

    if-eqz v7, :cond_14

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto/16 :goto_f

    :cond_13
    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v7

    if-eqz v7, :cond_14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    goto :goto_f

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_17

    const/4 v7, 0x0

    :goto_10
    sget v12, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v7, v12, :cond_17

    sget-object v12, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v14}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v12

    if-eqz v12, :cond_16

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_11

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_10

    :cond_17
    :goto_11
    move-object v7, v0

    if-nez v7, :cond_18

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, v0

    goto :goto_12

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_18
    :goto_12
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    const-class v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-virtual {v6, v0, v7}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_19
    const/4 v6, 0x1

    goto :goto_13

    :catch_2
    move-exception v0

    add-int/lit8 v5, v4, -0x1

    :try_start_6
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v6, 0x1

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    :goto_13
    add-int/2addr v4, v6

    goto/16 :goto_d

    :cond_1a
    const/4 v6, 0x1

    goto/16 :goto_16

    :catch_3
    move-exception v0

    const/4 v6, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_1b
    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v5, :cond_1c

    :try_start_7
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v4, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v12

    aget-object v13, v4, v7

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v13, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-virtual {v0, v13, v12}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_15

    :catch_4
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1c
    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    move v0, v6

    const/4 v4, 0x0

    :goto_17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1e

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    if-ge v5, v7, :cond_1d

    move v4, v0

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_1e
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_16

    :cond_1f
    iget-object v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->SCENARIOS_SIZE:I

    if-eqz p1, :cond_20

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->updateDaultScenarioID()V

    :cond_20
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadPreviews()V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final loadWasteland()V
    .locals 6

    const-string v0, "scenarios/"

    const-string v1, "/Wasteland.txt"

    const-string v2, "map/"

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_TagsList:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setWasteland(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final saveScenario_1()V
    .locals 4

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sName:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Name:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sAuthor:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Author:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Day:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Month:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Civs:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getAgeOfYear(I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Age:I

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditor_isCampaign:Z

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Campaign:Z

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Gold:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_GoldRandom:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Legacy:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_LegacyRandom:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_ManpowerPercentage:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->HoursPerTurn:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Population:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Economy:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_TaxEfficiency:I

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->ProvinceDefault_Manpower:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "map/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "scenarios/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Details.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    return-void
.end method

.method public final saveScenario_10()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioBuildings()V

    return-void
.end method

.method public final saveScenario_11()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenariosList()V

    return-void
.end method

.method public final saveScenario_12()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioAlliances()V

    return-void
.end method

.method public final saveScenario_13()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioRelations()V

    return-void
.end method

.method public final saveScenario_14()V
    .locals 0

    return-void
.end method

.method public final saveScenario_15()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioGuarantee()V

    return-void
.end method

.method public final saveScenario_16()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioDefensive()V

    return-void
.end method

.method public final saveScenario_17()V
    .locals 0

    return-void
.end method

.method public final saveScenario_18()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioMilitaryAccess()V

    return-void
.end method

.method public final saveScenario_19()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioNonAggression()V

    return-void
.end method

.method public final saveScenario_2()V
    .locals 0

    return-void
.end method

.method public final saveScenario_20()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioTruces()V

    return-void
.end method

.method public final saveScenario_21()V
    .locals 0

    return-void
.end method

.method public final saveScenario_22()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioAlliancesSpecial()V

    return-void
.end method

.method public final saveScenario_23()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioCores()V

    return-void
.end method

.method public final saveScenario_24()V
    .locals 0

    return-void
.end method

.method public final saveScenario_25()V
    .locals 1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioReligion()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->editorProvinceReligion:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final saveScenario_3()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioDetails()V

    return-void
.end method

.method public final saveScenario_4()V
    .locals 0

    return-void
.end method

.method public final saveScenario_5()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioDetailsProvinces()V

    return-void
.end method

.method public final saveScenario_6()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->saveWasteland()V

    return-void
.end method

.method public final saveScenario_7()V
    .locals 0

    return-void
.end method

.method public final saveScenario_8()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->saveScenarioArmies()V

    return-void
.end method

.method public final saveScenario_9()V
    .locals 0

    return-void
.end method

.method public final saveWasteland()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "map/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "scenarios/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioSettings;->sTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Wasteland.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-ltz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
