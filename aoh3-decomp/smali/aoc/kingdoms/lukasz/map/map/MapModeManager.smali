.class public Laoc/kingdoms/lukasz/map/map/MapModeManager;
.super Ljava/lang/Object;
.source "MapModeManager.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x1f4

.field public static PROVINCE_BLUE:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_RED:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

.field public static PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

.field public static diplomacyActiveCivID:I

.field public static diplomacyColorsPosX:I

.field public static diplomacyColorsPosY:I

.field public static diplomacyScale:F

.field public static fAlphaAnimation:F

.field public static lTime:J


# instance fields
.field public ECONOMY_MAX:F

.field public MODE_ALLIANCES:I

.field public MODE_BUILDING:I

.field public MODE_CIV_ECONOMY_HOVER:I

.field public MODE_CIV_POPULATION_HOVER:I

.field public MODE_CIV_STABILITY_HOVER:I

.field public MODE_COLONIZE_CHOOSE_PROVINCE:I

.field public MODE_CONVERT_RELIGION:I

.field public MODE_CORE:I

.field public MODE_DECLARE_WAR:I

.field public MODE_DEFAULT:I

.field public MODE_DEFAULT_TERRAIN:I

.field public MODE_DEFENSE_LEVEL:I

.field public MODE_DEFENSIVE_PACTS:I

.field public MODE_DEVASTATION:I

.field public MODE_DEVELOP_INFRASTRUCTURE:I

.field public MODE_DIPLOMACY:I

.field public MODE_DIPLOMACY_DAMAGE_RELATIONS:I

.field public MODE_DIPLOMACY_IMPROVE_RELATIONS:I

.field public MODE_DISEASES:I

.field public MODE_ECONOMY:I

.field public MODE_FORM_CIV:I

.field public MODE_GOODS:I

.field public MODE_GOVERNMENT:I

.field public MODE_INCREASE_GROWTH_RATE:I

.field public MODE_INCREASE_MANPOWER:I

.field public MODE_INCREASE_TAX_EFFICIENCY:I

.field public MODE_INFRASTRUCTURE:I

.field public MODE_INVEST_IN_ECONOMY:I

.field public MODE_LOOT:I

.field public MODE_MERCENARIES_CHOOSE_PROVINCE:I

.field public MODE_MOVE_CAPITAL:I

.field public MODE_NEW_ARMY_CHOOSE_PROVINCE:I

.field public MODE_NON_AGGRESSION_PACTS:I

.field public MODE_NUKE_CHOOSE_PROVINCE:I

.field public MODE_PEACE_VIEW:I

.field public MODE_POPULATION:I

.field public MODE_PROVINCE_DEVASTATION_HOVER:I

.field public MODE_PROVINCE_ECONOMY_HOVER:I

.field public MODE_PROVINCE_EXPENSES_HOVER:I

.field public MODE_PROVINCE_FORTS_HOVER:I

.field public MODE_PROVINCE_GROWTH_RATE_HOVER:I

.field public MODE_PROVINCE_INCOME:I

.field public MODE_PROVINCE_INCOME_HOVER:I

.field public MODE_PROVINCE_INFRASTRUCTURE_HOVER:I

.field public MODE_PROVINCE_LOOT_HOVER:I

.field public MODE_PROVINCE_MANPOWER_HOVER:I

.field public MODE_PROVINCE_MANPOWER_HOVER_PLAYER:I

.field public MODE_PROVINCE_POPULATION_HOVER:I

.field public MODE_PROVINCE_PROVINCE_INCOME_HOVER:I

.field public MODE_PROVINCE_PROVINCE_VALUE_HOVER:I

.field public MODE_PROVINCE_RELIGION_HOVER:I

.field public MODE_PROVINCE_TAX:I

.field public MODE_PROVINCE_TAX_EFFICIENCY_HOVER:I

.field public MODE_PROVINCE_UNREST_HOVER:I

.field public MODE_RECRUIT_ARMY:I

.field public MODE_RELEASE_VASSAL:I

.field public MODE_RELIGION:I

