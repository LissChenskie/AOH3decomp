.class public Laoc/kingdoms/lukasz/map/civilization/Civilization;
.super Ljava/lang/Object;
.source "Civilization.java"


# instance fields
.field public advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

.field public advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

.field public advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

.field public advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

.field public aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

.field public aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

.field public aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

.field public aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

.field public aiScore:F

.field public aiUpdateID:I

.field public armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

.field public armyPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyPosition;",
            ">;"
        }
    .end annotation
.end field

.field public canAccessSea:Z

.field public canBuildNuke:Z

.field public canColonize:Z

.field public civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

.field public civBonusesTemporary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;",
            ">;"
        }
    .end annotation
.end field

.field public civColor:Lcom/badlogic/gdx/graphics/Color;

.field public civColorFog:Lcom/badlogic/gdx/graphics/Color;

.field public civColorMap:Lcom/badlogic/gdx/graphics/Color;

.field public civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

.field public civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

.field public civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

.field private civFlag:Laoc/kingdoms/lukasz/textures/Image;

.field public civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

.field public civStability_LostFrom100:F

.field public civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

.field public colonizationProvince:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

.field public diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

.field public eventProvinceID:I

.field public eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

.field public eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

.field public eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

.field public eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

.field public fArmyMaintenance:F

.field private fB:F

.field public fDiplomacy:F

.field public fDiplomacyMax:F

.field private fDiplomacyPerMonth:F

.field public fExpenseVassal:F

.field private fG:F

.field public fGold:F

.field public fIncomeLord:F

.field public fLegacy:F

.field public fLegacyPerMonth:F

.field public fLoansCost:F

.field public fManpower:D

.field public fManpowerMax:D

.field public fManpowerMax_ToLord:D

.field public fManpowerPerMonth:D

.field public fProsperity_AverageEconomy:F

.field private fR:F

.field public fResearchPerMonth:F

.field public fTotalExpensesPerMonth:F

.field public fTotalIncomePerMonth:F

.field public fTotalProvincesValue:F

.field public goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

.field public goodsProduced:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public haveAccessSea:Z

.field public iAdvantagesSize:I

.field public iAlternativeTechResearch:I

.field public iArmyImgID:I

.field public iArmyPositionSize:I

.field public iArmyRecruitSize:I

.field public iArmyRecruitSize_Total:I

.field private iB:I

.field public iCapitalNameHeight:I

.field public iCapitalNameWidth:I

.field public iCivBonusesTemporarySize:I

.field public iCivID:I

.field public iCivNameHeight:I

.field public iCivNameLength:I

.field public iCivNameWidth:I

.field public iCivRankID:I

.field public iCivRankPosition:I

.field public iCivRankScore:F

.field public iCivRankScoreArmy:F

.field private iCivRegionsSize:I

.field public iColonizationProvinceSize:I

.field private iG:I

.field public iGeneralsSize:I

.field public iGroupID:I

.field public iIdeologyID:I

.field private iLegaciesSize:I

.field public iLoansSize:I

.field public iMissionsSize:I

.field private iMoveUnitsSize:I

.field public iNukesSize:I

.field private iNumOfProvinces:I

.field private iR:I

.field public iRegiments:I

.field public iRegimentsLimit:I

.field public iUniqueResources:I

.field public inAlliance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public inAllianceSize:I

.field public inBattles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isFlagNearest:Z

.field public isPlayerAlly:Z

.field public lAdvantages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;",
            ">;"
        }
    .end annotation
.end field

.field public lArmyRecruit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRecruit;",
            ">;>;"
        }
    .end annotation
.end field

.field public lCivNameChars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lCivRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;",
            ">;"
        }
    .end annotation
.end field

.field public lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lGeneralsNotAssigned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyGeneral;",
            ">;"
        }
    .end annotation
.end field

.field public lMissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Missions/Mission;",
            ">;"
        }
    .end annotation
.end field

.field public lMoveUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lResearching:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;",
            ">;"
        }
    .end annotation
.end field

.field public lTechResearched:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public largestProducerNum:I

.field public laws:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private legacies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;",
            ">;"
        }
    .end annotation
.end field

.field public loans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/Loan;",
            ">;"
        }
    .end annotation
.end field

.field public noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

.field public nukesDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public occupiedProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public occupiedProvincesSize:I

.field public realTag:Ljava/lang/String;

.field public ruler:Laoc/kingdoms/lukasz/map/Ruler;

.field public sCivName:Ljava/lang/String;

.field public sCivName_UpperCase:Ljava/lang/String;

.field public sTagsCanForm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

.field public underSiege:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public underSiegeSize:I

.field public unitsBest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field public unitsBestSize:I

.field public unitsBest_FirstLine:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field public unitsBest_FirstLineSize:I

.field public unitsBest_Flank:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field public unitsBest_FlankSize:I

.field public unitsBest_Siege:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field public unitsBest_SiegeSize:I

.field public unitsBest_Support:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field public unitsBest_SupportSize:I

.field private unlockedBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;",
            ">;"
        }
    .end annotation
.end field

.field private unlockedUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation
.end field

.field private updateRegions:Z

.field public warView_IsAggressor:Z

