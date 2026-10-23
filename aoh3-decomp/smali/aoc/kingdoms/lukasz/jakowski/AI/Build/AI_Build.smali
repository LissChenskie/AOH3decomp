.class public Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;
.super Ljava/lang/Object;
.source "AI_Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;
    }
.end annotation


# static fields
.field public static averageCostOfBuilding:F = 0.0f

.field public static averageCostOfBuilding_Capital:F = 0.0f

.field public static capitalBuildings:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static constructionCost:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static defensive:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static economy:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static gold:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static growthRate:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static legacy:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static manpower:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static minCostOfBuilding:I = 0x98967f

.field public static productionEfficiency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static provinceMaintenance:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static recruitArmyCost:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static research:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static resourceBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static rest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field

.field public static taxEfficiency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->research:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->gold:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->legacy:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->recruitArmyCost:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->growthRate:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->economy:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->provinceMaintenance:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->rest:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->capitalBuildings:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->resourceBuildings:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static balance_StopBuildingConstruction(I)Z
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBalance()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsMaintenanceCost_UnderConstruction(I)F

    move-result p0

    add-float/2addr v0, p0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget p0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_MIN_BALANCE:F

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static balance_StopBuildingConstruction_Research(I)Z
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getBalance()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getBuildingsMaintenanceCost_UnderConstruction(I)F

    move-result p0

    add-float/2addr v0, p0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget p0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_RESEARCH_MIN_BALANCE:F

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final build(I)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->CHOOSE_BUILD_TYPE_LIMIT:I

    if-ge v0, v1, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->chooseBuildingType(I)I

    move-result v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build(II)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final build(II)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS:Z

    if-eqz p1, :cond_0

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->colonization:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Colonization;->AI_TRIBAL_CAN_COLONIZE_WITHOUT_LAWS_MIN_TURN_ID:I

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canColonize:Z

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/AI/Colonization/AI_ColonizationTribal;->colonize(I)Z

    move-result p0

    return p0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build(II)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildResource;->buildBuilding(II)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildCapitalBuilding;->buildBuilding(II)Z

    move-result p0

    return p0

    :pswitch_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->rest:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildRest;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildConstructionCost;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_5
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildProductionEfficiency;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->economy:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildEconomy;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->growthRate:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_7
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildGrowthRate;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->recruitArmyCost:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_8
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildRecruitArmyCost;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_9
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildDefensive;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildManpower;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->provinceMaintenance:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_b
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildProvinceMaintenance;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_c
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildTaxEfficiency;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->legacy:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_d
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildLegacy;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->gold:Ljava/util/List;

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->build_NoBuildings(II)Z

    move-result p0

    return p0

    :cond_e
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildGold;->buildBuilding(IILjava/util/List;)Z

    move-result p0

    return p0

    :pswitch_f
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildResearch;->buildResearchBuilding(II)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
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

.method public static final buildProvince_AIBuildScore_Default(II)V
    .locals 6

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsLimit_FreeSlots()I

    move-result v0

    if-gtz v0, :cond_0

    const p0, -0x368bdc10    # -999999.0f

    iput p0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    goto/16 :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_MIN:F

    iput v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_SAME_CONTINENT_AS_CAPITAL:F

    add-float/2addr v0, v1

    iput v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v0, v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_TERRAIN_CONSTRUCTION_COST:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget v3, v3, Laoc/kingdoms/lukasz/map/terrain/Terrain;->BuildCost:F

    sub-float/2addr v3, v1

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    :cond_2
    iget v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CONSTRUCTION_COST:F

    iget-object v3, p1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ConstructionCost:F

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v4

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_CONSTRUCTION_COST_PER_LVL:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    iget v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_GROWTH_RATE:F

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    iget v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_INFRASTRUCTURE:F

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    iget v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CONSTRUCTED_BUILDINGS_MODIFIER:F

    iget v3, p1, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    int-to-float v3, v3

    iget v4, p1, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    iget-boolean v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-nez v0, :cond_3

    iget v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_NON_CORE:F

    add-float/2addr v0, v1

    iput v0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    :cond_3
    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result p0

    if-eq v0, p0, :cond_4

    iget p0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_DIFFERENT_RELIGION:F

    add-float/2addr p0, v0

    iput p0, p1, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    :cond_4
    :goto_0
    return-void
