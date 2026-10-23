.class public Laoc/kingdoms/lukasz/map/Ruler;
.super Ljava/lang/Object;
.source "Ruler.java"


# instance fields
.field public BornDay:I

.field public BornMonth:I

.field public BornYear:I

.field public ImageID:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public isRandom:Z

.field public kingImage:Z

.field public rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, 0x0

    iput-boolean p7, p0, Laoc/kingdoms/lukasz/map/Ruler;->isRandom:Z

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/Ruler;->Name:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p7, ""

    invoke-direct {p2, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/Ruler;->ImageID:Ljava/lang/String;

    iput-boolean p9, p0, Laoc/kingdoms/lukasz/map/Ruler;->kingImage:Z

    const/4 p2, 0x1

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornDay:I

    iput p5, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornMonth:I

    iput p6, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornYear:I

    iput-boolean p8, p0, Laoc/kingdoms/lukasz/map/Ruler;->isRandom:Z

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/map/Ruler;->initRulerBonuses(I)V

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->isRandom:Z

    iget-object v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->n:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->Name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->ImageID:Ljava/lang/String;

    iget-boolean v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->k:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->kingImage:Z

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->d:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornDay:I

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->m:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornMonth:I

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->y:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->BornYear:I

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Ruler;->r:Z

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/Ruler;->isRandom:Z

    return-void
.end method

.method private final initRulerBonuses(I)V
    .locals 8

    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    const/high16 v2, 0x42c80000    # 100.0f

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_PROVINCE_MAINTENANCE_MIN:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_PROVINCE_MAINTENANCE_RANDOM:F

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_MANPOWER_COST_MIN:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_MANPOWER_COST_RANDOM:F

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_DEVASTATION_MIN:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_DEVASTATION_RANDOM:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_DEVELOP_INFRASTRUCTURE_COST_MIN:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_DEVELOP_INFRASTRUCTURE_COST_RANDOM:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_TAX_EFFICIENCY_COST_MIN:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_TAX_EFFICIENCY_COST_RANDOM:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INVEST_COST_MIN:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INVEST_COST_RANDOM:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_CONSTRUCTION_COST_MIN:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_CONSTRUCTION_COST_RANDOM:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_GROWTH_RATE_COST_MIN:F

    neg-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_INCREASE_GROWTH_RATE_COST_RANDOM:F

    mul-float/2addr v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_PRODUCTION_EFFICIENCY_MIN:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_PRODUCTION_EFFICIENCY_RANDOM:F

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_TAX_EFFICIENCY_MIN:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_TAX_EFFICIENCY_RANDOM:F

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MONTHLY_INCOME_MIN:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MONTHLY_INCOME_RANDOM:F

    mul-float/2addr v5, v2

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    const v3, 0x3c23d70a    # 0.01f

    iput v3, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    :cond_0
    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MONTHLY_LEGACY_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MONTHLY_LEGACY_RANDOM:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v1, v6

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_LOAN_INTEREST_MIN:F

    neg-float v1, v1

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_LOAN_INTEREST_RANDOM:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    sub-float/2addr v1, v6

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_IMPROVE_RELATIONS_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_IMPROVE_RELATIONS_RANDOM:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v1, v6

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERAL_COST_MIN:F

    neg-float v2, v2

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERAL_COST_RANDOM:F

    mul-float/2addr v7, v1

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    sub-float/2addr v2, v6

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    goto :goto_1

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_RESEARCH_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_RESEARCH_RANDOM:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v1, v6

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    goto :goto_1

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_RECRUITMENT_TIME_MIN:F

    neg-float v1, v1

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_RECRUITMENT_TIME_RANDOM:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    sub-float/2addr v1, v6

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    goto :goto_1

    :cond_6
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MAX_MANPOWER_MIN:F

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_MAX_MANPOWER_RANDOM:F

    mul-float/2addr v7, v2

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v1, v6

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    :goto_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_THIRD_BONUS_CHANCE:I

    if-ge v0, v1, :cond_a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERALS_DEFENSE_MIN:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERALS_DEFENSE_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    goto :goto_2

    :cond_7
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERALS_ATTACK_MIN:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_GENERALS_ATTACK_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    goto :goto_2

    :cond_8
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_UNITS_DEFENSE_MIN:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_UNITS_DEFENSE_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    goto :goto_2

    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_UNITS_ATTACK_MIN:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->RULER_UNITS_ATTACK_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    :cond_a
    :goto_2
    invoke-virtual {p0, p1, v5}, Laoc/kingdoms/lukasz/map/Ruler;->updateCivBonuses(II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public final initRulerBonuses_Load(ILaoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;)V
    .locals 0

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/map/Ruler;->updateCivBonuses(II)V

    return-void
.end method

.method public final updateCivBonuses(II)V
    .locals 1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    int-to-float p2, p2

    invoke-virtual {p1, v0, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationBonuses_Temporary(Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;F)V

    return-void
.end method