.field public MODE_SPECIAL_ALLIANCE_VIEW:I

.field public MODE_TERRAIN:I

.field public MODE_UNREST:I

.field public MODE_WARS:I

.field public MODE_WAR_VIEW:I

.field public MODE_WONDERS:I

.field public POPULATION_MAX:I

.field public PROVINCE_INCOME_MAX:F

.field public PROVINCE_MANPOWER_MAX:F

.field public TAX_MAX:F

.field public iActiveMapModeID:I

.field public lMapModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/MapMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e8c8c8d

    const v2, 0x3f028283

    const v3, 0x3e70f0f1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GREEN:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e30b0b1

    const v2, 0x3e008081

    const v5, 0x3f35b5b6

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f52d2d3

    const v2, 0x3f48c8c9

    invoke-direct {v0, v1, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_GRAY:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3ebebebf

    const v5, 0x3f169697

    const v6, 0x3e0c8c8d

    invoke-direct {v0, v6, v1, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f6bebec

    const/4 v5, 0x0

    invoke-direct {v0, v5, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3eb4b4b5

    const v3, 0x3f66e6e7

    const v6, 0x3e20a0a1

    invoke-direct {v0, v6, v1, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_BLUE2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f57d7d8

    invoke-direct {v0, v1, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e48c8c9

    invoke-direct {v0, v2, v1, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_RED2_ALLY:Lcom/badlogic/gdx/graphics/Color;

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    sput v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    const v0, -0xbde31

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosX:I

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosY:I

    const v0, -0x3bbdc000    # -777.0f

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyScale:F

    const/16 v0, -0x309

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT_TERRAIN:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_POPULATION:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_ECONOMY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INCOME:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INCOME_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_EXPENSES_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_POPULATION_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_ECONOMY_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_MANPOWER_HOVER_PLAYER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_GROWTH_RATE_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_MANPOWER_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_ECONOMY_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_TAX_EFFICIENCY_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_POPULATION_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_RELIGION_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_FORTS_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_PROVINCE_INCOME_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INFRASTRUCTURE_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_LOOT_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_PROVINCE_VALUE_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_DEVASTATION_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_UNREST_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_TAX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_TERRAIN:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOODS:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INFRASTRUCTURE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WONDERS:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELIGION:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOVERNMENT:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVASTATION:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_LOOT:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFENSE_LEVEL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_UNREST:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DISEASES:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WARS:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_ALLIANCES:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFENSIVE_PACTS:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NON_AGGRESSION_PACTS:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MERCENARIES_CHOOSE_PROVINCE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_STABILITY_HOVER:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_IMPROVE_RELATIONS:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_DAMAGE_RELATIONS:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DECLARE_WAR:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_FORM_CIV:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_SPECIAL_ALLIANCE_VIEW:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WAR_VIEW:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELEASE_VASSAL:I

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$3;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$2;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$3;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$6;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$4;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$4;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$5;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$5;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$6;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$9;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$7;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$7;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$8;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$8;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$9;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_IMPROVE_RELATIONS:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$12;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$10;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$10;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$11;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$11;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$12;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_DAMAGE_RELATIONS:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$15;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$13;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$13;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$14;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$14;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$15;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DECLARE_WAR:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$18;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$16;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$16;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$17;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$17;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$18;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WARS:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$21;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$19;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$19;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$20;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$20;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$21;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_ALLIANCES:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$24;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$22;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$22;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$23;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$23;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$24;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFENSIVE_PACTS:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$27;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$25;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$25;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$26;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$26;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$27;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NON_AGGRESSION_PACTS:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$30;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$28;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$28;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$29;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$29;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$30;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$33;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$31;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$31;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$32;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$32;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$33;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$36;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$34;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$34;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$35;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$35;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$36;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_FORM_CIV:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$39;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$37;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$37;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$38;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$38;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$39;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_SPECIAL_ALLIANCE_VIEW:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$42;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$40;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$40;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$41;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$41;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$42;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WAR_VIEW:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$45;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$43;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$43;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$44;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$44;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$45;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$48;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$46;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$46;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$47;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$47;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$48;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELEASE_VASSAL:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$51;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$49;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$49;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$50;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$50;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$51;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT_TERRAIN:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$54;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$52;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$52;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$53;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$53;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$54;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_POPULATION:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$57;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$55;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$55;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$56;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$56;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$57;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_ECONOMY:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$60;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$58;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$58;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$59;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$59;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$60;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_UNREST:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$63;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$61;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$61;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$62;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$62;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$63;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_TAX:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$66;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$64;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$64;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$65;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$65;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$66;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVASTATION:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$69;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$67;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$67;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$68;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$68;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$69;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_LOOT:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$72;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$70;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$70;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$71;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$71;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$72;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFENSE_LEVEL:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$75;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$73;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$73;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$74;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$74;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$75;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DISEASES:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$78;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$76;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$76;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$77;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$77;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$78;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INFRASTRUCTURE:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$81;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$79;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$79;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$80;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$80;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$81;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOVERNMENT:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$84;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$82;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$82;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$83;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$83;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$84;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELIGION:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$87;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$85;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$85;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$86;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$86;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$87;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INCOME_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$90;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$88;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$88;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$89;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$89;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$90;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_EXPENSES_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$93;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$91;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$91;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$92;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$92;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$93;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_POPULATION_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$94;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$94;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$95;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$95;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$96;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_ECONOMY_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$99;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$97;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$97;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$98;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$98;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$99;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_MANPOWER_HOVER_PLAYER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$102;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$100;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$100;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$101;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$101;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$102;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_STABILITY_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$105;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$103;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$103;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$104;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$104;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$105;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_UNREST_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$108;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$106;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$106;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$107;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$107;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$108;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_MANPOWER_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$111;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$109;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$109;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$110;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$110;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$111;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_TAX_EFFICIENCY_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$112;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$112;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$113;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$113;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$114;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_ECONOMY_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$117;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$115;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$115;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$116;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$116;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$117;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_FORTS_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$120;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$118;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$118;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$119;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$119;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$120;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_PROVINCE_INCOME_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$123;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$121;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$121;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$122;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$122;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$123;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INFRASTRUCTURE_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$126;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$124;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$124;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$125;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$125;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$126;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_PROVINCE_VALUE_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$129;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$127;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$127;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$128;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$128;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$129;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_LOOT_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$132;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$130;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$130;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$131;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$131;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$132;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_DEVASTATION_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$135;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$133;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$133;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$134;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$134;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$135;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_GROWTH_RATE_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$138;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$136;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$136;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$137;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$137;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$138;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_POPULATION_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$139;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$139;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$140;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$140;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$141;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_RELIGION_HOVER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$144;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$142;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$142;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$143;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$143;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$144;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_INCOME:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$147;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$145;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$145;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$146;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$146;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$147;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$150;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$148;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$148;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$149;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$149;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$150;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MERCENARIES_CHOOSE_PROVINCE:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$153;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$151;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$151;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$152;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$152;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$153;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapMode;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$154;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$154;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$155;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$155;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_TERRAIN:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$158;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$156;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$156;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$157;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$157;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$158;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_GOODS:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$161;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$159;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$159;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$160;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$160;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$161;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WONDERS:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$164;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$162;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$162;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$163;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$163;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$164;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$167;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$165;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$165;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$166;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$166;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$167;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$170;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$168;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$168;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$169;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$169;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$170;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$173;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$171;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$171;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$172;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$172;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$173;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$176;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$174;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$174;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$175;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$175;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$176;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$179;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$177;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$177;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$178;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$178;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$179;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$182;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$180;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$180;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$181;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$181;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$182;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$185;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$183;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$183;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$184;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$184;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$185;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapModeManager$188;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/MapModeManager$186;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$186;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    new-instance v2, Laoc/kingdoms/lukasz/map/map/MapModeManager$187;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager$187;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V

    invoke-direct {v0, p0, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapModeManager$188;-><init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    return-void
.end method

.method private final addMapMode(Laoc/kingdoms/lukasz/map/map/MapMode;)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public static drawProvinces_DefaultHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-lez v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    goto :goto_1

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    :goto_0
    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    goto :goto_1

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    goto :goto_0

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-ltz v2, :cond_7

    move v2, v3

    :goto_2
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v4, :cond_4

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v5, v0

    iput v5, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_3

    :cond_2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v4, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v3, v2, :cond_d

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v2, v1, :cond_5

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v4, v0

    iput v4, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_5

    :cond_5
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move v2, v3

    :goto_6
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v4, :cond_a

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v1, :cond_8

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v5, v0

    iput v5, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_7

    :cond_8
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_9
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    :goto_8
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v3, v2, :cond_d

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v2, v1, :cond_b

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v4, v0

    iput v4, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_9

    :cond_b
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_c
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_d
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :goto_a
    return-void
.end method

.method public static drawProvinces_DefaultHover_Player(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 6

    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawWastelandProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-ltz v2, :cond_5

    move v2, v3

    :goto_0
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v4, :cond_2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v1, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v5, v0

    iput v5, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_1

    :cond_0
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v4, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v3, v2, :cond_b

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v4, v0

    iput v4, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_3

    :cond_3
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fog_drawLandProvince:Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;

    invoke-interface {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;->drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_4
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v2, v4, :cond_8

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-ne v4, v1, :cond_6

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v5, v0

    iput v5, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_5

    :cond_6
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_7
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_6
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v3, v2, :cond_b

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-ne v2, v1, :cond_9

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    sget v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    mul-float/2addr v4, v0

    iput v4, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_7

    :cond_9
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawOccupiedProvinces(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :goto_8
    return-void
.end method

.method public static getProvinceHover_Default()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .locals 6

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Flag;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final updateAlpha()V
    .locals 6

    sget-wide v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v2

    const/high16 v2, 0x43fa0000    # 500.0f

    div-float/2addr v0, v2

    const v2, 0x3f0ccccd    # 0.55f

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    goto :goto_0

    :cond_0
    sput v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->fAlphaAnimation:F

    :goto_0
    return-void
.end method

.method public static final updateDiplomacyProvinceColor(Z)V
    .locals 8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosX:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosY:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eq v0, v1, :cond_20

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosX:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyColorsPosY:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyScale:F

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    const v3, 0x3ea8f5c3    # 0.33f

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v2, :cond_10

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    if-lez v2, :cond_f

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v2, v5, :cond_1

    if-eqz p0, :cond_f

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne v2, v5, :cond_3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_3
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-ne v2, v5, :cond_4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_4
    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_5
    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_6
    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_TRUCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_7
    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_8
    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE2:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_9
    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_PACT:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_a
    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_1

    :cond_b
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    sget v5, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_c
    sget v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v2

    float-to-int v2, v2

    if-nez v2, :cond_d

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iput-object v4, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_1

    :cond_d
    if-lez v2, :cond_e

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v2, v2

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    neg-float v7, v7

    float-to-int v7, v7

    invoke-static {v5, v6, v2, v7, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_e
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    neg-int v2, v2

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    neg-float v7, v7

    float-to-int v7, v7

    invoke-static {v5, v6, v2, v7, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, v3, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    :cond_f
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_10
    :goto_2
    sget p0, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, p0, :cond_20

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    if-lez p0, :cond_1f

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne p0, v1, :cond_11

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_11
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    invoke-static {v1, p0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_AT_WAR:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_12
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result p0

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    if-ne p0, v1, :cond_13

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_13
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result p0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-ne p0, v1, :cond_14

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_VASSAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_14
    sget p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->alliance:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_ALLIANCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_15
    sget p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->defensivePact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_DEFENSIVE_PACT:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_16
    sget p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->truce:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_TRUCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_17
    sget p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guarantee:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_18
    sget p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->guaranteeByCivID:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_INDEPENDENCE2:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_19
    sget p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->nonAggressionPact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_PACT:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_1a
    sget p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto/16 :goto_3

    :cond_1b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->militaryAccess:Ljava/util/concurrent/ConcurrentHashMap;

    sget v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_MILITARY_ACCESS:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_1c
    sget p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->diplomacyActiveCivID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result p0

    float-to-int p0, p0

    if-nez p0, :cond_1d

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_NEUTRAL_GREEN:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    iput v3, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_3

    :cond_1d
    if-lez p0, :cond_1e

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_GREEN2:Lcom/badlogic/gdx/graphics/Color;

    neg-int p0, p0

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MAX:F

    neg-float v6, v6

    float-to-int v6, v6

    invoke-static {v2, v5, p0, v6, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p0

    iput-object p0, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_1e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->PROVINCE_DIPLOMACY_RED2:Lcom/badlogic/gdx/graphics/Color;

    neg-int p0, p0

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_RELATIONS_MIN:F

    neg-float v6, v6

    float-to-int v6, v6

    invoke-static {v2, v5, p0, v6, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p0

    iput-object p0, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    :cond_1f
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_20
    return-void
.end method

.method public static final updateRightMenu()V
    .locals 2

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->stateVisible:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->lTime:J

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Right(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final disableAllViews()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapMode;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateViews()V

    return-void
.end method

.method public final setActiveViewID(I)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ne v1, p1, :cond_1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/map/MapMode;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    goto :goto_0

    :cond_1
    iput p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/MapMode;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lMapModes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/map/MapMode;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->updateDrawOver()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawExtraDetails()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->updateExtraAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateViews()V

    return-void
.end method

.method public final updateCurrentWarsView()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput-boolean v0, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v2

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateMaxEconomy()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

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

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->ECONOMY_MAX:F

    return-void
.end method

.method public final updateMaxPopulation()V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

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

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    if-le v1, v2, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    int-to-float v0, v0

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->POPULATION_MAX:I

    return-void
.end method

.method public final updateMaxProvinceIncome()V
    .locals 3

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

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

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceIncome()F

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_INCOME_MAX:F

    return-void
.end method

.method public final updateMaxTax()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

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

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    const v1, 0x3f733333    # 0.95f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    return-void
.end method

.method public final updatePeaceView(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput-boolean v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_c

    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_TAKE_PROVINCES_FROM_ALLIES:Z

    if-eqz v3, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_4

    :cond_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v4, v1, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_4

    :cond_4
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_c

    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_8

    :cond_7
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_TAKE_PROVINCES_FROM_ALLIES:Z

    if-eqz v3, :cond_9

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v2

    goto :goto_6

    :cond_8
    move v4, v0

    :goto_6
    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_8

    :cond_9
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    if-eq v4, v1, :cond_a

    move v4, v2

    goto :goto_7

    :cond_a
    move v4, v0

    :goto_7
    iput-boolean v4, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    :cond_b
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->PEACE_TAKE_PROVINCES_FROM_ALLIES:Z

    if-eqz v1, :cond_e

    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result p1

    if-ge v0, p1, :cond_11

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    if-lez p1, :cond_d

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz p1, :cond_d

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-nez p1, :cond_d

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    iput-boolean v2, p1, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsToTake:Z

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget p1, p1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    :goto_a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v0, v3, :cond_11

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_10

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    if-eqz v3, :cond_10

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    if-nez v3, :cond_10

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-eq v3, v1, :cond_f

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-ne v3, p1, :cond_10

    :cond_f
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsToTake:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method public final updateSpecialAllianceView()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput-boolean v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput-boolean v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->iLeaderCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->firstTier:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->alliancesSpecial:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecial;->allianceID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/allianceHRE/Alliance;->secondTier:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput-boolean v1, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public final updateViews()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceHover;->updateProvinceHoverBuild()V

    return-void
.end method

.method public final updateWarView(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput-boolean v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v1, v1, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->buildBiggestCitiesLines_Province(II)V

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_6

    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v0, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_2

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_6

    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z

    goto :goto_4

    :cond_4
    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_ParticipatesInWar:Z

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iput-boolean v0, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->warView_IsAggressor:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method
