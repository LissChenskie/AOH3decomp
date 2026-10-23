.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;
.super Ljava/lang/Object;
.source "PlayerCurrentSituation.java"


# instance fields
.field public allMissionsUnlocked:Z

.field public availableAdvantage:Z

.field public availableCivilizationLegacy:Z

.field public chooseRivals:Z

.field public currentSituationNum:I

.field public differentReligionProvinces:Z

.field public differentReligionProvincesNum:I

.field public highInflation:Z

.field public lackOfGeneral:Z

.field public maxAmountOfGold:Z

.field public militaryAcademyCanBeUpgraded:Z

.field public militaryAcademyForGeneralsCanBeUpgraded:Z

.field public missionCanBeUnlocked:Z

.field public missionCanBeUnlockedNum:I

.field public newLawAvailable:Z

.field public newLawAvailableNum:I

.field public noActiveResearch:Z

.field public noAdvisor:I

.field public nonCoreProvinces:Z

.field public nonCoreProvincesNum:I

.field public playerLegaciesLVL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public promoteAdvisor:I

.field public upgradeCapitalCity:Z

.field public upgradeNuclearReactor:Z

.field public upgradeSupremeCourt:Z

.field public wonderCanBeBuilt:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noActiveResearch:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->lackOfGeneral:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableCivilizationLegacy:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableAdvantage:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->wonderCanBeBuilt:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailable:Z

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailableNum:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeCapitalCity:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyCanBeUpgraded:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyForGeneralsCanBeUpgraded:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeSupremeCourt:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeNuclearReactor:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvinces:Z

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvincesNum:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvinces:Z

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvincesNum:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->maxAmountOfGold:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->highInflation:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->chooseRivals:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->allMissionsUnlocked:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->playerLegaciesLVL:Ljava/util/List;

    return-void
.end method

.method private final updateAvailableCivilizationLegacy(I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableCivilizationLegacy:Z

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegaciesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->playerLegaciesLVL:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->playerLegaciesLVL:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v2, v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableCivilizationLegacy:Z

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private final updateLackOfGeneral(I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->lackOfGeneral:Z

    move v1, v0

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v3, p1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->lackOfGeneral:Z

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private final updateNoAdvisor(I)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorMaxLevel(I)I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    :cond_1
    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_2

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    goto :goto_1

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    if-ge v1, v0, :cond_3

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    :cond_3
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_4

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    goto :goto_2

    :cond_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    if-ge v1, v0, :cond_5

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    :cond_5
    :goto_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-nez v1, :cond_6

    iget p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    goto :goto_3

    :cond_6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget p1, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    if-ge p1, v0, :cond_7

    iget p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    :cond_7
    :goto_3
    iget p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    if-lez p1, :cond_8

    iget p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    :cond_8
    iget p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    if-lez p1, :cond_9

    iget p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return-void
.end method


# virtual methods
.method public final buildPlayerLegaciesLVL()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->buildPlayerLegaciesLVL(I)V

    return-void
.end method

.method public final buildPlayerLegaciesLVL(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->playerLegaciesLVL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/map/LegacyManager;->iLegaciesSize:I

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyLevel(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/4 v1, -0x1

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->playerLegaciesLVL:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateChooseRivals(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->chooseRivals:Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVALS_LIMIT:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->chooseRivals:Z

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    :cond_0
    return-void
.end method

.method public final updateCurrentSituation()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation(I)V

    return-void
.end method

.method public final updateCurrentSituation(I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getActiveTechResearch()I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_0

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noActiveResearch:Z

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noActiveResearch:Z

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v1

    if-lez v1, :cond_1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableAdvantage:Z

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableAdvantage:Z

    :goto_1
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateLackOfGeneral(I)V

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateAvailableCivilizationLegacy(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateWonderCanBeBuild(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateMilitaryAcademyCanBeUpgraded(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateMilitaryAcademyForGeneralsCanBeUpgraded(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateNonCoreProvinces(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateDifferentReligion(I)V

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateNoAdvisor(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateNewLaw(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateChooseRivals(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInflation()F

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inflation:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;->INFLATION_CURRENT_SITUATION_INFO:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->highInflation:Z

    if-eqz v1, :cond_3

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxAmountOfGold(I)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->maxAmountOfGold:Z

    if-eqz v1, :cond_5

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    :cond_5
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeSupremeCourt:Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCorruption()F

    move-result v1

    const v3, 0x3ba3d70a    # 0.005f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_MaxLvl(I)I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Cost(I)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeSupremeCourt:Z

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    :cond_6
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeNuclearReactor:Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canBuildNuke:Z

    if-eqz v1, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_MaxLvl(I)I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_Cost(I)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeNuclearReactor:Z

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    :cond_7
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeCapitalCity:Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeCapitalCity:Z

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    :cond_8
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateMissionsCanBeUnlocked(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public final updateDifferentReligion(I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvinces:Z

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvincesNum:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvinces:Z

    if-nez v2, :cond_0

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    :cond_0
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvinces:Z

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvincesNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvincesNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final updateMilitaryAcademyCanBeUpgraded(I)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyCanBeUpgraded:Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Cost(I)F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyCanBeUpgraded:Z

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final updateMilitaryAcademyForGeneralsCanBeUpgraded(I)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyForGeneralsCanBeUpgraded:Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_Cost(I)F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyForGeneralsCanBeUpgraded:Z

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final updateMissionsCanBeUnlocked(I)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->allMissionsUnlocked:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_CURRENT_SITUATION_MISSION_TREE_EVERY_X_DAYS:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    if-lez v2, :cond_2

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    if-ge v0, v2, :cond_1

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->canRunMission_Civ(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    if-ne p1, v0, :cond_5

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->allMissionsUnlocked:Z

    goto :goto_2

    :cond_2
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionsSize:I

    if-ge v0, v2, :cond_4

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->canRunMission(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    sget p1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->iMissionsSize:I

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlockedNum:I

    if-ne p1, v0, :cond_5

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->allMissionsUnlocked:Z

    :cond_5
    :goto_2
    iget-boolean p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    if-eqz p1, :cond_6

    iget p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr p1, v1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final updateNewLaw(I)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailable:Z

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailableNum:I

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/map/LawsManager;->iLawsSize:I

    if-ge v0, v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-lez v1, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    if-eqz v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v3, v3, v1

    if-ltz v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v3, v3, v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v4

    if-eq v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v1, :cond_3

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailable:Z

    if-nez v1, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    :cond_1
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailable:Z

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailableNum:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailableNum:I

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public final updateNonCoreProvinces(I)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvinces:Z

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvincesNum:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v2, :cond_1

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvinces:Z

    if-nez v2, :cond_0

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    :cond_0
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvinces:Z

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvincesNum:I

    add-int/2addr v2, v1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvincesNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final updateWonderCanBeBuild(I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->wonderCanBeBuilt:Z

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/WondersManager;->getWonderConstructionCost(II)F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->wonderCanBeBuilt:Z

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