.field public warView_ParticipatesInWar:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIIIII)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    new-instance v4, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    const/4 v4, 0x0

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/16 v5, 0x3e7

    iput v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScoreArmy:F

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iIdeologyID:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAccessSea:Z

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canBuildNuke:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    new-instance v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    new-instance v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    new-instance v5, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiUpdateID:I

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyPerMonth:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivBonusesTemporarySize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBestSize:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameWidth:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameHeight:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameLength:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegions:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v0, v0, v0, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput-object p2, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->t:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivName(Ljava/lang/String;)V

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p3, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p7, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setR(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setG(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setB(I)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p8, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    iput p9, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->army:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    iput-boolean v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadFlag()Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildLaws()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/save/CivData;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goldenAge:Laoc/kingdoms/lukasz/map/civilization/CivilizationGoldenAge;

    const/4 p10, -0x1

    iput p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    new-instance v3, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;-><init>()V

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    const/4 v3, 0x0

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    const/16 v4, 0x3e7

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScoreArmy:F

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iIdeologyID:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAccessSea:Z

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canBuildNuke:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    new-instance v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    new-instance v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    new-instance v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iput p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMissions:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMissionsSize:I

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civNeighbors:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    new-instance p10, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCiv:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ;

    new-instance p10, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;

    new-instance p10, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiCivCreateNewArmy:Laoc/kingdoms/lukasz/jakowski/AI/AI_Civ_CreateNewArmy;

    new-instance p10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiMerge:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Merge;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->aiUpdateID:I

    new-instance p10, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->noConnectionMoveUnits:Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armiesWithoutGenerals:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ArmiesWithoutGenerals;

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    iput-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyPerMonth:F

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    new-instance p10, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivBonusesTemporarySize:I

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBestSize:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p10}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p10

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameWidth:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameHeight:I

    new-instance p10, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    invoke-direct {p10}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    const/4 p10, 0x0

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameLength:I

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegions:Z

    const/high16 p10, 0x3f800000    # 1.0f

    iput p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p10, p10, p10, p10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p10, p10, p10, p10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p10, p10, p10, p10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget-object p10, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput-object p2, p10, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->t:Ljava/lang/String;

    sget-object p10, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {p10, p2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p3, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p7, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setR(I)V

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setG(I)V

    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setB(I)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p8, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    iput p9, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->army:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    return-void
.end method

.method private final buildCivilizationRegion(II)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->wasCivRegion:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->wasCivRegion:Z

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->addProvince(I)V

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateIsProvinceAssigned(IZ)V

    invoke-direct {p0, v1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildCivilizationRegion(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final buildUnlockTechnologies_TechQueue1(I)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    if-ltz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue1(I)V

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget p1, p1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue2(I)V

    :cond_0
    return-void
.end method

.method private final buildUnlockTechnologies_TechQueue2(I)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    if-ltz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue1(I)V

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget p1, p1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue2(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAdvantage(II)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantage(II)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/lit8 v1, v1, 0x1

    if-lt v1, p2, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iput p2, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final addAggressiveExpansion(F)V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_MAX_VALUE:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAggressiveExpansion(F)V

    return-void
.end method

.method public final addArmyPosition(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final addCivilizationBonus_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationBonuses_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivBonusesTemporarySize:I

    return-void
.end method

.method public final addColonizationProvince(I)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    return-void
.end method

.method public final addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    return-void
.end method

.method public final addGold(F)V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxAmountOfGold(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getMaxAmountOfGold(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    :cond_1
    :goto_0
    return-void
.end method

.method public final addGoodsProduced(II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initGoodsProduced()V

    return-void
.end method

.method public final addInAllianceSpecial(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    :cond_0
    return-void
.end method

.method public addInBattles(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_0

    new-instance p1, Laoc/kingdoms/lukasz/map/civilization/Civilization$5;

    const-string v0, "rebuildInGame_Right"

    invoke-direct {p1, p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization$5;-><init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_0
    return-void
.end method

.method public final addLegacy(F)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->legacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;->MIN_LEGACY_POINTS:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->legacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Legacy;->MAX_LEGACY_POINTS:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    add-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    return-void
.end method

.method public final addLegacy(II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    const/4 p1, 0x1

    return p1
.end method

.method public final addLegacy_Load(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    :goto_0
    if-ltz p2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Laoc/kingdoms/lukasz/map/LegacyManager;->updateCivBonuses(IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final addLoan_Load(Laoc/kingdoms/lukasz/map/Loan;)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget v1, p1, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget p1, p1, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    add-float/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    return-void
.end method

.method public addNukeProduction()Z
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->NUCLEAR_REACTOR_LVL_TO_CONSTRUCT_NUKE:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombCost(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombProductionTime(I)I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivsNukes(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public addNukeProduction_Load(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivsNukes(I)V

    return-void
.end method

.method public final addOccupiedProvince(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    :cond_0
    return-void
.end method

.method public final addProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateNumOfProvinces()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->checkProvince(II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->checkProvince_Full(II)V

    return-void
.end method

.method public final addProvince_Just(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateNumOfProvinces()V

    return-void
.end method

.method public final addProvince_LoadScenario(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    return-void
.end method

.method public final addRecruitArmy_Load(Laoc/kingdoms/lukasz/map/army/ArmyRecruit;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    return-void
.end method

.method public final addRecruitArmy_LoadUpdateSize()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final addResearchProgress(F)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getActiveTechResearch()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addResearchProgress(IF)V

    return-void
.end method

.method public final addResearchProgress(IF)V
    .locals 3

    if-ltz p1, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    add-float/2addr v2, p2

    const/4 p2, 0x0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget p2, p2, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getResearchCost(II)F

    move-result v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    invoke-direct {v1, p1}, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v0, p1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    add-float/2addr v0, p2

    iput v0, p1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    :cond_3
    return-void
.end method

.method public final addTagsCanForm(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTechnology(IZ)V
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Repeatable:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_10

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAdvantagePoints(I)V

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    move v3, v2

    :goto_1
    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateBestUnits()V

    :cond_4
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2
    if-ltz v2, :cond_6

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    if-ne v1, p1, :cond_5

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Repeatable:Z

    const/4 v2, -0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->e:I

    :cond_7
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTechnologyBonuses(I)V

    if-nez p2, :cond_f

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Legacy:I

    if-eqz v1, :cond_8

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Legacy:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    :cond_8
    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Gold:I

    if-eqz v1, :cond_9

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Gold:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    :cond_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_f

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyChoose()Z

    move-result v1

    const-string v2, "rebuildTechTree"

    if-eqz v1, :cond_a

    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->IN_TECHNOLOGY_CHOOSE:Z

    if-eqz v1, :cond_a

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/Civilization$2;

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization$2;-><init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_a
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/Civilization$3;

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization$3;-><init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    if-eqz v1, :cond_c

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->buildID:I

    if-ne v1, v2, :cond_c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    if-eq v1, v2, :cond_c

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/Civilization$4;

    const-string v2, "rebuildBuildings2SavePos"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization$4;-><init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Name:Ljava/lang/String;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "ResearchCompleted"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->OVER_IMAGE_ID:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_d

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoTechnology2:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    goto :goto_4

    :cond_d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoTechnology:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    :goto_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->lTechQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->getTechQueue()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setActiveTechResearch(I)V

    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation()V

    :cond_f
    if-nez p2, :cond_10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq p2, v0, :cond_10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p2

    invoke-static {p2, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Technology/AI_UnlockedTechnology;->unlockedTechnology(II)V

    :cond_10
    return-void
.end method

.method public final addUnderSiege(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    :cond_0
    return-void
.end method

.method public final addVassal(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    invoke-direct {v1, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final adoptReform(II)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildLaws()V

    return-void
.end method

.method public final areInAllianceSpecial(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public armyExists(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public final armyMovingToProvince_MoveUnits(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final assignGeneralToArmy(III)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setArmyGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final assignGeneralToArmy(II)Z
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->assignGeneralToArmy(IILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final assignGeneralToArmy(IILjava/lang/String;)Z
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->key:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->assignGeneralToArmy(III)V

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final buildCapitalCity_Bonuses()V
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Income(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_ProvincesMaintenance(I)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    :cond_0
    return-void
.end method

.method public final buildColonizationProvince()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->getColonizationStartedTurnID()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ColonizationManager;->getSettlementEstablishmentProgress(I)F

    move-result v1

    const v2, 0x3f7d70a4    # 0.99f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->resetColonizationData()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    return-void
.end method

.method public final buildLaws()V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/map/LawsManager;->iLawsSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final buildMilitaryAcademyForGenerals_Bonuses()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralAttack(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralDefense(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaintenanceCost(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    :cond_0
    return-void
.end method

.method public final buildMilitaryAcademy_Bonuses()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Attack(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Defense(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaintenanceCost(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_RegimentsLimit(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    :cond_0
    return-void
.end method

.method public final buildNuclearReactor_Bonuses()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_ProductionEfficiency(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    :cond_0
    return-void
.end method

.method public final buildOccupiedProvinces()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    return-void
.end method

.method public final buildSupremeCourt_Bonuses()V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getCorruption()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setCorruption(F)V

    return-void
.end method

.method public buildTechTree()V
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TechnologyID:I

    sget v2, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TechnologyID:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TechnologyID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildTechTree_UnlockTechnologies(I)V

    goto :goto_1

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    if-ltz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildTechTree_UnlockTechnologies(I)V

    goto :goto_1

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    if-ltz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildTechTree_UnlockTechnologies(I)V

    :cond_3
    :goto_1
    move v1, v0

    :goto_2
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v1, v2, :cond_6

    move v2, v0

    :goto_3
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_5

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredTechID:[I

    aget v3, v3, v2

    if-gez v3, :cond_4

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    invoke-direct {v4, v1, v2}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_4
    sget v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v1, v2, :cond_9

    move v2, v0

    :goto_5
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_8

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RequiredTechID:I

    if-gez v3, :cond_7

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-direct {v4, v1, v2}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    :goto_6
    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateBestUnits()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initMaxLaws()V

    return-void
.end method

.method public buildTechTree_Load()V
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingSize:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredTechID:[I

    aget v3, v3, v2

    if-gez v3, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    invoke-direct {v4, v1, v2}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_2
    sget v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v1, v2, :cond_5

    move v2, v0

    :goto_3
    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmySize:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_4

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RequiredTechID:I

    if-gez v3, :cond_3

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-direct {v4, v1, v2}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_4
    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    :goto_5
    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksBuildings:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v2, v0

    :goto_6
    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechUnlocksUnits:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_7
    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTechnologyBonuses(I)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateBestUnits()V

    return-void
.end method

.method public final buildTechTree_UnlockTechnologies(I)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue1(I)V

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildUnlockTechnologies_TechQueue2(I)V

    return-void
.end method

.method public final buildUnderSiege()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    return-void
.end method

.method public final canUnlockAdvantage(II)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v3, p1, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/2addr p1, v0

    if-lt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final cancelMove(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getProgressPerc()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MOVE_UNITS_LOCKED_MOVE:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v5

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v6

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v8, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v9

    move-object v3, v0

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;II)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget p1, p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iput p1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget p1, p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iput p1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget p1, p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput p1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-wide v2, p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iput-wide v2, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget p1, p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iput p1, v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput v0, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p1

    iput v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    :cond_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return v0
.end method

.method public final cancelRecruitArmy(I)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_4

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    if-ne v3, p1, :cond_3

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->cost:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-double v5, v5

    add-double/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    :cond_0
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    move p1, v0

    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge p1, v1, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return v0
.end method

.method public final cancelRecruitArmy(Laoc/kingdoms/lukasz/map/army/ArmyRecruit;)Z
    .locals 0

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->cancelRecruitArmy(I)Z

    move-result p1

    return p1
.end method

.method public final cancelRecruitArmy_All()V
    .locals 6

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->cost:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    :goto_2
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v2, v3, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method protected final civRegionsContainsProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;->containsProvince(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final civStability_NumOfProvinces()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final clearArmyPosition()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    return-void
.end method

.method public final clearCivRegions()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    return-void
.end method

.method public final clearCivRegions_Just()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    return-void
.end method

.method public final clearColonizationProvince()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    return-void
.end method

.method public final clearMoveUnits()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    return-void
.end method

.method public final clearTagsCanForm()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final createCivilizationRegion(I)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    invoke-direct {v1, p1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iput-boolean v0, v2, Laoc/kingdoms/lukasz/map/province/Province;->wasCivRegion:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->wasCivRegion:Z

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildCivilizationRegion(II)V

    return-void
.end method

.method public final decayAggressiveExpansion()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAggressiveExpansion()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->aggressiveExpansion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_AggressiveExpansion;->AE_DECAY_PER_TICK:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setAggressiveExpansion(F)V

    return-void
.end method

.method public final disposeFlag()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    :cond_0
    return-void
.end method

.method public final expandColony(I)V
    .locals 9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AUTO_EXPAND_CHANCE:I

    if-ge v0, v1, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v3

    if-gez v3, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_6

    move v4, v1

    move v6, v4

    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v4, v7, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    if-ne v7, v8, :cond_2

    add-int/lit8 v6, v6, 0xa

    goto :goto_3

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    if-nez v7, :cond_3

    move v5, v1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    add-int/lit16 v6, v6, 0x1f4

    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v3, v1

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v4, v6, :cond_7

    move v3, v5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AUTO_EXPAND_POPULATION:I

    invoke-static {v4, v5, v6}, Laoc/kingdoms/lukasz/map/ColonizationManager;->establishSettlement(III)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v4, :cond_9

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "SettlementEstablished"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Province/iOYW/ALZmnpZHj;->LFgDTlRrDC:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Population"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_b
    return-void
.end method

.method public final getActiveTechResearch()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->e:I

    return v0
.end method

.method public final getAdditionalExpenses()F
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getAdvantageLvl(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getAdvantagePoints()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->a:I

    return v0
.end method

.method public getAggressiveExpansion()F
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->e:F

    return v0
.end method

.method public getAlternativeTechResearch()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    return v0
.end method

.method public getArmyPosition(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method public getArmyPositionKey(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    const-string p1, ""

    return-object p1
.end method

.method public getArmyRecruitSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    return v0
.end method

.method public final getArmyRegimentSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    return v0
.end method

.method public final getArmySize()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v3, :cond_2

    move v3, v0

    :goto_1
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    add-int/2addr v2, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getAvailableToResearch(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Repeatable:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    if-ltz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    if-ltz v0, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget p1, p1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final getAverageGrowthRate()F
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public final getAverageTaxEfficiency()F
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public final getB()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fB:F

    return v0
.end method

.method public final getB_Int()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iB:I

    return v0
.end method

.method public getBalance()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getBattleTacticsID()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->b:I

    return v0
.end method

.method public getBuildingsMaintenance()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBuildingsMaintenance()F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getCapitalLevel()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->c:I

    return v0
.end method

.method public final getCapitalProvinceID()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    return v0
.end method

.method public getCivID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    return v0
.end method

.method public getCivLegacy(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    return-object p1
.end method

.method public final getCivName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCivNameCharacter(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getCivNameHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameHeight:I

    return v0
.end method

.method public final getCivNameLength()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameLength:I

    return v0
.end method

.method public final getCivNameWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameWidth:I

    return v0
.end method

.method public final getCivRegion(I)Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivRegions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegion;

    return-object p1
.end method

.method public final getCivRegionsSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRegionsSize:I

    return v0
.end method

.method public final getCivTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final getColor(F)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getRGB(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getConstructedBuildings()I
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getCorruption()F
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getCorruption()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getDiplomacyPerMonth()F
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyPerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_IMPROVE_RELATIONS_COST_PER_MONTH:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_DAMAGE_RELATIONS_COST_PER_MONTH:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iDamagingRelationsSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getEconomyTotal()F
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getEconomyTotal_CivRank()F
    .locals 7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_SCORE_NON_CORE:F

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v6

    if-ne v5, v6, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_SCORE_DIFFERENT_RELIGION:F

    :goto_2
    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getExtraAggressiveness()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->v:I

    return v0
.end method

.method public final getFlag()Laoc/kingdoms/lukasz/textures/Image;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    if-nez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->randomCivilizationFlag:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getG()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fG:F

    return v0
.end method

.method public final getG_Int()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iG:I

    return v0
.end method

.method public getGeneralNotAssigned(I)Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    return-object p1
.end method

.method public final getGeneralsNotAssignedSize()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getGoodsProduced(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initGoodsProduced()V

    const/4 p1, 0x0

    return p1
.end method

.method public final getIdeologyID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iIdeologyID:I

    return v0
.end method

.method public getIncomeBuildings()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getIncomeEconomy()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeEconomy:F

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getIncomeProduction()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeProduction:F

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getIncomeTaxation()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final getInflation()F
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getInflation()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getInflation_Just()F
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getInflation()F

    move-result v0

    return v0
.end method

.method public getInfrastructure()I
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getLegaciesSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    return v0
.end method

.method public getLegaciesUnlocked()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getLegaciesUnlocked(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    if-ge v0, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->GroupID:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getLegacyLevel(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getLegacyPerMonth()F
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_LEGACY_PER_POINT:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getManpowerMax_Provinces_INFO()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaximumManpower:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getManpowerMax_Vassals_INFO()F
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    float-to-double v2, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-wide v4, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    add-double/2addr v2, v4

    double-to-float v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final getMaxMorale()F
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MORALE_BASE_VALUE:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MILITARY_LEVEL_MORALE:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v2

    aget v1, v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getMaxReinforce()I
    .locals 6

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REINFORCE_MIN_MANPOWER:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REINFORCE_PER_MONTH:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    add-float/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MILITARY_LEVEL_REINFORCE_SPEED:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getMilitaryAcademyForGeneralsLevel()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->g:I

    return v0
.end method

.method public getMilitaryAcademyLevel()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->m:I

    return v0
.end method

.method public getMilitaryLevel()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->y:I

    return v0
.end method

.method public final getMoraleRecoveryPerMonth()F
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MORALE_RECOVERY_PER_MONTH:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_ARMY_MORALE_RECOVERY_PER_POINT:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getMoveUnits(I)Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    return-object p1
.end method

.method public final getMoveUnitsSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    return v0
.end method

.method public getNuclearReactorLevel()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->n:I

    return v0
.end method

.method public getNukes()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->u:I

    return v0
.end method

.method public final getNumOfProvinces()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    return v0
.end method

.method public final getPopulationTotal()J
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final getProvinceID(I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public getProvinceMaintenance()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final getProvinces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    return-object v0
.end method

.method public getPuppetOfCivID()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    return v0
.end method

.method public final getR()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fR:F

    return v0
.end method

.method public final getRGB(F)Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public final getR_Int()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iR:I

    return v0
.end method

.method public getRecruitArmyInProgress(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getRecruitArmyInProvinceID(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final getRegimentsLimit_FromAllianceSpecial()F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->typeOfAlliance:I

    if-nez v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_EMPEROR_REGIMENTS:F

    add-float/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getRegimentsLimit_Manpower()I
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_MANPOWER_LEVEL:F

    float-to-double v3, v0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    return v0
.end method

.method public final getReligionID()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    return v0
.end method

.method public final getResearchFromBuildings()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ResearchPoints:F

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getResearchLevel()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->r:I

    return v0
.end method

.method public getResearchProgress(I)F
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget p1, p1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getResearchCost(II)F

    move-result v0

    div-float/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getResearchedTechnologies()I
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSupremeCourtLevel()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->s:I

    return v0
.end method

.method public final getTaxEfficiencyTotal()F
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getTaxEfficiencyTotal_CivRank()F
    .locals 7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_SCORE_NON_CORE:F

    :goto_1
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v6

    if-ne v5, v6, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_SCORE_DIFFERENT_RELIGION:F

    :goto_2
    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getTaxationLevel()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->t:I

    return v0
.end method

.method public getTechResearched(I)Z
    .locals 2

    const/4 v0, 0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    return v0
.end method

.method public final getTotalGenerals()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v3, :cond_2

    move v3, v0

    :goto_1
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final getTotalIncome()F
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getTotalIncomeFromEconomy()F
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromEconomy(I)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getTotalIncomeFromProduction()F
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(I)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getTotalLoot()F
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getTotalProvinceIncome()F
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getTotalProvinceIncomeTax()F
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final getUnitsBest_AttackDefense()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, v0, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public getUnlockedUnitsFirstLine()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-nez v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUnlockedUnitsFlank()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getUnlockedUnitsSupport()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getUpdateRegions()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegions:Z

    return v0
.end method

.method public getWarPlayDefensiveUntilTurnID()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->d:I

    return v0
.end method

.method public getWarWeariness()F
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->w:F

    return v0
.end method

.method public final haveAdvantage(II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final haveAdvantageMaxLvl(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    sget-object v2, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImageID:[I

    array-length p1, p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    if-lt v1, p1, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final initGoodsProduced()V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final initMaxLaws()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/map/LawsManager;->iLawsSize:I

    if-ge v0, v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lez v1, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredTechID:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    if-eqz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v2, v2, v1

    if-ltz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    aget v2, v2, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v2, v3, v4}, Laoc/kingdoms/lukasz/map/LawsManager;->updateCivBonuses(IIIF)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->laws:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/LawsManager;->updateCivBonuses(IIIF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public initTechTree()V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isArmyMovingToProvince(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final isArmyMovingToProvince_MoveUnits(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceLastID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isBuildingResearched(II)Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;->building:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedBuildings:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Building;->buildingID:I

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final isInMoveUnits_ArmyKey(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isRecruitArmyInProgress(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isUnitBest(II)Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isUnitResearched(II)Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    if-ne v2, p2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final loadFlag()Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gfx/flagsXH/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gfx/flagsH/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gfx/flags/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameCivs/gfx/flagsH/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v5, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    goto :goto_0

    :cond_7
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    const-string v2, "gfx/flagsXH/ran.png"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v5, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v1, v2, v5, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isFlagNearest:Z

    :goto_0
    return v3
.end method

.method public loadScenario_A()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivName(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildLaws()V

    return-void
.end method

.method public loadScenario_B()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadFlag()Z

    return-void
.end method

.method public final moveCapital(I)Z
    .locals 2

    if-ltz p1, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->MOVE_CAPITAL_COST:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->MOVE_CAPITAL_COST:F

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCapitalProvinceID(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final moveCapital_ToLargestProvince()V
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    if-ge v2, v3, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCapitalProvinceID(I)V

    :cond_2
    return-void
.end method

.method public final newMove(IILjava/lang/String;IZ)Z
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    const/4 v12, 0x0

    move/from16 v13, p2

    if-ne v0, v13, :cond_0

    return v12

    :cond_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_c

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v2, v0, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->isArmyInBattle(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v12

    :cond_1
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v15, 0x2

    const/4 v9, 0x1

    if-ne v2, v3, :cond_2

    new-instance v8, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    const/16 v16, 0x0

    move-object v2, v8

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object v12, v8

    move/from16 v8, p5

    move/from16 v9, v16

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;-><init>(IIILjava/lang/String;IZZ)V

    iget v2, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v2, v15, :cond_3

    iget v2, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MOVE_UNITS_TRY_MOVING_LAND_IF_PATH_IS_BELOW_PLAYER:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->haveSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    const/4 v9, 0x1

    move-object v2, v15

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;-><init>(IIILjava/lang/String;IZZ)V

    iget v2, v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v9, 0x1

    if-le v2, v9, :cond_4

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWidthTotal()I

    move-result v2

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWidthTotal()I

    move-result v3

    if-ge v2, v3, :cond_4

    goto :goto_0

    :cond_2
    new-instance v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    const/16 v16, 0x0

    move-object v2, v12

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, v16

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;IZZ)V

    iget v2, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v2, v15, :cond_3

    iget v2, v12, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MOVE_UNITS_TRY_MOVING_LAND_IF_PATH_IS_BELOW:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->haveSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    const/4 v9, 0x1

    move-object v2, v15

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;IZZ)V

    iget v2, v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    const/4 v9, 0x1

    if-le v2, v9, :cond_4

    invoke-virtual {v15}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWidthTotal()I

    move-result v2

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getWidthTotal()I

    move-result v3

    if-ge v2, v3, :cond_4

    :goto_0
    move-object v8, v15

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    :cond_4
    move-object v8, v12

    :goto_1
    iget v2, v8, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v2, v9, :cond_b

    const/4 v12, 0x0

    :goto_2
    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v12, v2, :cond_a

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    return v2

    :cond_5
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v2

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v3

    if-ne v2, v3, :cond_6

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iput v2, v8, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iput v2, v8, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v2, v8, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iput-wide v2, v8, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iput v2, v8, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    goto/16 :goto_3

    :cond_6
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getProgressPerc()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->MOVE_UNITS_LOCKED_MOVE:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_8

    new-instance v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getToProvinceID()I

    move-result v4

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v7, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->extraArmyY:I

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v8

    move-object v2, v15

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;II)V

    iget v2, v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->iRouteSize:I

    if-le v2, v9, :cond_7

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iput v2, v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->doneMovementProgressWidth:F

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iput v2, v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->movementProgressOverWidth:F

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iput v2, v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iput-wide v2, v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->lCurrentMovingTime:J

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iput v2, v15, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->fCurrentMovingPercentage:F

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v12, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iput-boolean v11, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    return v9

    :cond_7
    const/4 v2, 0x0

    return v2

    :cond_8
    invoke-virtual {v1, v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    goto :goto_3

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_a
    :goto_3
    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput-boolean v11, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateIsUnderSiege()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :cond_b
    const/4 v2, 0x0

    return v2

    :cond_c
    move v2, v12

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_4
    return v2
.end method

.method public final recruitArmy(Laoc/kingdoms/lukasz/map/army/ArmyRecruit;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iget v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v5, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-static {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRecruitmentCost(IIII)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-static {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRecruitmentCost(IIII)I

    move-result v1

    iput v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->cost:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v4, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-static {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRecruitmentTime(IIII)I

    move-result v1

    iput v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->cost:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setManpower(D)V

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iget v3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    move p1, v0

    :goto_3
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v1, :cond_5

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_6
    return v0
.end method

.method public final reduceInflation()Z
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getInflation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInflationReduceCost_Legacy(I)F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInflationReduceCost_Legacy(I)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setInflation(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->inflation:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;->INFLATION_REDUCE_COST_LEGACY_PER_INFLATION:F

    div-float/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getInflation()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setInflation(F)V

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->inflation:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;->INFLATION_REDUCE_COST_LEGACY_PER_INFLATION:F

    mul-float/2addr v0, v2

    sub-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final reduceWarWeariness()Z
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_REDUCE_COST_GOLD:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_REDUCE_COST_LEGACY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3f747ae147ae147bL    # 0.005

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_REDUCE:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_REDUCE_COST_GOLD:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_REDUCE_COST_LEGACY:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public final removeAllArmies()V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmyCivID(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    return-void
.end method

.method public final removeArmyPosition(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final removeColonizationProvince(I)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final removeInAllianceSpecial(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeInBattles(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inBattles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeMove(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput v1, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iput v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v3, v0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v3, v0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v3, v0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput v1, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iput v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    return-void
.end method

.method public final removeMove(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->setInMovement(Z)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iput v0, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX_Scaled:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->getFromProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p1

    iput v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    :cond_0
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeMove(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final removeOccupiedProvince(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->occupiedProvincesSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateNumOfProvinces()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivRegionID(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->removeProvince(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    return-void
.end method

.method public final removeTagsCanForm(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final removeTagsCanForm(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sTagsCanForm:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeUnderSiege(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiege:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->underSiegeSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeVassal(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v0, p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final repayLoan(I)Z
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/Loan;

    iget v0, v0, Laoc/kingdoms/lukasz/map/Loan;->fLoanValue:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/Loan;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/Loan;->getLoanValueLeft()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    cmpl-float v2, v1, v0

    if-ltz v2, :cond_1

    sub-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/Loan;

    iget v1, v1, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->removeCivUpdateLoans(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final resetGoodsProduced()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->goodsProduced:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final setActiveTechResearch(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->e:I

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lResearching:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;

    invoke-direct {v1, p1}, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAdvantagePoints(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->a:I

    return-void
.end method

.method public setAggressiveExpansion(F)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->e:F

    return-void
.end method

.method public setAlternativeTechResearch(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAlternativeTechResearch:I

    return-void
.end method

.method public final setB(I)V
    .locals 2

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iB:I

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fB:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fB:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fB:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateVassalsColors()V

    return-void
.end method

.method public final setBattleTacticsID(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battleTactics:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_BattleTactics;->BATTLE_TACTICS:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->b:I

    return-void
.end method

.method public setCapitalLevel(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->c:I

    return-void
.end method

.method public final setCapitalProvinceID(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->c:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->buildDistanceToCapital()V

    :cond_1
    return-void
.end method

.method public final setCivID(I)V
    .locals 1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    return-void
.end method

.method public final setCivID_Just(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    return-void
.end method

.method public final setCivName(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const-string p1, "AB"

    :cond_0
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName:Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameWidth:I

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameHeight:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v2, p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivNameChars:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName_UpperCase:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCivNameChars:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivNameLength:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->sCivName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameWidth:I

    iget p1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameHeight:I

    return-void
.end method

.method public final setCivTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput-object p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->t:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivName(Ljava/lang/String;)V

    return-void
.end method

.method public final setCorruption(F)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->CORRUPTION_MIN:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->CORRUPTION_MAX:F

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setCorruption(F)V

    return-void
.end method

.method public final setDiplomacyPerMonth(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyPerMonth:F

    return-void
.end method

.method public setExtraAggressiveness(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->v:I

    return-void
.end method

.method public final setFlag(Laoc/kingdoms/lukasz/textures/Image;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civFlag:Laoc/kingdoms/lukasz/textures/Image;

    return-void
.end method

.method public final setG(I)V
    .locals 2

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iG:I

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fG:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fG:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fG:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    return-void
.end method

.method public final setIdeologyID(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iIdeologyID:I

    return-void
.end method

.method public final setInflation(F)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->inflation:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Inflation;->INFLATION_MAX:F

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setInflation(F)V

    return-void
.end method

.method public final setManpower(D)V
    .locals 4

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    return-void
.end method

.method public setMilitaryAcademyForGeneralsLevel(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->g:I

    return-void
.end method

.method public setMilitaryAcademyLevel(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->m:I

    return-void
.end method

.method public setMilitaryLevel(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->y:I

    return-void
.end method

.method public setNuclearReactorLevel(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->n:I

    return-void
.end method

.method public setNukes(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->u:I

    return-void
.end method

.method public final setPuppetOfCivID(I)V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeVassal(I)V

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->p:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result p1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addVassal(I)V

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateColorMap()V

    return-void
.end method

.method public final setR(I)V
    .locals 2

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iR:I

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fR:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fR:F

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fR:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    return-void
.end method

.method public final setReligionID(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    return-void
.end method

.method public final setReligionID_UpdateBonuses(I)V
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->updateCivBonuses(IIIZ)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData:Laoc/kingdoms/lukasz/map/civilization/save/CivData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/save/CivData;->r:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v4, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->updateCivBonuses(IIIZ)V

    return-void
.end method

.method public setResearchLevel(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->r:I

    return-void
.end method

.method public setSupremeCourtLevel(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->s:I

    return-void
.end method

.method public setTaxationLevel(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->t:I

    return-void
.end method

.method public final setTechnologyResearched(IZ)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean p2, p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksNukes:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canBuildNuke:Z

    :cond_0
    sget-object p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean p2, p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksAccessToTheSea:Z

    if-eqz p2, :cond_1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    :cond_1
    sget-object p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksColonization:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    :cond_2
    return-void
.end method

.method public final setUpdateRegions(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegions:Z

    return-void
.end method

.method public setWarPlayDefensiveUntilTurnID(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData4:Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->d:I

    return-void
.end method

.method public setWarWeariness(F)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->w:F

    return-void
.end method

.method public final takeLoan()Z
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanMaxNumber(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanValue(I)F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanInterestValue(I)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/Loan;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/map/Loan;-><init>(F)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    add-float/2addr v2, v0

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/Loan;

    iget v1, v1, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/Loan;

    iget v1, v1, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getInflation()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->loan:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Loan;->LOAN_INFLATION:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setInflation(F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLoans(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    return v3
.end method

.method public final unlockLegacy(I)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/2addr v2, v3

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/2addr v5, v3

    aget v4, v4, v5

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    return v0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/2addr v4, v3

    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    add-int/2addr v2, v3

    sget-object v4, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    array-length v4, v4

    sub-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {p1, v0, v1}, Laoc/kingdoms/lukasz/map/LegacyManager;->updateCivBonuses(III)V

    return v3

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    return v0

    :cond_4
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/map/LegacyManager;->legacies:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/LegacyManager$Legacy;->CostLegacy:[I

    aget v2, v2, v0

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    invoke-direct {v2, p1, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->legacies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLegaciesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {p1, v0, v1}, Laoc/kingdoms/lukasz/map/LegacyManager;->updateCivBonuses(III)V

    return v3
.end method

.method public final updateArmyImgID()V
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyImgID_Player()V

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyEnemy:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAlly(II)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyAlly:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    goto :goto_0

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->army:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isPlayerAlly:Z

    :goto_0
    return-void
.end method

.method public final updateArmyImgID_Player()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->armyImgID:I

    packed-switch v0, :pswitch_data_0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer0:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer14:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_1
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer13:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_2
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer12:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_3
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer11:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_4
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer10:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_5
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer9:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_6
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer8:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_7
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer7:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_8
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer6:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_9
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer5:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_a
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer4:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_b
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer3:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_c
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer2:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer1:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    goto :goto_0

    :pswitch_e
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->armyPlayer0:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyImgID:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateArmyMaintenance()V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->fMaintenanceCost:F

    add-float/2addr v4, v3

    iput v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MILITARY_LEVEL_ARMY_MAINTENANCE:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v5

    aget v4, v4, v5

    add-float/2addr v2, v4

    const v4, 0x3d4ccccd    # 0.05f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    int-to-float v2, v2

    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->ARMY_MAINTENANCE_OVER_REGIMENTS_LIMIT_MODIFIER:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    mul-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    return-void
.end method

.method public updateArmyPosition(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    iput p2, p1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyPosition;

    invoke-direct {v1, p2, p1}, Laoc/kingdoms/lukasz/map/army/ArmyPosition;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->armyPosition:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final updateArmyRegimentSize()I
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    iget v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v5, v6, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v5, v4

    iput v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegiments:I

    return v0
.end method

.method public final updateBestUnits()V
    .locals 8

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBestSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    sget v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->iUnitsTypesSize:I

    if-ge v2, v3, :cond_4

    const/4 v3, -0x1

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_2

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    if-ne v5, v2, :cond_1

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->UnitLevel:I

    sget-object v6, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v7, v7, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->UnitLevel:I

    if-ge v5, v6, :cond_1

    :goto_2
    move v3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-ltz v3, :cond_3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unlockedUnits:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBestSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_9

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v2, :cond_8

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-nez v2, :cond_5

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v2, v1, :cond_6

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FirstLineSize:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Flank:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_FlankSize:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Support:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SupportSize:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_Siege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->unitsBest_SiegeSize:I

    return-void
.end method

.method public final updateBuildingLimit()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateCivStability()V
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-nez v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_SCORE_NON_CORE:F

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    if-eq v3, v4, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_SCORE_DIFFERENT_RELIGION:F

    add-float/2addr v2, v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_MAX_VALUE:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_SCORE_MAX_PER_PROVINCE:F

    int-to-float v1, v1

    mul-float/2addr v3, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    goto :goto_1

    :cond_3
    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    :goto_1
    return-void
.end method

.method public final updateCivilizationBonuses_Temporary()V
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivBonusesTemporarySize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TempTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-gt v1, v2, :cond_0

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationBonuses_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonusesTemporary:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivBonusesTemporarySize:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateCivilizationBonuses_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;F)V
    .locals 4

    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    :cond_0
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    :cond_1
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_2
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeTaxation:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_3
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeEconomy:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_4
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    :cond_5
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_6
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_7
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_8
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_9
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    :cond_a
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    :cond_b
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    :cond_c
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    :cond_d
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    :cond_e
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReinforcementSpeed:F

    :cond_f
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMoraleRecovery:F

    :cond_10
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WarScoreCost:F

    :cond_11
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    :cond_12
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    :cond_13
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    :cond_14
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    :cond_15
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    :cond_16
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_17
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_18
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_19

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    :cond_19
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    :cond_1a
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    :cond_1b
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    :cond_1c
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    :cond_1d
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->WonderConstructionCost:F

    :cond_1e
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    :cond_1f
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    :cond_20
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_21

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    :cond_21
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_22

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    :cond_22
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    :cond_23
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_24

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    :cond_24
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    if-eqz v0, :cond_25

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    :cond_25
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    if-eqz v0, :cond_26

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    :cond_26
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    if-eqz v0, :cond_27

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    :cond_27
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    if-eqz v0, :cond_28

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    :cond_28
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_29

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorCost:F

    :cond_29
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2a

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    :cond_2a
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2b

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    :cond_2b
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2c

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    :cond_2c
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    if-eqz v0, :cond_2d

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AllCharactersLifeExpectancy:I

    :cond_2d
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    if-eqz v0, :cond_2e

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    :cond_2e
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2f

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    :cond_2f
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_30

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoveryFromADisbandedArmy:F

    :cond_30
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    if-eqz v0, :cond_31

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v0, v2, :cond_31

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_31
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_32

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    :cond_32
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_33

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    :cond_33
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_34

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    :cond_34
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_35

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_35
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_36

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    :cond_36
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_37

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateDiplomacyPerMonth()V

    :cond_37
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_38

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    :cond_38
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_39

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    :cond_39
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3a

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    :cond_3a
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3b

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    :cond_3b
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3c

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ReligionCost:F

    :cond_3c
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    if-eqz v0, :cond_3d

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    int-to-float v2, v2

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorMaxLevel:I

    :cond_3d
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3e

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold:F

    :cond_3e
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3f

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumAmountOfGold_Percentage:F

    :cond_3f
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_40

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Corruption:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_40
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_41

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    iget v2, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Inflation:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_41
    iget v0, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    if-eqz v0, :cond_42

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    int-to-float v1, v1

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    :cond_42
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvincesIncomeAndExpenses()V

    return-void
.end method

.method public final updateCivilizationTAG()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeologyID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setIdeologyID(I)V

    return-void
.end method

.method public final updateCivilizationTAG(Ljava/lang/String;III)V
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivTag(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setR(I)V

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setG(I)V

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setB(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loadFlag()Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateColorMap()V

    return-void
.end method

.method public final updateColonizationProvince()V
    .locals 10

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/ColonizationManager;->getSettlementEstablishmentProgress(I)F

    move-result v1

    const v2, 0x3f7d70a4    # 0.99f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SETTLEMENT_ESTABLISHED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "SettlementEstablished"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->expandColony(I)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->resetColonizationData()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->colonizationProvince:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iColonizationProvinceSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final updateColorMap()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorMixed_2(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->PROVINCE_FOG_COLOR_DIFFERENCE:F

    sub-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    return-void
.end method

.method public final updateDiplomacyPerMonth()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_PER_MONTH_BASE_VALUE:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiplomacyPoints:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getDiplomacyPoints_RankStar(I)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyPerMonth:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MAX:I

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_POINTS_MAX_PER_PROVINCE:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacyMax:F

    return-void
.end method

.method public final updateIncome()V
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_BASE_INCOME:[F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_BASE_INCOME_VASSAL:[F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    add-float/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    add-float/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v1, v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->typeOfAlliance:I

    if-nez v2, :cond_2

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->getIncome_Emperor(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fArmyMaintenance:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getResearchCost(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromVassal(II)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    add-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    goto :goto_3

    :cond_4
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    :goto_3
    return-void
.end method

.method public final updateInfrastructureMax()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateLegacyPerMonth()V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyLegacy:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_MONTHLY_LEGACY:[F

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v1, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getLegacyPerUniqueResources(I)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRivalsLegacy(I)F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy_Percentage:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_LEGACY:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v3

    aget v1, v1, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacyPerMonth:F

    return-void
.end method

.method public final updateLoans()V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/Loan;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Loan;->iExpires_TurnID:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/Loan;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/Loan;

    iget v2, v2, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->loans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iLoansSize:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->removeCivUpdateLoans(I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateManpowerPerMonth()V
    .locals 9

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    float-to-double v2, v2

    iput-wide v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-wide v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaximumManpower:I

    int-to-double v6, v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerMaxFromProvinceManpowerLvl(I)I

    move-result v6

    int-to-double v6, v6

    add-double/2addr v4, v6

    iput-wide v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_MANPOWER_MAX:[I

    iget v6, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v5, v5, v6

    int-to-double v5, v5

    add-double/2addr v3, v5

    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-eq v3, v4, :cond_1

    iget-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_MANPOWER_TO_LORD:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getVassal_ManpowerLevel(I)I

    move-result v6

    aget v5, v5, v6

    float-to-double v5, v5

    mul-double/2addr v3, v5

    iput-wide v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    sub-double/2addr v5, v3

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    :cond_1
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_MAX_BASE:I

    int-to-double v3, v3

    add-double/2addr v0, v3

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower_Percentage:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-double v5, v3

    mul-double/2addr v0, v5

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    move v0, v2

    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-wide v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-wide v7, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax_ToLord:D

    add-double/2addr v5, v7

    iput-wide v5, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRivalsManpower(I)I

    move-result v3

    int-to-double v5, v3

    add-double/2addr v0, v5

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    :goto_2
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAllianceSize:I

    if-ge v2, v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->typeOfAlliance:I

    if-nez v0, :cond_3

    iget-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->inAlliance:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/allianceHRE/HREManager;->getManpower_Emperor(I)I

    move-result v3

    int-to-double v5, v3

    add-double/2addr v0, v5

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    iget-wide v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerMax:D

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getManpowerPerMonth(ID)D

    move-result-wide v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->MILITARY_LEVEL_MANPOWER:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v3

    aget v2, v2, v3

    add-float/2addr v2, v4

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpowerPerMonth:D

    return-void
.end method

.method public final updateMilitaryLevel(I)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryLevel()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setMilitaryLevel(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateManpowerPerMonth()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateArmyMaintenance()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    :cond_0
    return-void
.end method

.method public final updateMorale_Reinforce()V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMaxMorale()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMoraleRecoveryPerMonth()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMaxReinforce()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    iget v8, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    const/4 v9, 0x1

    if-ge v7, v8, :cond_3

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    move v10, v6

    :goto_1
    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget v12, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v12

    if-nez v12, :cond_1

    iget-boolean v12, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v12, :cond_1

    iget-boolean v12, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v12, :cond_1

    iget v12, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v13

    if-ne v12, v13, :cond_1

    iget-object v12, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v11, v1, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale_Regiments(FF)V

    iget-wide v12, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REINFORCE_MIN_MANPOWER:I

    int-to-double v14, v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_0

    invoke-virtual {v11, v3, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateReinforce(IF)F

    move-result v11

    add-float/2addr v5, v11

    int-to-double v11, v3

    iget-wide v13, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fManpower:D

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    double-to-int v3, v11

    goto :goto_2

    :cond_0
    iget v7, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/2addr v7, v9

    goto :goto_0

    :cond_3
    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sub-float/2addr v1, v5

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_6

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rf:I

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rf:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->REINFORCE_ARMY_COST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ReinforceCost"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x42c7cccd    # 99.9f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    goto :goto_4

    :cond_4
    const v6, 0x3dcccccd    # 0.1f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_5

    const/16 v9, 0x64

    goto :goto_4

    :cond_5
    const/16 v9, 0xa

    :goto_4
    invoke-static {v5, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v10, v2

    move/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification_Reinforce(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_6
    return-void
.end method

.method public final updateMoveInBattle(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iput-boolean p2, p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateMoveUnits_Load(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;ZZ)V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iMoveUnitsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->key:Ljava/lang/String;

    iget-object v2, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_MoveUnits;->m:F

    iput p1, v1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->currentMovementProgressWidth:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iput-boolean p2, p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inRetreat:Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lMoveUnits:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    iput-boolean p3, p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->inBattle:Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateNukeProduction(I)V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    if-lez v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    sub-int/2addr v2, p1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->nukesDaysLeft:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNukes()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setNukes(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/zHJ/lOow;->yAVFHDxYXnVtXLv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "AtomicBombs"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNukes()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->infoAtomic:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    :cond_0
    iget p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNukesSize:I

    if-nez p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeCivsNukes(I)V

    :cond_1
    return-void
.end method

.method public final updateNumOfProvinces()V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank(I)I

    move-result v0

    if-eq v1, v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iNumOfProvinces:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank(I)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_0
    return-void
.end method

.method public final updateProsperity_AverageEconomy()V
    .locals 7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v4

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v5

    int-to-float v5, v5

    long-to-float v6, v0

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fProsperity_AverageEconomy:F

    return-void
.end method

.method public final updateProvinceBorder()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBorder(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateProvincesIncomeAndExpenses()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLegacyPerMonth()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    return-void
.end method

.method public final updateRecruitArmy(II)V
    .locals 7

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    if-lez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    if-ltz v3, :cond_12

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    if-ltz v3, :cond_12

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v4, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_12

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;->iID:I

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    new-instance v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    :cond_1
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    move v1, v2

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v3, :cond_2

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v3, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_12

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    :cond_6
    :goto_1
    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    invoke-direct {v4, v5, v1, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    iput-object v3, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    :cond_7
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lCreateNewArmy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    :cond_8
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    move v1, v2

    :goto_2
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v3, :cond_9

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v3, :cond_a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    :cond_a
    return-void

    :cond_b
    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    if-ltz v1, :cond_12

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_d

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_d

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_c

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-ne v1, v4, :cond_c

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    :cond_d
    :goto_3
    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v5

    invoke-direct {v4, v5, v1, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    iput-object v3, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    :cond_e
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    :cond_f
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    move v1, v2

    :goto_4
    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v1, v3, :cond_10

    iget v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_10
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v3, :cond_11

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_11
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_12
    move v1, v2

    :goto_5
    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v3

    if-ge v1, v3, :cond_17

    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_16

    iget v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    new-instance v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-direct {v3, v4, v0}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_13

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    :cond_13
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    :goto_6
    iget p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v2, p1, :cond_14

    iget p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, p2, :cond_15

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    :cond_15
    return-void

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_17
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1e

    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-eq v3, v4, :cond_18

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_19

    :cond_18
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_19
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    if-ltz v1, :cond_1a

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    if-ne v1, v3, :cond_1a

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    goto :goto_8

    :cond_1a
    move v1, v2

    :goto_7
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v1, v3, :cond_1c

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_1b

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    goto :goto_8

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    const/4 v1, -0x1

    :cond_1d
    :goto_8
    if-ltz v1, :cond_1e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-direct {v4, v5, v0}, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-direct {v0, v4, v1, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    :cond_1e
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1f

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    :cond_1f
    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    :goto_9
    iget p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize:I

    if-ge v2, p1, :cond_20

    iget p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyRecruitSize_Total:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_20
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, p2, :cond_21

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerStats:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerStats;->recruitedRegiments:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->rr:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    :cond_21
    return-void
.end method

.method public final updateRegimentsLimit()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENTS_LIMIT_BASE_VALUE:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_PER_VASSAL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getRegimentsLimit_FromAllianceSpecial()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getRegimentsLimit_Manpower()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_VASSAL:F

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    return-void
.end method

.method public final updateResearchLevel(I)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchLevel()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setResearchLevel(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    :cond_0
    return-void
.end method

.method public final updateResearchPerMonth()V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ResearchPoints:F

    add-float/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->research:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;->BASE_RESEARCH:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_MONTHLY_RESEARCH:[F

    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v3, v3, v4

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_RESEARCH:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v4

    aget v3, v3, v4

    add-float/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->RESEARCH_LEVEL_RESEARCH:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchLevel()I

    move-result v4

    aget v3, v3, v4

    add-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v1, v0

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getMaxResearch(I)F

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fResearchPerMonth:F

    return-void
.end method

.method public final updateTaxationLevel(I)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setTaxationLevel(I)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateLegacyPerMonth()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalIncomePerMonth()V

    :cond_1
    return-void
.end method

.method public updateTechnologyBonuses(I)V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->BattleWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->BattleWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsAttack:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsAttack:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsDefense:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnitsDefense:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralAttack:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralAttack:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralDefense:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->GeneralDefense:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaxMorale:I

    const/high16 v1, 0x42c80000    # 100.0f

    if-eqz v0, :cond_5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaxMorale:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Discipline:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Discipline:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfCapitalCity:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfCapitalCity:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfCapitalCity:I

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademy:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademy:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademy:I

    :cond_8
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaximumLevelOfTheMilitaryAcademyForGenerals:I

    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksNukes:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canBuildNuke:Z

    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksAccessToTheSea:Z

    if-eqz v0, :cond_b

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canAccessSea:Z

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->UnlocksColonization:Z

    if-eqz p1, :cond_c

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    :cond_c
    return-void
.end method

.method public final updateTotalIncomePerMonth()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateIncome()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateVassalsIncome()V

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLoansCost:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    return-void
.end method

.method public final updateTotalProvincesValue()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateVassalsColors()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iVassalsSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateColorMap()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateVassalsIncome()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->lVassals:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fExpenseVassal:F

    add-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fIncomeLord:F
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

.method public final updateWarWeariness(F)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WAR_WEARINESS_MAX:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v1

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setWarWeariness(F)V

    return-void
.end method

.method public final update_ChanceOfGeneral_NotAssigned()V
    .locals 10

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    rem-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/RulersManager;->characterDies(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->GENERAL_DIED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "GeneralDied"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->general:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/Civilization$1;

    const-string v2, "rebuildGenerals"

    invoke-direct {v1, p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization$1;-><init>(Laoc/kingdoms/lukasz/map/civilization/Civilization;Ljava/lang/String;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lGeneralsNotAssigned:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGeneralsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final upgradeCapitalCity()Z
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Cost(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Income(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_ProvincesMaintenance(I)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalLevel()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCapitalLevel(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_Income(I)F

    move-result v4

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCapital_ProvincesMaintenance(I)F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final upgradeMilitaryAcademy()Z
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Cost(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Attack(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Defense(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaintenanceCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_RegimentsLimit(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setMilitaryAcademyLevel(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Attack(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Defense(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaintenanceCost(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_RegimentsLimit(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateRegimentsLimit()V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final upgradeMilitaryAcademyForGenerals()Z
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaxLvl(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_Cost(I)F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralAttack(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralDefense(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaintenanceCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyForGeneralsLevel()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setMilitaryAcademyForGeneralsLevel(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralAttack(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_GeneralDefense(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademyForGenerals_MaintenanceCost(I)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaintenanceCost:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final upgradeNuclearReactor()Z
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_MaxLvl(I)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_Cost(I)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_ProductionEfficiency(I)F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNuclearReactorLevel()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setNuclearReactorLevel(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getNuclearReactor_ProductionEfficiency(I)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    return v2

    :cond_1
    return v1
.end method

.method public final upgradeSupremeCourt()Z
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Cost(I)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_MaxLvl(I)I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getSupremeCourt_Cost(I)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getSupremeCourtLevel()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setSupremeCourtLevel(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civData3:Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->getCorruption()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->supremeCourt:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_SupremeCourt;->SUPREME_COURT_CORRUPTION_REDUCTION_PER_LVL:F

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->setCorruption(F)V

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    return v2

    :cond_1
    return v1
.end method
