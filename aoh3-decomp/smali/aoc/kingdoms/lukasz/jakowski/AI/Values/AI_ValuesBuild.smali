.class public Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;
.super Ljava/lang/Object;
.source "AI_ValuesBuild.java"


# instance fields
.field public BUILD_CHANGE_BUILDING_CHANCE:I

.field public BUILD_CHANGE_UPGRADE_CAPITAL_BUILDING_CHANCE:I

.field public BUILD_INVEST_AT_WAR:Z

.field public BUILD_LIMIT:[I

.field public BUILD_MAX_RESEARCH_UPGRADE_CAPITAL_CHANCE:I

.field public BUILD_MIN_BALANCE:F

.field public BUILD_NO_BUILDINGS_INVEST_ECONOMY:I

.field public BUILD_NO_BUILDINGS_NEXT_TYPE:I

.field public BUILD_NO_BUILDINGS_PRODUCTION_BUILDING:I

.field public BUILD_NO_BUILDINGS_TAX_EFFICIENCY:I

.field public BUILD_PRIORITIZE_ECONOMY_IF_INCOME_BELOW:F

.field public BUILD_PRIORITIZE_RESEARCH:Z

.field public BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT:I

.field public BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT_RANDOM:I

.field public BUILD_PRIORITIZE_RESEARCH_PERC:F

.field public BUILD_RESEARCH_MIN_BALANCE:F

.field public BUILD_RESOURCE_PROVINCES:I

.field public BUILD_SCORE_CAPITAL:[I

.field public BUILD_SCORE_CAPITAL_TOTAL:I

.field public BUILD_SCORE_CONSTRUCTED_BUILDINGS_MODIFIER:F

.field public BUILD_SCORE_CONSTRUCTION_COST:F

.field public BUILD_SCORE_DIFFERENT_RELIGION:F

.field public BUILD_SCORE_DISTANCE_FROM_CAPITAL:F

.field public BUILD_SCORE_MANPOWER_PER_GROWTH_RATE:F

.field public BUILD_SCORE_MIN:F

.field public BUILD_SCORE_NON_CORE:F

.field public BUILD_SCORE_PER_ECONOMY:F

.field public BUILD_SCORE_PER_GROWTH_RATE:F

.field public BUILD_SCORE_PER_INFRASTRUCTURE:F

.field public BUILD_SCORE_PER_MANPOWER:F

.field public BUILD_SCORE_PER_PRICE_OF_RESOURCE:F

.field public BUILD_SCORE_PER_PROVINCE_MAINTENANCE_REDUCTION:F

.field public BUILD_SCORE_PER_PROVINCE_VALUE:F

.field public BUILD_SCORE_PER_TAX_EFFICIENCY:F

.field public BUILD_SCORE_RESEARCH_PER_GROWTH_RATE:F

.field public BUILD_SCORE_SAME_CONTINENT_AS_CAPITAL:F

.field public BUILD_SCORE_TAX_EFFICIENCY_PER_GROWTH_RATE:F

.field public BUILD_SCORE_TERRAIN_CONSTRUCTION_COST:F

.field public BUILD_WONDER_CHANCE:I

.field public CHOOSE_BUILD_TYPE_LIMIT:I

.field public DEVELOP_INFRASTRUCTURE_MIN_LEFT_GOLD:I

.field public DEVELOP_INFRASTRUCTURE_RANDOM:I

.field public DEVELOP_INFRASTRUCTURE_SCORE_DISTANCE:I

.field public DEVELOP_INFRASTRUCTURE_SCORE_GROWTH_RATE:I

.field public DEVELOP_INFRASTRUCTURE_SCORE_RANDOM:I

.field public DONT_BUILD_LEGACY_BUILDING_IF_LEGACY_OVER:I

.field public INCREASE_GROWTH_RATE_MIN_LEFT_GOLD:I

.field public INCREASE_GROWTH_RATE_RANDOM:I

.field public INCREASE_GROWTH_RATE_SCORE_RANDOM:I

.field public INCREASE_MANPOWER_MIN_LEFT_GOLD:I

.field public INCREASE_MANPOWER_RANDOM:I

.field public INCREASE_MANPOWER_SCORE_RANDOM:I

.field public INCREASE_TAX_EFFICIENCY_MIN_LEFT_GOLD:I

.field public INCREASE_TAX_EFFICIENCY_RANDOM:I

.field public INCREASE_TAX_EFFICIENCY_SCORE_DISTANCE:I

.field public INCREASE_TAX_EFFICIENCY_SCORE_GROWTH_RATE:I

.field public INCREASE_TAX_EFFICIENCY_SCORE_RANDOM:I

.field public INVEST_IN_ECONOMY_AFTER_INCREASE_TAXATION_IN_PROVINCE_CHANCE:I

.field public INVEST_IN_ECONOMY_MAX_VALUE_INCREASE_GROWTH_RATE_CHANCE:I

.field public INVEST_IN_ECONOMY_MIN_LEFT_GOLD:I

.field public INVEST_IN_ECONOMY_RANDOM:I

.field public INVEST_IN_ECONOMY_SCORE_DISTANCE:I

.field public INVEST_IN_ECONOMY_SCORE_GROWTH_RATE:I

.field public INVEST_IN_ECONOMY_SCORE_PAYOFF:I

.field public INVEST_IN_ECONOMY_SCORE_RANDOM:I

.field public MAX_RESEARCH_EXPENSES_PERC_OF_INCOME:F


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x461c4000    # 10000.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_MIN:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_INVEST_AT_WAR:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH:Z

    const v1, 0x3f51eb85    # 0.82f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH_PERC:F

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT:I

    const/4 v0, 0x2

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_RESEARCH_BUILD_LIMIT_RANDOM:I

    const v0, 0x3e0a3d71    # 0.135f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->MAX_RESEARCH_EXPENSES_PERC_OF_INCOME:F

    const v0, 0x41033333    # 8.2f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_PRIORITIZE_ECONOMY_IF_INCOME_BELOW:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_MIN_BALANCE:F

    const v1, 0x400ccccd    # 2.2f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_RESEARCH_MIN_BALANCE:F

    const/16 v1, 0x19

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_CHANGE_BUILDING_CHANCE:I

    const/16 v2, 0x28

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_CHANGE_UPGRADE_CAPITAL_BUILDING_CHANCE:I

    const/16 v2, 0x23

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_MAX_RESEARCH_UPGRADE_CAPITAL_CHANCE:I

    const/16 v3, 0x1f4

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DONT_BUILD_LEGACY_BUILDING_IF_LEGACY_OVER:I

    const/4 v3, 0x3

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->CHOOSE_BUILD_TYPE_LIMIT:I

    const/16 v4, 0xf

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    iput-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_LIMIT:[I

    const/16 v5, 0x7d

    const/16 v6, 0x64

    const/16 v7, 0x4b

    filled-new-array {v5, v6, v7, v1}, [I

    move-result-object v5

    iput-object v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL:[I

    const/16 v5, 0x113

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CAPITAL_TOTAL:I

    const/16 v5, 0x1c

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_RESOURCE_PROVINCES:I

    const/16 v5, 0x3c

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_NEXT_TYPE:I

    const/16 v5, 0x50

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_INVEST_ECONOMY:I

    const/16 v5, 0x5a

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_TAX_EFFICIENCY:I

    iput v6, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_NO_BUILDINGS_PRODUCTION_BUILDING:I

    const/4 v6, 0x4

    iput v6, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_RANDOM:I

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_RANDOM:I

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_RANDOM:I

    iput v6, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_MANPOWER_RANDOM:I

    iput v6, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_GROWTH_RATE_RANDOM:I

    const/16 v3, 0x2a

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_AFTER_INCREASE_TAXATION_IN_PROVINCE_CHANCE:I

    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_RANDOM:I

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_GROWTH_RATE:I

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_DISTANCE:I

    const/16 v1, 0x46

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_SCORE_PAYOFF:I

    const/16 v1, 0x47

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_MAX_VALUE_INCREASE_GROWTH_RATE_CHANCE:I

    const/16 v1, 0xa

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_SCORE_RANDOM:I

    const/16 v2, 0x14

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_SCORE_GROWTH_RATE:I

    const/16 v3, 0x1e

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_SCORE_DISTANCE:I

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_SCORE_RANDOM:I

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_SCORE_GROWTH_RATE:I

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_SCORE_DISTANCE:I

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_MANPOWER_SCORE_RANDOM:I

    iput v7, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_GROWTH_RATE_SCORE_RANDOM:I

    const/16 v1, 0x41

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INVEST_IN_ECONOMY_MIN_LEFT_GOLD:I

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_TAX_EFFICIENCY_MIN_LEFT_GOLD:I

    const/16 v1, 0x96

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_MANPOWER_MIN_LEFT_GOLD:I

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->INCREASE_GROWTH_RATE_MIN_LEFT_GOLD:I

    iput v7, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->DEVELOP_INFRASTRUCTURE_MIN_LEFT_GOLD:I

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_SAME_CONTINENT_AS_CAPITAL:F

    const/high16 v2, -0x3c860000    # -250.0f

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_DISTANCE_FROM_CAPITAL:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PROVINCE_MAINTENANCE_REDUCTION:F

    const/high16 v3, 0x42480000    # 50.0f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_TERRAIN_CONSTRUCTION_COST:F

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CONSTRUCTION_COST:F

    const/high16 v3, 0x41c80000    # 25.0f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_INFRASTRUCTURE:F

    const/high16 v3, 0x3e800000    # 0.25f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_GROWTH_RATE:F

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_TAX_EFFICIENCY:F

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_ECONOMY:F

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_MANPOWER:F

    const/high16 v2, 0x41480000    # 12.5f

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PRICE_OF_RESOURCE:F

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_PER_PROVINCE_VALUE:F

    const v1, 0x3eb33333    # 0.35f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_CONSTRUCTED_BUILDINGS_MODIFIER:F

    const v1, -0x3bc48000    # -750.0f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_NON_CORE:F

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_DIFFERENT_RELIGION:F

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_RESEARCH_PER_GROWTH_RATE:F

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_MANPOWER_PER_GROWTH_RATE:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_SCORE_TAX_EFFICIENCY_PER_GROWTH_RATE:F

    const/16 v0, 0x11

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesBuild;->BUILD_WONDER_CHANCE:I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x5
        0x2
        0x4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x6
        0x4
        0x2
        0x1
        0x2
        0x4
    .end array-data
.end method
