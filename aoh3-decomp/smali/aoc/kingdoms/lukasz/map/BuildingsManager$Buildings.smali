.class public Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;
.super Ljava/lang/Object;
.source "BuildingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/BuildingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Buildings"
.end annotation


# instance fields
.field public AI:[I

.field public ArmyMovementSpeed:[F

.field public BuildingSlots:[I

.field public CasualtiesNuclearAttacks:[F

.field public ConstructionCost:[I

.field public ConstructionTime:[I

.field public ConstructionTimeBonus:[I

.field public CostGold:[F

.field public DefenseBonus:[I

.field public DevelopInfrastructureCost:[F

.field public DiseaseDeathRate:[F

.field public Economy:[F

.field public FortDefense:[I

.field public FortLevel:[I

.field public GroupID:I

.field public ImageID:[I

.field public IncomeProduction:[F

.field public IncreaseGrowthRateCost:[F

.field public IncreaseManpowerCost:[F

.field public IncreaseTaxEfficiencyCost:[F

.field public InvestInEconomyCost:[F

.field public LocalGrowthRate:[F

.field public LocalManpower:[F

.field public LocalTaxEfficiency:[F

.field public MaintenanceCost:[F

.field public MaxInfrastructure:[I

.field public MaximumManpower:[I

.field public MonthlyIncome:[F

.field public MonthlyLegacy:[F

.field public Name:[Ljava/lang/String;

.field public NameDesc:[Ljava/lang/String;

.field public ProductionEfficiency:[F

.field public ProvinceMaintenance:[F

.field public RecruitArmyCostInProvince:[F

.field public RequiredGovernmentID:I

.field public RequiredReligionID:I

.field public RequiredResource:I

.field public RequiredTechID:[I

.field public ResearchPoints:[F

.field public SeaAccessRequired:Z

.field public ShowUpgrades:Z

.field public TaxEfficiency:[F

.field public UniqueCapitalBuilding:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->UniqueCapitalBuilding:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ShowUpgrades:Z

    return-void
.end method
