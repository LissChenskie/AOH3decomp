.class public Laoc/kingdoms/lukasz/map/advisors/Advisor;
.super Ljava/lang/Object;
.source "Advisor.java"


# instance fields
.field public AdministrationBuildingsCost:F

.field public ArmyMaintenance:F

.field public ArmyMovementSpeed:F

.field public ConstructionCost:F

.field public ConstructionTime:F

.field public CoreCost:F

.field public DevelopInfrastructureCost:F

.field public EconomyBuildingsCost:F

.field public GeneralAttack:F

.field public GeneralDefense:F

.field public GrowthRate:F

.field public ImproveRelationsModifier:F

.field public IncomeProduction:F

.field public IncreaseGrowthRateCost:F

.field public IncreaseManpowerCost:F

.field public IncreaseTaxEfficiencyCost:F

.field public InvestInEconomyCost:F

.field public LoanInterest:F

.field public MaxManpower:F

.field public MaxMorale:F

.field public MilitaryBuildingsCost:F

.field public MonthlyLegacy:F

.field public ProductionEfficiency:F

.field public ProvinceMaintenance:F

.field public RecruitArmyCost:F

.field public RecruitmentTime:F

.field public RegimentsLimit:I

.field public ReligionCost:F

.field public Research:F

.field public SiegeEffectiveness:F

.field public TaxEfficiency:F

.field public UnitsAttack:F

.field public UnitsDefense:F

.field public iDayOfBirth:I

.field public iLevel:I

.field public iMonthOfBirth:I

.field public iYearOfBirth:I

.field public imageID:I

.field public sIMG:Ljava/lang/String;

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    iput v1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iLevel:I

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    iput p2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->imageID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    iput-object p4, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sIMG:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget p2, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDaysInMonth(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    return-void
.end method
