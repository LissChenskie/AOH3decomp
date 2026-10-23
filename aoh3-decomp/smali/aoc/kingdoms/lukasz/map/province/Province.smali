.class public Laoc/kingdoms/lukasz/map/province/Province;
.super Ljava/lang/Object;
.source "Province.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;
    }
.end annotation


# static fields
.field public static emptyProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;


# instance fields
.field public BaseDevelopment:F

.field public accessToMainSea:Z

.field public aiArmyScore:F

.field public aiBuildScore:F

.field public aiDistanceToCapital:F

.field public aiInvestScore:F

.field public aiMoveArmyAtWarScore:F

.field public aiMoveArmyAtWarScore_DistanceFromArmy:F

.field public aiPeaceCivID:I

.field public aiPeaceScore:I

.field public aiRebelsIndependenceChecked:Z

.field public aiRecruitArmyScore:I

.field public aiScore_CoresReligion:F

.field private belowZeroPosX:Z

.field public buildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;",
            ">;"
        }
    .end annotation
.end field

.field public buildingsConstruction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;",
            ">;"
        }
    .end annotation
.end field

.field public cityScale:F

.field public coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

.field private drawArmy:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;

.field private drawCities:Z

.field public drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

.field public drawInMapMode:Z

.field private drawProvince:Z

.field public fBaseGrowthRate:F

.field public fProvinceIncome:F

.field public fProvinceIncomeEconomy:F

.field public fProvinceIncomeProduction:F

.field public fProvinceIncomeTaxation:F

.field public fProvinceMaintenance:F

.field public fProvinceValue:F

.field public fogDrawArmy:Z

.field public fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

.field public haveACore:Z

.field private haveCity:Z

.field private iArmiesSize:I

.field public iBattlesInProvince:I

.field public iBuildingsConstructionSize:I

.field public iBuildingsLimit:I

.field public iBuildingsSize:I

.field public iCenterShiftX:I

.field public iCenterShiftY:I

.field private iCenterX:I

.field private iCenterX_Real:I

.field private iCenterY:I

.field private iCenterY_Real:I

.field private iCitiesSize:I

.field private iCivRegionID:I

.field private iContinentID:I

.field public iCoresSize:I

.field private iGeoRegionID:I

.field public iInfrastructureMax:I

.field private iLevelOfPort:I

.field private iMapModeRegion:I

.field private iMaxX:I

.field private iMaxX_Real:I

.field private iMaxY:I

.field private iMaxY_Real:I

.field private iMinX:I

.field private iMinX_Real:I

.field private iMinY:I

.field private iMinY_Real:I

.field public iNeighboringProvincesSize:I

.field public iNeighboringSeaProvincesSize:I

.field private iPointsSize:I

.field private iPortShiftX:I

.field private iPortShiftY:I

.field private iProvinceBordersLandByLandSize:I

.field private iProvinceBordersLandBySeaSize:I

.field private iProvinceBordersSeaBySeaSize:I

.field public iProvinceDevelopInfrastructureSize:I

.field public iProvinceID:I

.field public iProvinceIncreaseGrowthRateSize:I

.field public iProvinceIncreaseManpowerSize:I

.field public iProvinceIncreaseTaxEfficiencySize:I

.field public iProvinceInvestSize:I

.field public iProvinceNameLength_Minus1:I

.field private iResourceID:I

.field private iShiftX:I

.field private iShiftY:I

.field private iTerrainTypeID:I

.field private iTranslateProvincePosX:I

.field public isCapital:Z

.field private lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Laoc/kingdoms/lukasz/map/army/ArmyDivision;",
            ">;"
        }
    .end annotation
.end field

.field private lCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/City;",
            ">;"
        }
    .end annotation
.end field

.field public lNeighboringProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lNeighboringSeaProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinceBordersLandByLand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinceBordersLandBySea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation
.end field

.field private lProvinceBordersSeaBySea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdatedDevastation:F

.field public peaceTreatyIsTaken:Z

.field public peaceTreatyIsToTake:Z

.field public provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

.field private provinceBG:Laoc/kingdoms/lukasz/textures/Image;

.field public provinceBGExtraY:I

.field public provinceColor:Lcom/badlogic/gdx/graphics/Color;

.field public provinceDevelopInfrastructureDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public provinceIncreaseManpowerDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public provinceInvestDaysLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceInvest;",
            ">;"
        }
    .end annotation
.end field

.field public provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

.field public provincePopulationSize:I

.field public provincePopulationTotal:I

.field public religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

.field private sProvinceName:Ljava/lang/String;

.field private sProvinceNameUpperCase:Ljava/lang/String;

.field private seaProvince:Z

.field public was:Z

.field public wasAI:Z

.field public wasBattleEnded:Z

.field public wasBattleStart:Z

.field public wasCities:Z

.field public wasCivRegion:Z

.field public wasPlayer:Z

.field public wasRetreat:Z

.field public wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