.end method

.method public static final buildProvince_AIBuildScore_DistanceToCapital(I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_DISTANCE_FROM_CAPITAL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/Province;->aiDistanceToCapital:F

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    return-void
.end method

.method public static final buildProvince_AIBuildScore_Economy(I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_ECONOMY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    return-void
.end method

.method public static final buildProvince_AIBuildScore_GrowthRateManpower(I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_MANPOWER_PER_GROWTH_RATE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    return-void
.end method

.method public static final buildProvince_AIBuildScore_GrowthRateResearch(I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_RESEARCH_PER_GROWTH_RATE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    return-void
.end method

.method public static final buildProvince_AIBuildScore_GrowthRateTaxEfficiency(I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_TAX_EFFICIENCY_PER_GROWTH_RATE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    return-void
.end method

.method public static final buildProvince_AIBuildScore_Manpower(I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_MANPOWER:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getManpower()F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    return-void
.end method

.method public static final buildProvince_AIBuildScore_ProvinceMaintenance(I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProvinceMaintenance:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PROVINCE_MAINTENANCE_REDUCTION:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProvinceMaintenance:F

    mul-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr v1, p0

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    :cond_0
    return-void
.end method

.method public static final buildProvince_AIBuildScore_ProvinceValue(I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PROVINCE_VALUE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    return-void
.end method

.method public static final buildProvince_AIBuildScore_ResourcePrice(I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PRICE_OF_RESOURCE:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    :cond_0
    return-void
.end method

.method public static final buildProvince_AIBuildScore_TaxEfficiency(I)V
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_TAX_EFFICIENCY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->aiBuildScore:F

    return-void
.end method

.method public static final build_NoBuildings(II)Z
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_NEXT_TYPE:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_INVEST_ECONOMY:I

    if-ge v0, v1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_MIN_LEFT_GOLD:I

    int-to-float p1, p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_InvestInEconomy;->investInEconomy(IF)V

    goto :goto_0

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_TAX_EFFICIENCY:I

    if-ge v0, v1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_MIN_LEFT_GOLD:I

    int-to-float p1, p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Invest/AI_IncreaseTaxEfficiency;->increaseTaxEfficiency(IF)V

    goto :goto_0

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_PRODUCTION_BUILDING:I

    if-ge v0, v1, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->getLimitOfBuildings(I)I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_BuildResource;->buildBuilding(II)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static chooseBuildingType(I)I
    .locals 6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_SCORE_TOTAL:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_SCORE:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->AI_BUILD_SCORE:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getBuildingsAIScore(ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz p0, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->AI:[I

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static getBuildingsAIScore_BestID(ILjava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;I)I"
        }
    .end annotation

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p0, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->AI:[I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    if-lt v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static getBuildingsMaintenanceCost_UnderConstruction(I)F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsConstructionSize:I

    if-lez v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildingsConstruction_MaintenanceCosts()F

    move-result v2

    add-float/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    neg-float p0, v0

    return p0
.end method

.method public static final getLimitOfBuildings(I)I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesBuild:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_LIMIT:[I

    aget p0, v0, p0

    return p0
.end method

.method public static getUnlockedBuildings(ILjava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    invoke-virtual {p0, v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->isBuildingResearched(II)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v4

    if-ne v3, v4, :cond_2

    :cond_0
    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v3, v3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v4

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static final initBuildings()V
    .locals 9

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    :goto_1
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    array-length v1, v1

    if-ge v2, v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->resourceBuildings:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v3, v0, v2}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    move v1, v0

    move v3, v1

    :goto_2
    sget v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsSize:I

    if-ge v0, v4, :cond_3a

    move v4, v2

    :goto_3
    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_39

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->GroupID:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    sget v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v6, v6, v4

    add-float/2addr v5, v6

    sput v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->capitalBuildings:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v6, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_2
    sget v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->minCostOfBuilding:I

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v6, v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v5, v5, v4

    float-to-int v5, v5

    sput v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->minCostOfBuilding:I

    :cond_3
    sget v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    sget-object v6, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->CostGold:[F

    aget v6, v6, v4

    add-float/2addr v5, v6

    sput v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    add-int/lit8 v1, v1, 0x1

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    aget v5, v5, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->gold:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    if-eqz v8, :cond_5

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->TaxEfficiency:[F

    aget v8, v8, v4

    cmpl-float v8, v8, v6

    if-lez v8, :cond_5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_5
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    if-eqz v8, :cond_9

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalTaxEfficiency:[F

    aget v8, v8, v4

    cmpl-float v8, v8, v6

    if-lez v8, :cond_9

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_5
    if-ltz v5, :cond_7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v0, :cond_6

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v4, :cond_6

    move v5, v2

    goto :goto_6

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_7
    move v5, v7

    :goto_6
    if-eqz v5, :cond_8

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move v5, v7

    :cond_9
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    if-eqz v8, :cond_a

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyLegacy:[F

    aget v8, v8, v4

    cmpl-float v8, v8, v6

    if-lez v8, :cond_a

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->legacy:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_a
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    if-eqz v8, :cond_b

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DefenseBonus:[I

    aget v8, v8, v4

    if-lez v8, :cond_b

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_b
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    if-eqz v8, :cond_f

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortLevel:[I

    aget v8, v8, v4

    if-lez v8, :cond_f

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_7
    if-ltz v5, :cond_d

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v0, :cond_c

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v4, :cond_c

    move v5, v2

    goto :goto_8

    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    :cond_d
    move v5, v7

    :goto_8
    if-eqz v5, :cond_e

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    move v5, v7

    :cond_f
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    if-eqz v8, :cond_13

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->FortDefense:[I

    aget v8, v8, v4

    if-lez v8, :cond_13

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_9
    if-ltz v5, :cond_11

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v0, :cond_10

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v4, :cond_10

    move v5, v2

    goto :goto_a

    :cond_10
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_11
    move v5, v7

    :goto_a
    if-eqz v5, :cond_12

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    move v5, v7

    :cond_13
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    if-eqz v8, :cond_14

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaximumManpower:[I

    aget v8, v8, v4

    if-lez v8, :cond_14

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_14
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    if-eqz v8, :cond_18

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalManpower:[F

    aget v8, v8, v4

    cmpl-float v8, v8, v6

    if-lez v8, :cond_18

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_b
    if-ltz v5, :cond_16

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v0, :cond_15

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v4, :cond_15

    move v5, v2

    goto :goto_c

    :cond_15
    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    :cond_16
    move v5, v7

    :goto_c
    if-eqz v5, :cond_17

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    move v5, v7

    :cond_18
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    if-eqz v8, :cond_19

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RecruitArmyCostInProvince:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v6

    if-gez v8, :cond_19

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->recruitArmyCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_19
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    if-eqz v8, :cond_1a

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->LocalGrowthRate:[F

    aget v8, v8, v4

    cmpl-float v8, v8, v6

    if-lez v8, :cond_1a

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->growthRate:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_1a
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    if-eqz v8, :cond_1b

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ConstructionCost:[I

    aget v8, v8, v4

    if-gez v8, :cond_1b

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_1b
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    if-eqz v8, :cond_1f

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->InvestInEconomyCost:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v6

    if-gez v8, :cond_1f

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_d
    if-ltz v5, :cond_1d

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v0, :cond_1c

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v4, :cond_1c

    move v5, v2

    goto :goto_e

    :cond_1c
    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_1d
    move v5, v7

    :goto_e
    if-eqz v5, :cond_1e

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    move v5, v7

    :cond_1f
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    if-eqz v8, :cond_23

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseManpowerCost:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v6

    if-gez v8, :cond_23

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_f
    if-ltz v5, :cond_21

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v0, :cond_20

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v4, :cond_20

    move v5, v2

    goto :goto_10

    :cond_20
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    :cond_21
    move v5, v7

    :goto_10
    if-eqz v5, :cond_22

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    move v5, v7

    :cond_23
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    if-eqz v8, :cond_27

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseTaxEfficiencyCost:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v6

    if-gez v8, :cond_27

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_11
    if-ltz v5, :cond_25

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v0, :cond_24

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v4, :cond_24

    move v5, v2

    goto :goto_12

    :cond_24
    add-int/lit8 v5, v5, -0x1

    goto :goto_11

    :cond_25
    move v5, v7

    :goto_12
    if-eqz v5, :cond_26

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    move v5, v7

    :cond_27
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    if-eqz v8, :cond_2b

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->DevelopInfrastructureCost:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v6

    if-gez v8, :cond_2b

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_13
    if-ltz v5, :cond_29

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v0, :cond_28

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v4, :cond_28

    move v5, v2

    goto :goto_14

    :cond_28
    add-int/lit8 v5, v5, -0x1

    goto :goto_13

    :cond_29
    move v5, v7

    :goto_14
    if-eqz v5, :cond_2a

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    move v5, v7

    :cond_2b
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    if-eqz v8, :cond_2f

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncreaseGrowthRateCost:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v6

    if-gez v8, :cond_2f

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_15
    if-ltz v5, :cond_2d

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v8, v0, :cond_2c

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v8, v4, :cond_2c

    move v5, v2

    goto :goto_16

    :cond_2c
    add-int/lit8 v5, v5, -0x1

    goto :goto_15

    :cond_2d
    move v5, v7

    :goto_16
    if-eqz v5, :cond_2e

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    move v5, v7

    :cond_2f
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    if-eqz v8, :cond_30

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProvinceMaintenance:[F

    aget v8, v8, v4

    cmpg-float v8, v8, v6

    if-gez v8, :cond_30

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->provinceMaintenance:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_30
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    if-eqz v8, :cond_31

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Economy:[F

    aget v8, v8, v4

    cmpl-float v8, v8, v6

    if-lez v8, :cond_31

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->economy:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_31
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    if-eqz v8, :cond_32

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ResearchPoints:[F

    aget v8, v8, v4

    cmpl-float v8, v8, v6

    if-lez v8, :cond_32

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->research:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_32
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    if-eqz v8, :cond_33

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ProductionEfficiency:[F

    aget v8, v8, v4

    cmpl-float v8, v8, v6

    if-lez v8, :cond_33

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v8, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    :cond_33
    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    if-eqz v8, :cond_36

    sget-object v8, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->IncomeProduction:[F

    aget v8, v8, v4

    cmpl-float v6, v8, v6

    if-lez v6, :cond_36

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    :goto_17
    if-ltz v5, :cond_35

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    if-ne v6, v0, :cond_34

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    if-ne v6, v4, :cond_34

    move v5, v2

    goto :goto_18

    :cond_34
    add-int/lit8 v5, v5, -0x1

    goto :goto_17

    :cond_35
    move v5, v7

    :goto_18
    if-eqz v5, :cond_37

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v6, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_36
    move v7, v5

    :cond_37
    :goto_19
    if-nez v7, :cond_38

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->rest:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    invoke-direct {v6, v0, v4}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_3a
    sget v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F

    int-to-float v1, v3

    div-float/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1b

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1b
    return-void
.end method

.method public static final logBuilding(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build$Building;->buildingID:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final logBuildings()V
    .locals 2

    const-string v0, "Gold"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->gold:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "Legacy"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->legacy:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "Research"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->research:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "Manpower"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->manpower:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "Defensive"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->defensive:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "RecruitArmyCost"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->recruitArmyCost:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "TaxEfficiency"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->taxEfficiency:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "GrowthRate"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->growthRate:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "Economy"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->economy:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "ProductionEfficiency"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->productionEfficiency:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "ProvinceMaintenance"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->provinceMaintenance:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "ConstructionCost"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->constructionCost:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "Rest"

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->rest:Ljava/util/List;

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->logBuilding(Ljava/lang/String;Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "minCostOfBuilding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->minCostOfBuilding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "averageCostOfBuilding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "averageCostOfBuilding_Capital: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/AI/Build/AI_Build;->averageCostOfBuilding_Capital:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    return-void
.end method
