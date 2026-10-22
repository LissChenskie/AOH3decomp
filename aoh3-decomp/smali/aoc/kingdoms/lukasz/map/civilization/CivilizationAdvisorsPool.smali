.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;
.super Ljava/lang/Object;
.source "CivilizationAdvisorsPool.java"


# instance fields
.field public generateYear:I

.field public iAdvisorType:I

.field public lAdvisors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/advisors/Advisor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    const v0, -0xd6d8

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateYear:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    return-void
.end method

.method public static final buildAdvisorBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;I)Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/16 v2, 0xabe

    const/16 v3, 0x1388

    const/4 v4, 0x1

    const v5, 0x461c4000    # 10000.0f

    const/high16 v6, 0x42c80000    # 100.0f

    if-nez p1, :cond_6

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr p1, v7

    rem-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GROWTH_RATE_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GROWTH_RATE_RANDOM:F

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr p1, v1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GrowthRate:F

    goto :goto_0

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_GROWTH_RATE_COST_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_GROWTH_RATE_COST_RANDOM:F

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    add-float/2addr p1, v1

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseGrowthRateCost:F

    goto :goto_0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_RANDOM:F

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    add-float/2addr p1, v1

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->AdministrationBuildingsCost:F

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PROVINCE_MAINTENANCE_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PROVINCE_MAINTENANCE_RANDOM:F

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr p1, v1

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProvinceMaintenance:F

    goto :goto_0

    :cond_3
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_TAX_EFFICIENCY_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_TAX_EFFICIENCY_RANDOM:F

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr p1, v1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->TaxEfficiency:F

    :goto_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr p1, v1

    rem-int/2addr p1, v0

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RECRUITMENT_TIME_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RECRUITMENT_TIME_RANDOM:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitmentTime:F

    goto/16 :goto_4

    :cond_4
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_MANPOWER_COST_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_MANPOWER_COST_RANDOM:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseManpowerCost:F

    goto/16 :goto_4

    :cond_5
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_TIME_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_TIME_RANDOM:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionTime:F

    goto/16 :goto_4

    :cond_6
    if-ne p1, v4, :cond_f

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v8, 0xdac

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr p1, v7

    rem-int/lit8 p1, p1, 0x64

    const/16 v7, 0x61

    if-le p1, v7, :cond_7

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_COST_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_COST_RANDOM:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    goto/16 :goto_1

    :cond_7
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/2addr p1, v7

    rem-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_b

    if-eq p1, v4, :cond_a

    if-eq p1, v1, :cond_9

    if-eq p1, v0, :cond_8

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PRODUCTION_EFFICIENCY_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_PRODUCTION_EFFICIENCY_RANDOM:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    goto :goto_1

    :cond_8
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_DEVELOP_INFRASTRUCTURE_COST_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_DEVELOP_INFRASTRUCTURE_COST_RANDOM:F

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->DevelopInfrastructureCost:F

    goto :goto_1

    :cond_9
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_TAX_EFFICIENCY_COST_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCREASE_TAX_EFFICIENCY_COST_RANDOM:F

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncreaseTaxEfficiencyCost:F

    goto :goto_1

    :cond_a
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INVEST_COST_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INVEST_COST_RANDOM:F

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->InvestInEconomyCost:F

    goto :goto_1

    :cond_b
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_RANDOM:F

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->EconomyBuildingsCost:F

    :goto_1
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_e

    if-eq p1, v4, :cond_d

    if-eq p1, v1, :cond_c

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONVERT_RELIGION_COST_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONVERT_RELIGION_COST_RANDOM:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ReligionCost:F

    goto/16 :goto_4

    :cond_c
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCOME_PRODUCTION_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_INCOME_PRODUCTION_RANDOM:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->IncomeProduction:F

    goto/16 :goto_4

    :cond_d
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CORE_COST_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CORE_COST_RANDOM:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->CoreCost:F

    goto/16 :goto_4

    :cond_e
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_LOAN_INTEREST_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_LOAN_INTEREST_RANDOM:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->LoanInterest:F

    goto/16 :goto_4

    :cond_f
    const/4 v7, 0x0

    if-ne p1, v1, :cond_18

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr p1, v5

    rem-int/2addr p1, v0

    if-eqz p1, :cond_11

    if-eq p1, v4, :cond_10

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RESEARCH_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RESEARCH_RANDOM2:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    goto :goto_2

    :cond_10
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_LEGACY_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_LEGACY_RANDOM:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MonthlyLegacy:F

    goto :goto_2

    :cond_11
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RESEARCH_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RESEARCH_RANDOM:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->Research:F

    :goto_2
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_16

    if-eq p1, v4, :cond_14

    if-eq p1, v1, :cond_12

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_IMPROVE_RELATIONS_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_IMPROVE_RELATIONS_RANDOM:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ImproveRelationsModifier:F

    goto/16 :goto_4

    :cond_12
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_REGIMENTS_LIMIT_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_REGIMENTS_LIMIT_RANDOM:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_13

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_REGIMENTS_LIMIT_RANDOM:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v6

    :cond_13
    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RegimentsLimit:I

    goto/16 :goto_4

    :cond_14
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_DEFENSE_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_DEFENSE_RANDOM:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_15

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_DEFENSE_RANDOM:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v6

    :cond_15
    add-float/2addr p1, v7

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsDefense:F

    goto/16 :goto_4

    :cond_16
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_ATTACK_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_ATTACK_RANDOM:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_17

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_UNITS_ATTACK_RANDOM:F

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float v7, v0, v6

    :cond_17
    add-float/2addr p1, v7

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->UnitsAttack:F

    goto/16 :goto_4

    :cond_18
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v8, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr p1, v8

    rem-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_1d

    if-eq p1, v4, :cond_1b

    if-eq p1, v1, :cond_1a

    if-eq p1, v0, :cond_19

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_ARMY_MAINTENANCE_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_ARMY_MAINTENANCE_RANDOM:F

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr p1, v1

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMaintenance:F

    goto :goto_3

    :cond_19
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_CONSTRUCTION_GROUP_COST_RANDOM:F

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    add-float/2addr p1, v1

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MilitaryBuildingsCost:F

    goto :goto_3

    :cond_1a
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RECRUIT_ARMY_COST_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_RECRUIT_ARMY_COST_RANDOM:F

    mul-float/2addr v7, v6

    float-to-int v7, v7

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    add-float/2addr p1, v1

    neg-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->RecruitArmyCost:F

    goto :goto_3

    :cond_1b
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_DEFENSE_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_DEFENSE_RANDOM:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1c

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_DEFENSE_RANDOM:F

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x64

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float v7, v1, v6

    :cond_1c
    add-float/2addr p1, v7

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralDefense:F

    goto :goto_3

    :cond_1d
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_ATTACK_MIN:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_ATTACK_RANDOM:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_GENERAL_ATTACK_RANDOM:F

    float-to-int v7, v7

    mul-int/lit8 v7, v7, 0x64

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    div-float v7, v1, v6

    :cond_1e
    add-float/2addr p1, v7

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->GeneralAttack:F

    :goto_3
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {p1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr p1, v1

    rem-int/2addr p1, v0

    if-eqz p1, :cond_20

    if-eq p1, v4, :cond_1f

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_SIEGE_EFFECTIVENESS_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_SIEGE_EFFECTIVENESS_RANDOM:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->SiegeEffectiveness:F

    goto :goto_4

    :cond_1f
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_ARMY_MOVEMENT_SPEED_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_ARMY_MOVEMENT_SPEED_RANDOM:F

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v6

    add-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ArmyMovementSpeed:F

    goto :goto_4

    :cond_20
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_MAX_MANPOWER_MIN:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_MAX_MANPOWER_RANDOM:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->MaxManpower:F

    :goto_4
    return-object p0
.end method

.method public static final generateAdvisor_Random(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;
    .locals 6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomGeneralImage(I)I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v0, p0, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomImage(II)I

    move-result v0

    :goto_0
    new-instance v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    invoke-virtual {v3, p0}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomSurname(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_MIN:I

    sub-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_RANDOM:I

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v1, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->buildAdvisorBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;I)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const v0, -0xd6d8

    iput v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateYear:I

    return-void
.end method

.method public final generateAdvisors(ILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->getPoolOfAdvisors(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomGeneralImage(I)I

    move-result v1

    goto :goto_1

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    invoke-virtual {v1, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomImage(II)I

    move-result v1

    :goto_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    invoke-virtual {v5, p1}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->generalManager:Laoc/kingdoms/lukasz/map/GeneralManager;

    invoke-virtual {v5, p1}, Laoc/kingdoms/lukasz/map/GeneralManager;->getGeneralRandomSurname(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_MIN:I

    sub-int/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_RANDOM:I

    const/4 v8, 0x1

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v3, v4, v1, v5, p2}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget v4, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->buildAdvisorBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;I)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getPoolOfAdvisors(I)I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->RECRUIT_ADVISOR_DEFAULT_POOL:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget p1, p1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdvisorPoolSize:I

    add-int/2addr v0, p1

    return v0
.end method

.method public final recruitAdvisorID(II)Z
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitGoldCost(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRecruitCostLegacy(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsData3:Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData3;->addRecruitedAdvisors(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p1, v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->stats:Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Stats/StatsManager;->civStats:Laoc/kingdoms/lukasz/jakowski/Stats/Stats;

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ra:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/Stats/Stats;->ra:I

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->iAdvisorType:I

    const/4 v2, -0x1

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_5
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    goto :goto_0

    :cond_6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_7
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    goto :goto_0

    :cond_8
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :cond_9
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisors(ILjava/lang/String;)V

    :cond_a
    return v1
.end method

.method public final updatePoolOfAdvisors(I)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisors(ILjava/lang/String;)V

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateYear:I

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateYear:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->RECRUIT_ADVISOR_REGENERATE_YEARS:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisors(ILjava/lang/String;)V

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateYear:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->lAdvisors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->getPoolOfAdvisors(I)I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, p1, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->generateAdvisors(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