.field public wonderID:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/Province;->emptyProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBGExtraY:I

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->buildings:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;->BUILDINGS_LIMIT_DEFAULT:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_DEFAULT:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->fogDrawArmy:Z

    new-instance v3, Laoc/kingdoms/lukasz/map/province/Province$1;

    invoke-direct {v3, p0}, Laoc/kingdoms/lukasz/map/province/Province$1;-><init>(Laoc/kingdoms/lukasz/map/province/Province;)V

    iput-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    const/4 v3, -0x1

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    new-instance v4, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    const-string v1, ""

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceName:Ljava/lang/String;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceNameLength_Minus1:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iContinentID:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTerrainTypeID:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iResourceID:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->seaProvince:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawCities:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCitiesSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    const/4 v4, 0x0

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeEconomy:F

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeProduction:F

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsToTake:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceCivID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiPeaceScore:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiInvestScore:F

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiScore_CoresReligion:F

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiRecruitArmyScore:I

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiArmyScore:F

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore:F

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiMoveArmyAtWarScore_DistanceFromArmy:F

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiRebelsIndependenceChecked:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->belowZeroPosX:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince:Z

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCivRegionID:I

    iput v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMapModeRegion:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->was:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasCivRegion:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasCities:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasAI:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasPlayer:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleStart:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wasBattleEnded:Z

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBattlesInProvince:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawInMapMode:Z

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->cityScale:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$2;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province$2;-><init>(Laoc/kingdoms/lukasz/map/province/Province;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$4;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/province/Province$4;-><init>(Laoc/kingdoms/lukasz/map/province/Province;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    iput v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->lastUpdatedDevastation:F

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    iput-object p3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPointsSize:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    move p1, v0

    :goto_0
    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPointsSize:I

    if-ge p1, p2, :cond_4

    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    if-le p2, p3, :cond_0

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    :cond_0
    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    if-ge p2, p3, :cond_1

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    :cond_1
    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    if-le p2, p3, :cond_2

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    :cond_2
    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Short;

    invoke-virtual {p3}, Ljava/lang/Short;->shortValue()S

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    add-int p3, p1, p2

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterX_Real:I

    iget p3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    add-int/2addr p3, v1

    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterY_Real:I

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterX:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterY:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget p2, p2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY:I

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    if-gez p1, :cond_5

    move v0, v2

    :cond_5
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->belowZeroPosX:Z

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    if-le p1, p2, :cond_6

    sput p2, Laoc/kingdoms/lukasz/jakowski/Game;->MAX_BELOW_ZERO_POINT_X:I

    :cond_6
    return-void
.end method


# virtual methods
.method public final addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v0, :cond_2

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_ARMIES:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;-><init>(Ljava/lang/String;Laoc/kingdoms/lukasz/map/army/ArmyDivision;Z)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTask_ArmyWidth(Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;)V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iput v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addArmyPosition(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addArmyPosition(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->checkForBattle()V

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addArmy_Load(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iput v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addArmyPosition(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addArmyPosition(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final addArmy_MoveUnits(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V
    .locals 3

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->fog:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_FOG;->HIDE_ARMIES:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;-><init>(Ljava/lang/String;Laoc/kingdoms/lukasz/map/army/ArmyDivision;Z)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->addSimpleTask_ArmyWidth(Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;)V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iput v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->checkForBattle()V

    :cond_1
    return-void
.end method

.method public final addBuildingConstruction(II)Z
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v0

    if-gez v0, :cond_5

    return v1

    :cond_5
    move v0, v1

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v2

    if-ne v2, p1, :cond_6

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v2

    if-ne v2, p2, :cond_6

    return v1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v2, v3, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_9

    return v1

    :cond_9
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v1, v2, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionTime(IIII)I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v2, v3, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionTime(IIII)I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;-><init>(IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v3, v4, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceBuildingsUnderConstruction(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, p2, :cond_a

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    :cond_a
    const/4 p1, 0x1

    return p1
.end method

.method public final addBuildingConstruction_Load(Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceBuildingsUnderConstruction(I)V

    return-void
.end method

.method public final addCity(Laoc/kingdoms/lukasz/map/map/City;)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCitiesSize:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    return-void
.end method

.method public addCore(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-ne p1, v0, :cond_0

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    :goto_1
    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, p1, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne p1, v1, :cond_3

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->checkProvince(II)V

    return-void
.end method

.method public final addCoreCreation()Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationTime(I)I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCoreCreationTime(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceCoreCreation(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->removeProvince(I)V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final addCoreCreation_Load(II)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v0, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceCoreCreation(I)V

    :cond_0
    return-void
.end method

.method public addCore_Just(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateHaveACore()V

    return-void
.end method

.method public addDevelopInfrastructure()Z
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addDevelopInfrastructure(I)Z

    move-result v0

    return v0
.end method

.method public addDevelopInfrastructure(I)Z
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureCost(I)F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureCostLegacy(I)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    if-lt v0, v2, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureCostLegacy(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureTime(I)I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceDevelopInfrastructure(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->addDevelopedInfrastructure(I)V

    return v0
.end method

.method public addDevelopInfrastructure_Free()Z
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevelopInfrastructureTime(I)I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceDevelopInfrastructure(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public addDevelopInfrastructure_Load(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceDevelopInfrastructure(I)V

    return-void
.end method

.method public addIncreaseGrowthRateInProvince()Z
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseGrowthRateInProvince(I)Z

    move-result v0

    return v0
.end method

.method public addIncreaseGrowthRateInProvince(I)Z
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateCost(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseGrowthRateTime(I)I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseGrowthRate(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_GROWTH:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->addIncreasedGrowthRate(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public addIncreaseGrowthRateInProvince_Load(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseGrowthRate(I)V

    return-void
.end method

.method public addIncreaseManpowerInProvince()Z
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseManpowerInProvince(I)Z

    move-result v0

    return v0
.end method

.method public addIncreaseManpowerInProvince(I)Z
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseManpowerCostLegacy(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreseManpowerTime(I)I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseManpower(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_GROWTH:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->addIncreasedManpower(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public addIncreaseManpowerInProvince_Load(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseManpower(I)V

    return-void
.end method

.method public addIncreaseTaxEfficiencyInProvince()Z
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addIncreaseTaxEfficiencyInProvince(I)Z

    move-result v0

    return v0
.end method

.method public addIncreaseTaxEfficiencyInProvince(I)Z
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreaseTaxEfficiencyCostLegacy(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncreasTaxEfficiencyTime(I)I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseTaxEfficiency(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_GROWTH:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->addIncreasedTaxEfficiency(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public addIncreaseTaxEfficiencyInProvince_Load(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceIncreaseTaxEfficiency(I)V

    return-void
.end method

.method public addInvestInProvince()Z
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addInvestInProvince(I)Z

    move-result v0

    return v0
.end method

.method public addInvestInProvince(I)Z
    .locals 3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->canInvestInEconomy(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestCost_Legacy(I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestTime(I)I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v2, v0, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceInvest(I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->addInvestedInEconomy(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public addInvestInProvince_Load(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceInvest(I)V

    return-void
.end method

.method public final addNeighboringProvince(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    return-void
.end method

.method public final addNeighboringSeaProvince(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringSeaProvincesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateAccessToMainSea()V

    return-void
.end method

.method public final addNewBuilding(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    return-void
.end method

.method public final addNewBuilding_LoadScenario(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result p1

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    return-void
.end method

.method public final addProvinceBorder(ILjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_4

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    :goto_4
    return-void
.end method

.method public final addReligionConversion()Z
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionTime(I)I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionTime(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->removeProvince(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceConvertReligion(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final addReligionConversion_Load(II)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v0, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceConvertReligion(I)V

    :cond_0
    return-void
.end method

.method public final addWonderConstruction_Load(II)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-direct {v0, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceWonderConstruction(I)V

    :cond_0
    return-void
.end method

.method public final armyDestroyed(Ljava/lang/String;)V
    .locals 10

    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v9, Laoc/kingdoms/lukasz/map/province/Province$3;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ARMY_DESTROYED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ArmyDestroyed"

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->battle:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v8

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/map/province/Province$3;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_1
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final armyRetreat(Ljava/lang/String;I)I
    .locals 8

    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_d

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->armyDestroyed(Ljava/lang/String;)V

    return v1

    :cond_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/war/WarManager;->retreatToProvinceID(II)I

    move-result v2

    if-gez v2, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-lez v4, :cond_2

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-lez v1, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    goto/16 :goto_3

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_1
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-ne v0, v5, :cond_7

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    if-eq v5, v6, :cond_5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move v5, v1

    :goto_2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-ne v0, v6, :cond_6

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    if-eq v6, v7, :cond_6

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_9
    :goto_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->removeInvasion(Ljava/lang/String;)Z

    :cond_a
    const/4 v1, -0x1

    if-ltz v2, :cond_c

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3, v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v3

    if-eqz v3, :cond_b

    return v1

    :cond_b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, p2, 0x1

    const/4 v5, 0x1

    move-object v3, p1

    move v4, p2

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->newMove(IILjava/lang/String;IZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move p2, v6

    goto :goto_5

    :catch_0
    move-exception p1

    move p2, v6

    goto :goto_4

    :cond_c
    return v1

    :catch_1
    move-exception p1

    :goto_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_d
    :goto_5
    return p2
.end method

.method public final atomicBombDropped()I
    .locals 9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombCasualties(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationSize()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationCivID(I)I

    move-result v4

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_ECONOMY:F

    const v5, 0x3c23d70a    # 0.01f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int/2addr v2, v3

    :goto_2
    if-ltz v2, :cond_1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v5, v5

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v6, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_ARMY:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->atomic:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Atomic;->ATOMIC_BOMB_DEVASTATION:F

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setDevastation(F)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final autoAssimilate()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->haveACore(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eq v2, v3, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->AUTO_ASSIMILATION_MIN:I

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->AUTO_ASSIMILATION_PERC:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->AUTO_ASSIMILATION_ALL_IF_BELOW:I

    if-ge v3, v4, :cond_0

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v2

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationOfCivID(I)I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v3

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final buildDistanceToCapital()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistanceFromProvinceToProvince(II)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iMaxDistance:F

    div-float/2addr v0, v1

    const v1, 0x3a83126f    # 0.001f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3f7d70a4    # 0.99f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    :cond_0
    return-void
.end method

.method public final buildPopulation_LoadGame()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    return-void
.end method

.method public final buildProvinceBG(Z)V
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "map/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "data/scales/AvailableScales.txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_0

    aget-object v7, v2, v6

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v2, v0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    const/4 v6, -0x4

    const/4 v7, 0x1

    if-ne v2, v6, :cond_1

    move v2, v7

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x0

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    if-ne v8, v9, :cond_2

    const/4 v6, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move v6, v7

    :goto_3
    const/4 v8, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v7, :cond_4

    const/4 v2, 0x0

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v2, :cond_7

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    if-eq v2, v7, :cond_7

    const-string v2, "1"

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const/4 v2, 0x0

    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_22

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    const-string v6, "/"

    const-string v8, "data/scales/"

    if-nez p1, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    move v14, v7

    goto/16 :goto_12

    :cond_8
    new-instance v9, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v10, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v10, v11

    iget v11, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    iget v11, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v11, v12

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    sget-object v12, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v11, v11, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    if-nez v10, :cond_9

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvincePoints_Cut()V

    :cond_9
    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_21

    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v12

    if-ge v11, v12, :cond_20

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v12

    if-nez v12, :cond_b

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v14, v7

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_c

    iget v15, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v15, v5

    add-int/2addr v15, v11

    iget v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v7

    add-int/2addr v5, v10

    invoke-static {v13, v15, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains_Cut(III)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v14, 0x0

    :cond_a
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_9

    :cond_b
    const/4 v14, 0x1

    :cond_c
    if-nez v14, :cond_e

    :cond_d
    :goto_a
    const/4 v14, 0x1

    goto/16 :goto_11

    :cond_e
    iget v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v7, v12

    add-int/2addr v7, v11

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    invoke-static {v5, v7, v12}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v12

    if-ge v7, v12, :cond_10

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v13

    if-le v12, v13, :cond_f

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    iget v13, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v11

    iget v14, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v15, v15, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v14, v15

    add-int/2addr v14, v10

    invoke-static {v12, v13, v14}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v12

    if-eqz v12, :cond_f

    const/4 v5, 0x0

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_10
    if-eqz v5, :cond_d

    invoke-virtual {v9, v11, v10}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    goto :goto_a

    :cond_11
    iget v5, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v7, v12

    add-int/2addr v7, v11

    const/4 v12, 0x1

    add-int/2addr v7, v12

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v10

    invoke-static {v5, v7, v12}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v5

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v11

    iget v13, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v10

    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-static {v7, v12, v13}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_12

    move/from16 v5, v16

    :cond_12
    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/lit8 v12, v12, -0x1

    iget v13, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v10

    invoke-static {v7, v12, v13}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v5, 0x1

    :cond_13
    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v11

    iget v13, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v10

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-static {v7, v12, v13}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v5, 0x1

    :cond_14
    if-nez v5, :cond_15

    goto/16 :goto_a

    :cond_15
    const/4 v5, 0x0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v5, v7, :cond_17

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v11

    iget v13, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v10

    invoke-static {v7, v12, v13}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v5, 0x1

    goto :goto_d

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_17
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_18

    goto/16 :goto_a

    :cond_18
    const/4 v5, 0x0

    :goto_e
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v7

    if-ge v5, v7, :cond_1e

    iget v7, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v12

    if-le v7, v12, :cond_1c

    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v11

    const/4 v13, 0x1

    add-int/2addr v12, v13

    iget v13, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v10

    invoke-static {v7, v12, v13}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_19

    :goto_f
    const/4 v12, 0x1

    const/4 v14, 0x1

    goto :goto_10

    :cond_19
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v11

    iget v13, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v10

    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-static {v7, v12, v13}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_1a

    move/from16 v12, v16

    move v14, v12

    goto :goto_10

    :cond_1a
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v11

    add-int/lit8 v12, v12, -0x1

    iget v13, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v10

    invoke-static {v7, v12, v13}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_1b

    goto :goto_f

    :cond_1b
    invoke-virtual {v0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    iget v12, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v11

    iget v13, v0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v14, v14, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v13, v14

    add-int/2addr v13, v10

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-static {v7, v12, v13}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v7

    if-eqz v7, :cond_1d

    move v12, v14

    goto :goto_10

    :cond_1c
    const/4 v14, 0x1

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_e

    :cond_1e
    const/4 v14, 0x1

    const/4 v12, 0x0

    :goto_10
    if-eqz v12, :cond_1f

    invoke-virtual {v9, v11, v10}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    :cond_1f
    :goto_11
    add-int/lit8 v11, v11, 0x1

    move v7, v14

    goto/16 :goto_8

    :cond_20
    move v14, v7

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    :cond_21
    move v14, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-static {v5, v9}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "-- PROVINCE DATA GENERATED "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Laoc/kingdoms/lukasz/menu_element/Toast;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Laoc/kingdoms/lukasz/menu_element/Toast;)V

    :goto_12
    add-int/lit8 v2, v2, 0x1

    move v7, v14

    goto/16 :goto_6

    :cond_22
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PROVINCE: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AoC"

    invoke-interface {v2, v4, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iput v1, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    return-void
.end method

.method public final buildProvinceBG_Just(Z)V
    .locals 14

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "map/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "data/scales/AvailableScales.txt"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    aget-object v6, v1, v5

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    const/4 v5, -0x4

    const/4 v6, 0x1

    if-ne v1, v5, :cond_1

    move v1, v6

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    move v5, v4

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    if-ne v7, v8, :cond_2

    move v5, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_3
    move v7, v4

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_4

    move v1, v4

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v1, :cond_7

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->DefaultMapScale:I

    if-eq v1, v6, :cond_7

    const-string v1, "1"

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    move v1, v4

    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_d

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    const-string v5, "/"

    const-string v6, "data/scales/"

    if-nez p1, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_9

    :cond_8
    new-instance v7, Lcom/badlogic/gdx/graphics/Pixmap;

    iget v8, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX_Real:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v8, v9

    iget v9, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    iget v9, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY_Real:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v9, v10

    iget v10, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v10, v11

    sub-int/2addr v9, v10

    sget-object v10, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v7, v8, v9, v10}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v9, v9, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->cutProvinces:Ljava/util/List;

    if-nez v8, :cond_9

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadManager;->loadProvincePoints_Cut()V

    :cond_9
    move v8, v4

    :goto_7
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_c

    move v9, v4

    :goto_8
    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_b

    iget v10, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    iget v11, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX_Real:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v12, v12, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v11, v12

    add-int/2addr v11, v9

    iget v12, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY_Real:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v13, v13, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v12, v13

    add-int/2addr v12, v8

    invoke-static {v10, v11, v12}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v7, v9, v8}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(II)V

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "-- PROVINCE DATA GENERATED "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Laoc/kingdoms/lukasz/menu_element/Toast;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Laoc/kingdoms/lukasz/menu_element/Toast;)V

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_d
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PROVINCE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AoC"

    invoke-interface {p1, v2, v1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iput v0, p1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    return-void
.end method

.method public buildWonder()Z
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/WondersManager;->getWonderConstructionCost(II)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/WondersManager;->getWonderConstructionCost(II)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    sget-object v1, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v1, v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ConstructionTime:I

    sget-object v2, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v2, v2, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ConstructionTime:I

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;-><init>(II)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addProvinceWonderConstruction(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public buildingBuilt(II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final cancelBuildingConstruction(III)Z
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    move p1, v0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge p1, v1, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p2, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p3, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v2, v3, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTimeLeft()I

    move-result p3

    int-to-float p3, p3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTime()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p3, v2

    mul-float/2addr p2, p3

    add-float/2addr v1, p2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-nez p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceBuildingsUnderConstruction(I)V

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, p2, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_4
    return v0
.end method

.method public final checkForBattle()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v2, v3, v1, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->joinBattle(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-eqz v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v2, v3, v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->joinBattle(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->startBattle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final clearArmiesCivID(I)V
    .locals 4

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne p1, v1, :cond_1

    if-gez p1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeArmyPosition(ILjava/lang/String;)V

    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public final clearArmies_ScenarioEditor()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    return-void
.end method

.method public final clearCities()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCitiesSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    return-void
.end method

.method public clearCores()V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    return-void
.end method

.method public final clearData()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->clearPopulationData()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->buildings:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;->BUILDINGS_LIMIT_DEFAULT:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_DEFAULT:I

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setWonderBuilt(Z)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;-><init>()V

    iput-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    return-void
.end method

.method public final clearPopulationData()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    return-void
.end method

.method public final destroyBuilding(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v1, p1, p2, v2}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final destroyBuilding_ScenarioEditor(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public disbandRegiment(Ljava/lang/String;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRegiment;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v4, v5, v3, v6}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(Ljava/lang/String;ZI)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p2

    iget p2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy_UnassignGeneral(I)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v3

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method public final disposeProvinceBG()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    int-to-float p5, p5

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p5, v1

    invoke-virtual {p0, p1, v0, p5}, Laoc/kingdoms/lukasz/map/province/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    iget-object p5, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p2, v0

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p3, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float/2addr v0, p4

    invoke-virtual {p5, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 2

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-interface {v0, p1, v1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;->drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 8

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/map/map/City;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/map/map/City;->drawCity(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V

    :cond_0
    return-void
.end method

.method public final drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 8

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/map/map/City;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V

    :cond_0
    return-void
.end method

.method public final drawCities_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/City;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, p1, v1, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    :cond_0
    return-void
.end method

.method public final drawCities_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/City;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, p1, v1, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    :cond_0
    return-void
.end method

.method public final drawCities_InGame_CivFlagWar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 2

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/City;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, p1, v1, p2, p3}, Laoc/kingdoms/lukasz/map/map/City;->drawCityName_Capital_CivFlag_War(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFF)V

    :cond_0
    return-void
.end method

.method public final drawCities_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 8

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/map/map/City;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V

    :cond_0
    return-void
.end method

.method public final drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 8

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/map/map/City;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFFF)V

    :cond_0
    return-void
.end method

.method public final drawCities_NamesNotCapital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V
    .locals 6

    iget-boolean p4, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveCity:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Laoc/kingdoms/lukasz/map/map/City;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/map/map/City;->drawCity_NameNotCapital(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFFF)V

    :cond_0
    return-void
.end method

.method public final drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    return-void
.end method

.method public final drawDetailsSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawDetails:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, p1, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->drawDetailsSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    return-void
.end method

.method public final drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method public final drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    invoke-virtual {p2, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method public final drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method public final drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    invoke-virtual {p2, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method public final drawLandProvince_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceColor_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    invoke-virtual {p2, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method protected final drawOccupiedProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pattOccupied:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_SCALE:F

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    const-string v1, "u_maskScale"

    invoke-virtual {p2, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pattOccupied:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_SCALE:F

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    const-string v1, "u_maskScaleY"

    invoke-virtual {p2, v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object p2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v0, 0x84c0

    invoke-interface {p2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->pattOccupied:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int v2, p2, v1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p2

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int v3, p2, v1

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    int-to-float p2, p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float/2addr p2, v1

    float-to-int v4, p2

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float/2addr p2, v1

    float-to-int v5, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    return-void
.end method

.method public final drawOccupiedProvince_Religion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->OCCUPIED_PROVINCE_ALPHA:F

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v1

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_OCCUPIED_SCALE:F

    mul-float/2addr v1, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->patt3:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    div-float/2addr v2, v4

    const-string v4, "u_maskScale"

    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha_Pattern:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->patt3:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    div-float/2addr v2, v4

    const-string v1, "u_maskScaleY"

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformf(Ljava/lang/String;F)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->patt3:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int v3, v0, v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int v4, v0, v2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float/2addr v0, v2

    float-to-int v5, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float/2addr v0, v2

    float-to-int v6, v0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    return-void
.end method

.method protected final drawProvinceBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FLspace/earlygrey/shapedrawer/JoinType;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    invoke-interface {v2, p1, v3, p3, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    invoke-interface {v2, p1, v3, p3, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    invoke-interface {v1, p1, v2, p3, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v3, v3

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v2

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    :goto_0
    return-void
.end method

.method public final drawProvince_ActiveProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;)V
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v2, v2

    invoke-virtual {p2, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    add-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    invoke-virtual {p2, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final drawWasteland(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    int-to-float p5, p5

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p5, v1

    invoke-static {v0, p5}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getWastelandColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p5, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p2, v0

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    int-to-float v0, v0

    mul-float/2addr v0, p4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr p3, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float/2addr v0, p4

    invoke-virtual {p5, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V

    return-void
.end method

.method public final draw_FogOfWarDiscovery(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getMetProvince(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    int-to-float v1, p5

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    int-to-float v1, v1

    mul-float/2addr v1, p4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, p2

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    int-to-float v2, v2

    mul-float/2addr v2, p4

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v2, p3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    mul-float/2addr v3, p4

    invoke-virtual {v0, p1, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIF)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/map/province/Province;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    return-object p1
.end method

.method public final getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getArmyKey(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getArmyKeyID(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final getArmyKeyID(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final getArmyRegimentSize_InProvince()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getArmySize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    return v0
.end method

.method public getBaseEconomy()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    return v0
.end method

.method public final getBelowZero()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->belowZeroPosX:Z

    return v0
.end method

.method public getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    return-object p1
.end method

.method public getBuildingsConstruction(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    return-object p1
.end method

.method public getBuildingsConstruction_MaintenanceCosts()F
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v1, v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v4

    aget v3, v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v4, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v5

    aget v4, v4, v5

    cmpl-float v4, v4, v0

    if-lez v4, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->research:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Research;->RESEARCH_MAINTENANCE_COST:F

    mul-float/2addr v4, v5

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    add-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return v2
.end method

.method public getBuildingsLimit_FreeSlots()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getCenterX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterX:I

    return v0
.end method

.method public final getCenterX_Real()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterX_Real:I

    return v0
.end method

.method public final getCenterY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterY:I

    return v0
.end method

.method public final getCenterY_Real()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterY_Real:I

    return v0
.end method

.method public final getCitiesSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCitiesSize:I

    return v0
.end method

.method public final getCity(I)Laoc/kingdoms/lukasz/map/map/City;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lCities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/map/City;

    return-object p1
.end method

.method public final getCivID()I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    return v0
.end method

.method public final getCivRegionID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCivRegionID:I

    return v0
.end method

.method public final getConstructionID(II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final getContinent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iContinentID:I

    return v0
.end method

.method public getCore(I)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDevastation()F
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->getDevastation()F

    move-result v0

    return v0
.end method

.method public final getDrawCities()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawCities:Z

    return v0
.end method

.method public final getDrawProvince()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince:Z

    return v0
.end method

.method public getEconomy()F
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->getEconomy()F

    move-result v0

    return v0
.end method

.method public getEconomyWithBonuses()F
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->getEconomy()F

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->Economy:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getFogDrawArmy()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fogDrawArmy:Z

    return v0
.end method

.method public getFortDefense()I
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_FORT_DEFENSE_DEFAULT:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_FORT_DEFENSE_PER_FORT_LVL:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_FORT_DEFENSE_PER_GROWTH_RATE_LVL:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortDefense:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->getManpower()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    if-gez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->REBELS_FORT_DEFENSE:F

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getFortDefense_Manpower()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_FORT_DEFENSE_PER_MANPOWER_LVL:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->getManpower()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getFortLevel()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    return v0
.end method

.method public final getGeoRegion()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iGeoRegionID:I

    return v0
.end method

.method public final getGrowthRate()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fBaseGrowthRate:F

    return v0
.end method

.method public final getGrowthRateWithBonuses()F
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fBaseGrowthRate:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->getIncreasedGrowthRate()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->getColonizationGrowthRateExtra()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v1, v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;->PopulationGrowth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_GROWTH_RATE_PER_LVL:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public final getGrowthRateWithBonuses_WithoutColonizationBonus()F
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fBaseGrowthRate:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->getIncreasedGrowthRate()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v1, v1, Laoc/kingdoms/lukasz/map/terrain/Terrain;->PopulationGrowth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_GROWTH_RATE_PER_LVL:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    return v0
.end method

.method public final getInfrastructure()I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->getInfrastructure()I

    move-result v0

    return v0
.end method

.method public final getLevelOfPort()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    return v0
.end method

.method public getLoot()F
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->getLoot()F

    move-result v0

    return v0
.end method

.method public getManpower()F
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->getManpower()F

    move-result v0

    return v0
.end method

.method public final getMapModeRegionID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMapModeRegion:I

    return v0
.end method

.method public final getMaxX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxX:I

    return v0
.end method

.method public final getMaxY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMaxY:I

    return v0
.end method

.method public final getMinX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinX:I

    return v0
.end method

.method public final getMinY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMinY:I

    return v0
.end method

.method public final getNeighboringProvinces(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getNeighboringProvincesSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    return v0
.end method

.method public final getNeighboringSeaProvinces(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getNeighboringSeaProvincesSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringSeaProvincesSize:I

    return v0
.end method

.method public final getPointsSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPointsSize:I

    return v0
.end method

.method public final getPointsX(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, v0

    return p1
.end method

.method public final getPointsY(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lPointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, v0

    return p1
.end method

.method public final getPopulationCivID(I)I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result p1

    return p1
.end method

.method public final getPopulationID(I)I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result p1

    return p1
.end method

.method public final getPopulationOfCivID(I)I
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getPopulationSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    return v0
.end method

.method public getPopulationTotal()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    return v0
.end method

.method public final getPortShiftX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPortShiftX:I

    return v0
.end method

.method public final getPortShiftY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPortShiftY:I

    return v0
.end method

.method public final getProvinceBG()Laoc/kingdoms/lukasz/textures/Image;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    return-object v0
.end method

.method public final getProvinceBordersAll(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object p1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    sget-object p1, Laoc/kingdoms/lukasz/map/province/Province;->emptyProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object p1
.end method

.method public final getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/map/province/Province;->emptyProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object p1
.end method

.method public final getProvinceBordersLandByLand()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    return-object v0
.end method

.method public final getProvinceBordersLandByLandSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    return v0
.end method

.method public final getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/map/province/Province;->emptyProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object p1
.end method

.method public final getProvinceBordersLandBySea()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    return-object v0
.end method

.method public final getProvinceBordersLandBySeaSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    return v0
.end method

.method public final getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/map/province/Province;->emptyProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    return-object p1
.end method

.method public final getProvinceBordersSeaBySea()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    return-object v0
.end method

.method public final getProvinceBordersSeaBySeaSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    return v0
.end method

.method public final getProvinceBuildingsMaintenance()F
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaintenanceCost:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingsMaintenanceCost:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getProvinceID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    return v0
.end method

.method public getProvinceIncome()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    return v0
.end method

.method public final getProvinceMaintenance()F
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceMaintenanceEconomy(II)F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceMaintenanceTax(II)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceMaintenanceManpower(II)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProvinceMaintenance:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_PROVINCE_MAINTENANCE:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    aget v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_PROVINCE_MAINTENANCE_PER_LVL:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getProvinceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvinceNameUpperCase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvinceValue_Economy()F
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_PER_ECONOMY_MAX:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_PER_ECONOMY:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public final getProvinceValue_GrowthRate()F
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_PER_GROWTH_RATE_MAX:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_PER_GROWTH_RATE:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getReligion()I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->getReligionID()I

    move-result v0

    return v0
.end method

.method public final getResourceID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iResourceID:I

    return v0
.end method

.method public final getRevolutionaryRisk_MonhtlyChange()F
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevolutionaryRisk_MonhtlyChange_CivStability()F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevolutionaryRisk_MonhtlyChange_WarWeariness()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevolutionaryRisk_MonhtlyChange_BudgetTaxation()F

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v4

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    return v0
.end method

.method public final getRevolutionaryRisk_MonhtlyChange_BudgetTaxation()F
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->TAXATION_LEVEL_UNREST_PER_MONTH:[F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTaxationLevel()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getRevolutionaryRisk_MonhtlyChange_CivStability()F
    .locals 6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civStability_LostFrom100:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_UNREST_PER_POINT:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    if-eq v3, v4, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_UNREST_DIFFERENT_RELIGION_PER_POINT:F

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    add-float/2addr v2, v3

    iget-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_UNREST_NON_CORE_PER_POINT:F

    :goto_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_UNREST_PERC_MIN:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->civStability:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivStability;->CS_UNREST_PERC_GROWTH_RATE:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    return v0

    :cond_2
    return v1
.end method

.method public final getRevolutionaryRisk_MonhtlyChange_WarWeariness()F
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_UNREST_PER_POINT:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    if-eq v3, v4, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_UNREST_DIFFERENT_RELIGION_PER_POINT:F

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    add-float/2addr v2, v3

    iget-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_UNREST_NON_CORE_PER_POINT:F

    :goto_1
    add-float/2addr v2, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_UNREST_PERC_MIN:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_UNREST_PERC_GROWTH_RATE:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    mul-float/2addr v2, v1

    mul-float v1, v0, v2

    :cond_2
    return v1
.end method

.method public getRevulutionaryRisk()F
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->getRevolutionaryRisk()F

    move-result v0

    return v0
.end method

.method public final getSeaProvince()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->seaProvince:Z

    return v0
.end method

.method public final getShiftX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iShiftX:I

    return v0
.end method

.method public final getShiftY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iShiftY:I

    return v0
.end method

.method public getSiegeProgress()F
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->getSiegeProgress()F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getFortDefense()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getTaxEfficiency()F
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->getTaxEfficiency()F

    move-result v0

    return v0
.end method

.method public getTaxEfficiencyWithBonuses()F
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->getTaxEfficiency()F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalTaxEfficiency:F

    add-float/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_TAX_EFFICIENCY_PER_LVL:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public final getTerrainID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTerrainTypeID:I

    return v0
.end method

.method public final getTranslateProvincePosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    return v0
.end method

.method public getUsedBuildingsSlots()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getWarScore()F
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWarScore(I)F

    move-result v0

    return v0
.end method

.method public final getWarScore(I)F
    .locals 1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalProvincesValue:F

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public final getWasteland()I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getWastelandLevel()I

    move-result v0

    return v0
.end method

.method public getWonderBuilt()Z
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->isWonderBuilt()Z

    move-result v0

    return v0
.end method

.method public haveACore(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

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

.method public final haveArmy(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public haveResearchBuilding()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final invasionMoveArmies()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->invasion:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->moveInvasion(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final isEnemyArmyInProvince(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

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

.method public final isOccupied()Z
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isUnderConstruction(II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v2

    if-ne v2, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final loadProvinceBG()V
    .locals 9

    const-string v0, "/"

    const-string v1, "data/scales/"

    const-string v2, "map/"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->LOAD_SEA_PROVINCES:Z

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    const/4 v6, 0x1

    const/4 v7, -0x4

    if-ne v5, v7, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v5, v5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    div-float/2addr v5, v8

    float-to-int v5, v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    int-to-float v2, v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapExtraScale:F

    div-float/2addr v2, v4

    float-to-int v6, v2

    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v5, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v2, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildProvinceBG(Z)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Landroidx/lifecycle/livedata/core/jzw/jkEBdieJhbh;->PkDqzpQOMObDI:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildProvinceBG(Z)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->loadProvinceBG()V

    :goto_2
    return-void
.end method

.method public final lootProvince(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getLootValue(I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setLoot(F)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDevastationOccupiedProvince(I)F

    move-result p1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDevastation(F)V

    return-void
.end method

.method public final mergeUnits(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    invoke-virtual {p0, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v6, :cond_0

    move v2, v5

    goto :goto_1

    :cond_0
    if-gez v2, :cond_1

    move v4, v3

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_1
    if-ltz v2, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_2
    if-ge v5, v0, :cond_4

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_3

    move v7, v1

    :goto_3
    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v7, v8, :cond_3

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    iget v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v3, v4, :cond_5

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy_UnassignGeneral(I)V

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    return-object v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public final occupyProvince()V
    .locals 15

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    move v1, v3

    move v4, v1

    move v5, v4

    move v6, v5

    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v7

    if-ge v1, v7, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v7, v8, :cond_1

    move v0, v2

    move v6, v0

    :cond_1
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    if-le v7, v5, :cond_2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_f

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalProvincesValue()V

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    if-gez v4, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addOccupiedProvince(I)V

    goto :goto_2

    :cond_4
    if-lez v4, :cond_5

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->lootProvince(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->occupyProvince_DecreaseGrowthRate()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/events/EventsManager;->runEvents_Siege(II)V

    :cond_5
    :goto_2
    if-eqz v0, :cond_8

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/Province$14;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SIEGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    if-eqz v6, :cond_6

    const-string v8, "SiegeWon"

    goto :goto_3

    :cond_6
    const-string v8, "SiegeLost"

    :goto_3
    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-eqz v6, :cond_7

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    goto :goto_4

    :cond_7
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    :goto_4
    move-object v13, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v14

    move-object v7, v2

    move-object v8, p0

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/map/province/Province$14;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_8
    if-gez v4, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->REBELS_OCCUPY_NEIGHBORING_PROVINCES:Z

    if-eqz v1, :cond_e

    :cond_9
    :goto_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v3, v1, :cond_e

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_d

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    if-gez v4, :cond_a

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addOccupiedProvince(I)V

    :cond_a
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/SiegeManager;->removeProvinceSiege(I)V

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->lootProvince(I)V

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V

    goto :goto_6

    :cond_b
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setOccupiedByCivID(I)V

    if-gez v4, :cond_c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->addOccupiedProvince(I)V

    :cond_c
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/SiegeManager;->removeProvinceSiege(I)V

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->lootProvince(I)V

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V

    :cond_d
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V

    :cond_f
    return-void
.end method

.method public final occupyProvince_DecreaseGrowthRate()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->OCCUPY_PROVINCE_DECREASE_GROWTH_RATE:F

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    return-void
.end method

.method public final removeArmy(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeArmyPosition(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeArmyPosition(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final removeArmy(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V
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

.method public final removeArmyCivID(I)V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public final removeArmy_MoveUnits(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final removeArmy_MoveUnits(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy_MoveUnits(I)V
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

.method public final removeArmy_UnassignGeneral(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
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

.method public removeCore(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    :goto_2
    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, p1, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civilizationCores:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_Cores;->checkProvince(II)V

    return-void
.end method

.method public removeCore_ScenarioEditor(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateHaveACore()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeNeighboringProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringProvincesSize:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeNeighboringSeaProvince(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringSeaProvincesSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lNeighboringSeaProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringSeaProvincesSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateAccessToMainSea()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeProvinceBorder(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandByLand:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandByLandSize:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v2

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersLandBySea:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersLandBySeaSize:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getWithProvinceID()I

    move-result v1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lProvinceBordersSeaBySea:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceBordersSeaBySeaSize:I

    return-void

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final resetColonizationData()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationStartedTurnID(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData9(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData9;->setColonizationGrowthRateExtra(I)V

    return-void
.end method

.method public final resetSiegeData()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setSiegeProgress(F)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->setIsUnderSiege(IZ)V

    return-void
.end method

.method public final retakeOccupiedProvince()V
    .locals 13

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateTotalProvincesValue()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWarScore()F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    invoke-virtual {v4, v3, v5, v6, v7}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd_Province(FIII)F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    neg-float v5, v3

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    iget v5, v4, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    sub-float/2addr v5, v3

    iput v5, v4, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    goto :goto_0

    :cond_0
    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    iget v5, v4, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    add-float/2addr v5, v3

    iput v5, v4, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v4, v3, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_3

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    move v3, v1

    goto :goto_3

    :catch_0
    move-exception v0

    move v3, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move v3, v2

    :goto_2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v2

    move v3, v0

    :goto_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v4

    if-gez v4, :cond_5

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->removeOccupiedProvince(I)V

    move v4, v2

    :goto_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v5, v6, :cond_4

    move v0, v1

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    move v1, v3

    :goto_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    if-eqz v1, :cond_8

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v12, Laoc/kingdoms/lukasz/map/province/Province$13;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->SIEGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    if-eqz v0, :cond_6

    const-string v7, "SiegeWon"

    goto :goto_6

    :cond_6
    const-string v7, "SiegeLost"

    :goto_6
    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-eqz v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    goto :goto_7

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    :goto_7
    move-object v10, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v11

    move-object v4, v12

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/map/province/Province$13;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v3, v12}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_8
    move v0, v2

    :goto_8
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_d

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFortLevel()I

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v3, v4, :cond_c

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    :try_start_2
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getWarScore(I)F

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v8

    invoke-virtual {v5, v4, v6, v7, v8}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd_Province(FIII)F

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    neg-float v6, v4

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget v5, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    sub-float/2addr v5, v4

    iput v5, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    goto :goto_9

    :cond_9
    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    sget-object v5, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    iget v5, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    add-float/2addr v5, v4

    iput v5, v3, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_a
    :goto_9
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/SiegeManager;->removeProvinceSiege(I)V

    :cond_b
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->invasionMoveArmies()V

    :cond_e
    return-void
.end method

.method public final retakeOccupiedProvince_Peace()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    return-void
.end method

.method public final setBG(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    sget-object p1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v0, v1, p1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceBG:Laoc/kingdoms/lukasz/textures/Image;

    return-void
.end method

.method public final setCivID(I)V
    .locals 9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeProvince(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v2, v1}, Laoc/kingdoms/lukasz/map/WondersManager;->updateCivBonuses(III)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v2, v1}, Laoc/kingdoms/lukasz/map/WondersManager;->updateProvinceBonuses(III)V

    :cond_1
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    if-ne v0, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    move v4, v3

    :goto_1
    iget v5, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v4, v5, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v7

    invoke-static {v5, v6, v7, v1}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$5;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "buildCivilizationsRegion"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v6

    invoke-direct {v1, p0, v4, v6}, Laoc/kingdoms/lukasz/map/province/Province$5;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$6;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "updateCivStability"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v7

    invoke-direct {v1, p0, v4, v7}, Laoc/kingdoms/lukasz/map/province/Province$6;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$7;

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    sget-object v7, Lcom/google/android/gms/internal/common/oss/ClXgFvsSKQc;->wYglKUyw:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v8

    invoke-direct {v1, p0, v4, v8}, Laoc/kingdoms/lukasz/map/province/Province$7;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setCivID(I)V

    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$8;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-direct {v1, p0, v4, v6}, Laoc/kingdoms/lukasz/map/province/Province$8;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    new-instance v1, Laoc/kingdoms/lukasz/map/province/Province$9;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-direct {v1, p0, v4, v6}, Laoc/kingdoms/lukasz/map/province/Province$9;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    if-eqz v0, :cond_4

    move v0, v3

    :goto_2
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v4

    iget-object v6, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v6

    invoke-static {v1, v4, v6, v2}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addProvince(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateCivBonuses(III)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateProvinceBonuses(III)V

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceConvertReligion(I)V

    :cond_6
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceCoreCreation(I)V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    move v0, v3

    :goto_3
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v1, v4, :cond_8

    iput-boolean v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-eq v0, v1, :cond_a

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    :cond_a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateNameToNewTrueOwner(IZ)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvinceBorder(I)V

    new-instance v0, Laoc/kingdoms/lukasz/map/province/Province$10;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Laoc/kingdoms/lukasz/map/province/Province$10;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    iget-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince:Z

    if-eqz p1, :cond_b

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/FBO/FBOProvincesBG;->redrawnProvinces()V

    :cond_b
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->buildDistanceToCapital()V

    return-void
.end method

.method public final setCivID_Just(I)V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setCivID(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateNameToNewTrueOwner(IZ)V

    return-void
.end method

.method public final setCivID_LoadScenario(I)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setCivID(I)V

    return-void
.end method

.method public final setCivID_RemoveOldAddNewToCiv(I)V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->removeProvince(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateCivBonuses(III)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateProvinceBonuses(III)V

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setCivID(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->clearCores()V

    if-lez p1, :cond_2

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addCore_Just(I)V

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p1, v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateNameToNewTrueOwner(IZ)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addProvince(I)V

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Laoc/kingdoms/lukasz/map/WondersManager;->updateCivBonuses(III)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {p1, v0, v1}, Laoc/kingdoms/lukasz/map/WondersManager;->updateProvinceBonuses(III)V

    :cond_3
    return-void
.end method

.method public final setCivRegionID(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCivRegionID:I

    return-void
.end method

.method public final setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .locals 1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iput p3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final setCivilizationProvinceColor_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V
    .locals 1

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorMap:Lcom/badlogic/gdx/graphics/Color;

    iput p3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    iput p3, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civColorFog:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final setContinent(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iContinentID:I

    return-void
.end method

.method public setDevastation(F)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->DEVASTATION_MAX:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->getDevastation()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->setDevastation(F)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lastUpdatedDevastation:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_INCOME_PER_DEVASTATION_CHANGE:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lastUpdatedDevastation:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_0
    return-void
.end method

.method public final setDrawCities(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawCities:Z

    return-void
.end method

.method public final setDrawProvince(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawProvince:Z

    return-void
.end method

.method public setEconomy(F)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->setEconomy(F)V

    return-void
.end method

.method public setFogDrawArmy(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fogDrawArmy:Z

    if-eqz p1, :cond_0

    new-instance p1, Laoc/kingdoms/lukasz/map/province/Province$15;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/Province$15;-><init>(Laoc/kingdoms/lukasz/map/province/Province;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    goto :goto_0

    :cond_0
    new-instance p1, Laoc/kingdoms/lukasz/map/province/Province$16;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/map/province/Province$16;-><init>(Laoc/kingdoms/lukasz/map/province/Province;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    :goto_0
    return-void
.end method

.method public final setGeoRegion(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iGeoRegionID:I

    return-void
.end method

.method public final setGrowthRate(F)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fBaseGrowthRate:F

    return-void
.end method

.method public final setInfrastructure(I)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData6(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData6;->setInfrastructure(I)V

    return-void
.end method

.method public final setIsCapital(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(ZZ)V

    return-void
.end method

.method public final setIsCapital(ZZ)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    add-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_MONTHLY_INCOME:F

    add-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_FORT_LVL:I

    add-int/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    goto :goto_2

    :cond_1
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_GROWTH_RATE:F

    sub-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->LocalGrowthRate:F

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_MONTHLY_INCOME:F

    sub-float/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_FORT_LVL:I

    sub-int/2addr v0, v1

    iput v0, p2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->FortLevel:I

    iget p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_3

    :try_start_1
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildings:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    :goto_2
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceValue()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final setLevelOfPort(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iLevelOfPort:I

    return-void
.end method

.method public setLoot(F)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData2(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData2;->setLoot(F)V

    return-void
.end method

.method public setManpower(F)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->setManpower(F)V

    return-void
.end method

.method public final setMapModeRegionID(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iMapModeRegion:I

    return-void
.end method

.method public final setOccupiedByCivID(I)V
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setOccupiedByCivID(II)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWarScore()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v1, p1, v3, v4}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_ValueToAdd_Province(FIII)F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    sget-object p1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/War;

    iget v2, p1, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    add-float/2addr v2, v1

    iput v2, p1, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    goto :goto_0

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/War;

    neg-float v2, v1

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/map/war/War;->addWarScore_Just(F)V

    sget-object p1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/War;

    iget v2, p1, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    sub-float/2addr v2, v1

    iput v2, p1, Laoc/kingdoms/lukasz/map/war/War;->warScoreFromOccupiedProvinces:F

    :goto_0
    sget-object p1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/War;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, p1, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_WAR_WEARINESS_OCCUPIED_PROVINCE:F

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateWarWeariness(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final setPopulationOfCivID(II)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_2

    if-gtz p2, :cond_1

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    return v3

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->MIN_POPULATION:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->setPopulation(I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->MIN_POPULATION:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    goto :goto_1

    :cond_1
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, p2

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v1

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->setPopulation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    if-lez p2, :cond_4

    :try_start_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v1

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    invoke-direct {v2, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    add-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return v0
.end method

.method public final setPortShiftX(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPortShiftX:I

    return-void
.end method

.method public final setPortShiftY(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iPortShiftY:I

    return-void
.end method

.method public final setProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivilizationProvinceColor(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    return-void
.end method

.method public final setProvinceColor_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->setCivilizationProvinceColor_Fog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IF)V

    return-void
.end method

.method public final setProvinceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->sProvinceNameUpperCase:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceNameLength_Minus1:I

    return-void
.end method

.method public setReligion(I)V
    .locals 2

    if-ltz p1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionsSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->setReligionID(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->checkProvince(II)V

    :cond_0
    return-void
.end method

.method public setReligion_LoadScenario(I)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->setReligionID(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->convertReligion:Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/civilization/data/Civilization_ConvertReligion;->addProvince(I)V

    :cond_0
    return-void
.end method

.method public final setResourceID(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iResourceID:I

    return-void
.end method

.method public setRevulutionaryRisk(F)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_MAX_UNREST:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->setRevolutionaryRisk(F)V

    return-void
.end method

.method public final setShiftX(I)V
    .locals 1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iShiftX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftX()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    return-void
.end method

.method public final setShiftY(I)V
    .locals 1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iShiftY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getShiftY()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    return-void
.end method

.method public setTaxEfficiency(F)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData3(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData3;->setTaxEfficiency(F)V

    return-void
.end method

.method public final setTerrainID(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTerrainTypeID:I

    return-void
.end method

.method public final setTranslateProvincePosX(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iTranslateProvincePosX:I

    return-void
.end method

.method public final setWasteland(I)V
    .locals 6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->setWastelandLevel(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_d

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ge v2, v4, :cond_6

    if-ltz p1, :cond_2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_7

    :cond_2
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_7

    :cond_4
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_5

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_7

    :cond_6
    if-ltz p1, :cond_9

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_7

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_7

    :cond_7
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_8

    move v4, v3

    goto :goto_4

    :cond_8
    move v4, v0

    :goto_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v2

    if-ltz v2, :cond_b

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_a

    move v4, v3

    goto :goto_5

    :cond_a
    move v4, v0

    :goto_5
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_c

    goto :goto_6

    :cond_c
    move v3, v0

    :goto_6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsCivilizationBorder_Just(ZI)V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->setIsWastelandBorder(ZI)V

    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->setUpdateProvincesInView(Z)V

    return-void
.end method

.method public setWonderBuilt(Z)V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->setWonderBuilt(Z)V

    return-void
.end method

.method public final splitInHalf(I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v2, v3, :cond_1

    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-direct {v0, v2, p1, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateDrawArmy()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateArmyPosY()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final startBattle()V
    .locals 11

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iput-boolean v2, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    move v4, v3

    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_9

    add-int/lit8 v5, v3, 0x1

    move v7, v5

    :goto_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v8, :cond_6

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v8, :cond_6

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v8, :cond_6

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget-boolean v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v8, :cond_6

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v8, v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getWarKey(II)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v8

    :cond_1
    if-eqz v8, :cond_3

    sget-object v9, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iput-boolean v6, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iput-boolean v6, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    goto/16 :goto_4

    :cond_2
    sget-object v9, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iput-boolean v6, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iput-boolean v6, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    goto :goto_4

    :cond_3
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-ltz v8, :cond_4

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v8, :cond_6

    :cond_4
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-eq v8, v9, :cond_6

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v4, :cond_5

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iput-boolean v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iput-boolean v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iput-boolean v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    invoke-virtual {p0, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iput-boolean v6, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    :goto_3
    move v4, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    goto :goto_5

    :cond_8
    move v3, v5

    goto/16 :goto_1

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_10

    add-int/2addr v3, v6

    if-eqz v4, :cond_c

    :goto_6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v2

    if-ge v3, v2, :cond_f

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v2, :cond_b

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v2, :cond_b

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    if-nez v2, :cond_b

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez v2, :cond_a

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    :goto_8
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v4, :cond_e

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    if-nez v4, :cond_e

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addedToBattle:Z

    if-nez v4, :cond_e

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    new-instance v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v4

    invoke-direct {v3, v4, v0, v1}, Laoc/kingdoms/lukasz/map/battles/Battle;-><init>(ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->addBattle(Laoc/kingdoms/lukasz/map/battles/Battle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_10
    :goto_a
    return-void
.end method

.method public final underConstruction(II)F
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTimeLeft()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getConstructionTime()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public updateAccessToMainSea()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iNeighboringSeaProvincesSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->accessToMainSea:Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateAfterEconomyChange()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    return-void
.end method

.method public final updateAfterReligionConversion()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    return-void
.end method

.method public final updateArmyPosY()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    mul-int/2addr v3, v1

    mul-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final updateArmy_AfterBattle(Ljava/lang/String;Ljava/lang/String;IF)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v0, p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p2

    iput p2, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iput p3, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iput p4, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final updateArmy_BattleSummary(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    const/4 v1, 0x0

    iput-boolean v1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateMorale()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmy(Z)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    if-gez p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionMoveUnits:Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {p1, v1, v0}, Laoc/kingdoms/lukasz/map/rebels/RevolutionMoveUnits;->updateMoveInBattle(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inBattle:Z

    invoke-virtual {p1, v1, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateMoveInBattle(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public final updateBuildingLimit()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->buildings:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;->BUILDINGS_LIMIT_DEFAULT:I

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->buildings:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;->BUILDINGS_LIMIT_CAPITAL:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_BUILDINGS_SLOT_PER_LVL:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->buildings:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Buildings;->BUILDINGS_SLOT_PER_ECONOMY:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->BuildingSlots:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BuildingSlot:I

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    return-void
.end method

.method public updateBuildingsUnderConstrucion(I)V
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_8

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    iget v3, v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    sub-int/2addr v3, p1

    iput v3, v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->iConstructionTimeLeft:I

    if-gtz v2, :cond_7

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->bc:I

    add-int/2addr v3, v1

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->bc:I

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->addBuildingsConstructed(I)V

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->addCapitalBuildingsConstructed(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->addEconomyBuildingsConstructed(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->addMilitaryBuildingsConstructed(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData2:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData2;->addAdministrativeBuildingsConstructed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v4

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;-><init>(II)V

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addNewBuilding(Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v4

    invoke-static {v2, v3, v4, v1}, Laoc/kingdoms/lukasz/map/BonusesManager;->updateBuildingBonuses(IIII)V

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuilding()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructionBuilding;->getBuildingID()I

    move-result v4

    aget-object v3, v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "BuildingConstructed"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    :cond_5
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->buildingsConstruction:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-nez v2, :cond_6

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceBuildingsUnderConstruction(I)V

    :cond_6
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v2, v3, :cond_7

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addRebuildInGame_RightQueue()V

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final updateCityScale()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->cityScale:F

    return-void
.end method

.method public final updateCoreCreation(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    sub-int/2addr v1, p1

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->coreCreation:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    new-instance p1, Laoc/kingdoms/lukasz/map/province/Province$12;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateCivStability"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Laoc/kingdoms/lukasz/map/province/Province$12;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceCoreCreation(I)V

    :cond_0
    return-void
.end method

.method public updateCoresSize()V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    return-void
.end method

.method public updateCores_AfterRemoveCiv(I)V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final updateDevastation()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->DEVASTATION_PER_MONTH_OCCUPIED:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDevastation(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->DEVASTATION_PER_MONTH_DEFAULT:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDevastation(F)V

    :goto_0
    return-void
.end method

.method public updateDevelopInfrastructure()V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    if-lez v0, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceDevelopInfrastructureDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setInfrastructure(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceDevelopInfrastructureSize:I

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceDevelopInfrastructure(I)V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateBuildingLimit()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->haveResearchBuilding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_2
    return-void
.end method

.method public updateDrawArmy()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateDrawArmy(I)Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->drawArmy:Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;

    return-void
.end method

.method public updateHaveACore()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->iCoresSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData5(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/data/ProvinceData5;->co:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateIncomeEconomy()V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomeFromEconomy(I)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeEconomy:F

    return-void
.end method

.method public final updateIncomeProduction()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(II)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeProduction:F

    return-void
.end method

.method public final updateIncomeTaxation()V
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getIncomePopulationTaxation(I)F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    return-void
.end method

.method public updateIncreaseGrowthRate()V
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    if-lez v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData7(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->getIncreasedGrowthRate()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->INCREASE_GROWTH_RATE_GROWTH:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData7;->setIncreasedGrowthRate(F)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateInfrastructureMax()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseGrowthRateDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateCityScale()V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseGrowthRateSize:I

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceIncreaseGrowthRate(I)V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->haveResearchBuilding()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_1
    return-void
.end method

.method public updateIncreaseManpower()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->INCREASE_MANPOWER_GROWTH:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setManpower(F)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreaseManpowerDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseManpowerSize:I

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceIncreaseManpower(I)V

    :cond_0
    return-void
.end method

.method public final updateIncreasePopulationOfCivID(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getCivID()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->setPopulation(I)V

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    add-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    add-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    return-void
.end method

.method public updateIncreaseTaxEfficiency()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiency()F

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->tax:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_TaxEfficiency;->INCREASE_TAX_EFFICIENCY_GROWTH:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setTaxEfficiency(F)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceIncreasTaxEfficiencyDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceIncome()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceIncreaseTaxEfficiencySize:I

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceIncreaseTaxEfficiency(I)V

    :cond_0
    return-void
.end method

.method public final updateInfrastructureMax()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_DEFAULT:I

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_CAPITAL:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_PER_ECONOMY:F

    div-float/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_PER_GROWTH_RATE:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MaxInfrastructure:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_MAX_LVL:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxInfrastructure:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iInfrastructureMax:I

    return-void
.end method

.method public updateInvestEconomy()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomy()F

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getInvestEconomyGrowth(I)F

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->investTime:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setEconomy(F)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceInvestDaysLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateAfterEconomyChange()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iProvinceInvestSize:I

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceInvest(I)V

    :cond_0
    return-void
.end method

.method public final updateIsUnderSiege()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData4(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData4;->isUnderSiege()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->getOccupiedByCivID()I

    move-result v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iArmiesSize:I

    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inMovement:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->inRetreat:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->resetSiegeData()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/SiegeManager;->removeProvinceSiege(I)V

    :cond_4
    return-void
.end method

.method public final updateLoot()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getLoot()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->LOOT_PROVINCE_RECOVERY_PER_MONTH:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setLoot(F)V

    :cond_0
    return-void
.end method

.method public final updatePopulationGrowth()V
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->POPULATION_GROWTH_PER_MONTH:I

    int-to-float v1, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncreasePopulationOfCivID(II)V

    return-void
.end method

.method public final updatePopulationOfProvince()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationSize:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincePopulation(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->getPopulation()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provincePopulationTotal:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateProvinceIncome()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncomeTaxation()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncomeEconomy()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateIncomeProduction()V

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeTaxation:F

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeEconomy:F

    add-float/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncomeProduction:F

    add-float/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateProvinceMaintenance()V

    return-void
.end method

.method public final updateProvinceMaintenance()V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBuildingsMaintenance()F

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceMaintenance()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    sub-float v0, v1, v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    :cond_0
    return-void
.end method

.method public final updateProvinceValue()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_BASE:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceValue_Economy()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceValue_GrowthRate()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getWonderBuilt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_WONDER_BUILT:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    :cond_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_VALUE_CAPITAL:F

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    :cond_1
    return-void
.end method

.method public final updateRegiment(ILjava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyRegiment;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmy(I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object p1

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateRegiment(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final updateReligionConversion(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    sub-int/2addr v1, p1

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget p1, p1, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/province/Province;->setReligion(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    new-instance p1, Laoc/kingdoms/lukasz/map/province/Province$11;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateCivStability"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Laoc/kingdoms/lukasz/map/province/Province$11;-><init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceConvertReligion(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->updateAfterReligionConversion()V

    :cond_0
    return-void
.end method

.method public final updateRevolutionaryRisk()V
    .locals 9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->province:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Province;->PROVINCE_MAX_UNREST:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->getRevolutionaryRisk()F

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getRevolutionaryRisk_MonhtlyChange()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->setRevolutionaryRisk(F)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->getRevolutionaryRisk()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->rebels:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rebels;->SEND_NOTIFICATION_IF_UNREST_OVER:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->HIGH_UNREST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Unrest"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData8(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData8;->getRevolutionaryRisk()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "% - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->revolutionRisk:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification_Unrest(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    :cond_0
    return-void
.end method

.method public final updateSeaProvince()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v0

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->seaProvince:Z

    return-void
.end method

.method public updateWonderConstruction()V
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-eqz v0, :cond_2

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceInvest;->daysLeft:I

    if-gtz v0, :cond_2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setWonderBuilt(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderConstruction:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->removeProvinceWonderConstruction(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateCivBonuses(III)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/WondersManager;->updateProvinceBonuses(III)V

    sget-object v0, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v0, v0, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Legacy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v1, v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Legacy:F

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addLegacy(F)V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/map/province/Province;->wonderID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->Name:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "WonderConstructed"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Wonder()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->iProvinceID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v1

    if-ne v0, v1, :cond_2

    sput-boolean v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->rebuildMenu:Z

    :cond_2
    return-void
.end method
