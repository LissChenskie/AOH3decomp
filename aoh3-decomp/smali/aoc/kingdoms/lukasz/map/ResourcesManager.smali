.class public Laoc/kingdoms/lukasz/map/ResourcesManager;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;,
        Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;,
        Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;
    }
.end annotation


# static fields
.field public static iResourcesSize:I

.field public static lResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;",
            ">;"
        }
    .end annotation
.end field

.field public static lastUpdateYear:I

.field public static maxPrice:F

.field public static priceChangePerc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static priceChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;",
            ">;"
        }
    .end annotation
.end field

.field public static resourceImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static uniqueGoods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static worldResourcesProduced:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static worldResources_LargestProducer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static worldResources_LargestProducer_Amount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    const v1, 0x3c23d70a    # 0.01f

    sput v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->maxPrice:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->uniqueGoods:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer_Amount:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lastUpdateYear:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLargestGoodsProducedByCiv(I)I
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    move v3, v1

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    if-ltz v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ltz v2, :cond_4

    :goto_2
    sget p0, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v1, p0, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float p0, p0, v3

    if-gez p0, :cond_3

    move v2, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return v2
.end method

.method public static getMonthlyIncome(I)F
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v0

    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(II)F

    move-result p0

    return p0
.end method

.method public static getMonthlyIncome(II)F
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v0

    invoke-static {p0, p1, v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getMonthlyIncome(IIF)F

    move-result p0

    return p0
.end method

.method public static getMonthlyIncome(IIF)F
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    if-ltz v1, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result p1

    mul-float/2addr p1, p2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result p2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-ne p2, v2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->BASE_INCOME_DIFFERENT_RELIGION:F

    :goto_0
    add-float/2addr v1, p2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget-boolean p2, p2, Laoc/kingdoms/lukasz/map/province/Province;->haveACore:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/GameValues;->core:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;

    iget v0, p2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Core;->BASE_INCOME_NON_CORE:F

    :goto_1
    add-float/2addr v1, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCorruption()F

    move-result p2

    sub-float/2addr v1, p2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget p2, p2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->IncomeProduction:F

    add-float/2addr p2, p0

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr p2, p0

    add-float/2addr v1, p2

    const p0, 0x3c23d70a    # 0.01f

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public static getPrice(I)F
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Price:F

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static getPrice_Default(I)F
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Price:F

    return p0
.end method

.method public static getProducedGoods(I)F
    .locals 4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    if-ltz v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->production:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;->BASE_PRODUCTION:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->production:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;->GOODS_PRODUCED_PER_ECONOMY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency(I)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getWarWeariness()F

    move-result p0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->warWeariness:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_WarWeariness;->WW_GOODS_PRODUCTION_PER_POINT:F

    mul-float/2addr p0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr p0, v2

    mul-float/2addr v0, p0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static getProducedGoods_ResourceCiv(II)F
    .locals 3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v2

    add-float/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    float-to-int p0, v0

    int-to-float p0, p0

    return p0
.end method

.method public static getProductionEfficiency(I)F
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->production:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;->BASE_PRODUCTION_EFFICIENCY:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProductionEfficiency_FromEconomy(I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->ProductionEfficiency:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    add-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_PRODUCTION_EFFICIENCY_PER_LVL:F

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    const p0, 0x3c23d70a    # 0.01f

    invoke-static {p0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static getProductionEfficiency_FromEconomy(F)F
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->production:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;->PRODUCTION_EFFICIENCY_PER_ECONOMY:F

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getProductionEfficiency_FromEconomy(I)F
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/province/Province;->getEconomyWithBonuses()F

    move-result p0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->production:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Production;->PRODUCTION_EFFICIENCY_PER_ECONOMY:F

    mul-float/2addr p0, v0

    return p0
.end method

.method public static getResourceGroupName(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    const-string v1, "Commodities"

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v0, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/map/plague/KMTV/fTNtCctcBZcqKK;->TBBjdveechMS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "Luxury"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "LuxuryCommodities"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "Food"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResourceName(I)Ljava/lang/String;
    .locals 1

    if-ltz p0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "None"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasResource(II)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static final initUniqueCivsGoods()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iput v0, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateUniqueCivsGoods()V

    return-void
.end method

.method public static final loadResources()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/gms/internal/common/oss/ClXgFvsSKQc;->gVEKnVh:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v3, Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;

    const-string v4, "Resources"

    const-class v5, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v3, Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;

    invoke-virtual {v2, v3, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$ConfigResourcesData;->Resources:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    aget v4, v4, v0

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    aput v4, v3, v0

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    const/4 v6, 0x1

    aget v4, v4, v6

    div-float/2addr v4, v5

    aput v4, v3, v6

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    div-float/2addr v4, v5

    aput v4, v3, v6

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->maxPrice:F

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Price:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->maxPrice:F
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    move v1, v0

    :goto_1
    sget v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->uniqueGoods:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/map/ResourcesManager;->loadResourcesImages()V

    :goto_2
    sget v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v0, v1, :cond_4

    sget v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceStartID:I

    :goto_3
    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingsResourceSize:I

    if-ge v1, v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ne v2, v0, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iput v1, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->uniqueBuildingID:I

    goto :goto_4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static final loadResourcesImages()V
    .locals 7

    const-string v0, "game/resources/resourcesImages/numOfImages.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "game/resources/resourcesImages/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v5, v3, v4, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v5, v3, v4, v6}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public static final resetPriceChangePerc()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static final setPriceChangePerc(IFI)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p1

    const p1, 0x3c23d70a    # 0.01f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float p1, v2, p1

    if-ltz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    new-instance v0, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    invoke-direct {v0, p0, v1, p2}, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;-><init>(IFI)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateIncomeOfCivsWithResource(I)V

    :cond_0
    return-void
.end method

.method private static final updateCivBonuses(III)V
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyIncome:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyIncome:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TaxEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TaxEfficiency:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeProduction:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeProduction:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeProduction:F

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProductionEfficiency:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProductionEfficiency:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProvinceMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ProvinceMaintenance:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GrowthRate:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GrowthRate:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GrowthRate:F

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchPerMonth()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyLegacy:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateLegacyPerMonth(I)V

    :cond_6
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MonthlyLegacy:F

    int-to-float v4, p2

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MaxManpower:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MaxManpower:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    :cond_8
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ManpowerRecoverySpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ManpowerRecoverySpeed:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ManpowerRecoverySpeed:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadTurns:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Turns;->addCivUpdateMaxManpower(I)V

    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMaintenance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMaintenance:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMaintenance:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateArmyMaintenance(I)V

    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitmentTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_b

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitmentTime:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyCost:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyCost:F

    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyFirstLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmyFirstLineCost:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmyFirstLineCost:F

    :cond_d
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmySecondLineCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RecruitArmySecondLineCost:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitArmySecondLineCost:F

    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ResearchPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_f

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateResearchPerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ResearchPoints:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ResearchPoints:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    :cond_10
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TechnologyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_11

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->TechnologyCost:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TechnologyCost:F

    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_12

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionCost:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AdministrationBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_13

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AdministrationBuildingsCost:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    :cond_13
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MilitaryBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->MilitaryBuildingsCost:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    :cond_14
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->EconomyBuildingsCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->EconomyBuildingsCost:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionTime:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_16

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ConstructionTime:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionTime:F

    :cond_16
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->InvestInEconomyCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->InvestInEconomyCost:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncreaseManpowerCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncreaseManpowerCost:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    :cond_18
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralAttack:I

    if-eqz v0, :cond_19

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralAttack:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralDefense:I

    if-eqz v0, :cond_1a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralDefense:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    :cond_1a
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsAttack:I

    if-eqz v0, :cond_1b

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsAttack:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    :cond_1b
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsDefense:I

    if-eqz v0, :cond_1c

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->UnitsDefense:I

    mul-int/2addr v3, p2

    add-int/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    :cond_1c
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralDefense:I

    if-eqz v0, :cond_1d

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->GeneralDefense:I

    mul-int/2addr v3, p2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxMorale:F

    :cond_1d
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMovementSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ArmyMovementSpeed:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ArmyMovementSpeed:F

    :cond_1e
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->SiegeEffectiveness:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1f

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->SiegeEffectiveness:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->SiegeEffectiveness:F

    :cond_1f
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ImproveRelationsModifier:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_20

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->ImproveRelationsModifier:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    :cond_20
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeFromVassals:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_21

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->IncomeFromVassals:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncomeFromVassals:F

    :cond_21
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->LoanInterest:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_22

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->LoanInterest:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    :cond_22
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AggressiveExpansion:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->AggressiveExpansion:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AggressiveExpansion:F

    :cond_23
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RevolutionaryRisk:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_24

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RevolutionaryRisk:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RevolutionaryRisk:F

    :cond_24
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->CoreCost:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->CoreCost:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->CoreCost:F

    :cond_25
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->BattleWidth:I

    if-eqz v0, :cond_26

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->BattleWidth:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    :cond_26
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RegimentsLimit:I

    if-eqz v0, :cond_27

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget p0, p0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RegimentsLimit:I

    mul-int/2addr p0, p2

    add-int/2addr v1, p0

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RegimentsLimit:I

    :cond_27
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateProvincesIncomeAndExpenses()V

    return-void
.end method

.method public static updateIncomeOfCivsWithResource(I)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-ne v2, p0, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final updatePriceChanges()V
    .locals 6

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_CHANGE_PRICE_EXPIRED:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->expiresTurnID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-gt v2, v3, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updatePriceChanges_NumOfPriceChanges(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChangePerc:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v5, v5, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v5, v5, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->priceChange:F

    sub-float/2addr v4, v5

    const v5, 0x3c23d70a    # 0.01f

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
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

.method public static updatePriceChanges_NumOfPriceChanges(I)I
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->priceChanges:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;

    iget v2, v2, Laoc/kingdoms/lukasz/map/ResourcesManager$PriceChange;->resourceID:I

    if-ne v2, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final updateUniqueCivGoods(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    sget v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v1, v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->uniqueGoods:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v2

    if-ltz v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->uniqueGoods:Ljava/util/List;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iput v0, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    :goto_2
    sget v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v0, v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->uniqueGoods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I

    add-int/2addr v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iUniqueResources:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public static final updateUniqueCivsGoods()V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateUniqueCivGoods(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static updateWorldResourcesProduced(Z)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v1

    :goto_0
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v3, v4, :cond_2

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v4, v5, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_2
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v3, v4, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-nez p0, :cond_5

    :try_start_1
    sget v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_4

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v6, v6, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateCivBonuses(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    move v3, v1

    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->resetGoodsProduced()V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iput v1, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initGoodsProduced()V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iput v1, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move v3, v1

    :goto_6
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v3, v4, :cond_7

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer_Amount:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sput v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lastUpdateYear:I

    move v3, v1

    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_8
    sget v6, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v5, v6, :cond_8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    move v3, v1

    :goto_9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_a

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    if-ltz v4, :cond_a

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods(I)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGoodsProduced(II)V

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    move v3, v1

    :goto_a
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v3, v4, :cond_c

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResourcesProduced:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    move v3, v1

    :goto_b
    sget v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v3, v4, :cond_10

    move v4, v0

    move v5, v1

    :goto_c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v6

    if-ge v4, v6, :cond_e

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGoodsProduced(I)I

    move-result v6

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGoodsProduced(I)I

    move-result v7

    if-ge v6, v7, :cond_d

    move v5, v4

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_e
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    sget-object v6, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v6, v6, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer_Amount:Ljava/util/List;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGoodsProduced(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_f
    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer_Amount:Ljava/util/List;

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getGoodsProduced(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_10
    if-nez p0, :cond_13

    move p0, v1

    :goto_e
    sget v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge p0, v3, :cond_13

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, ": "

    if-eqz v3, :cond_11

    :try_start_3
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v5, :cond_12

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NO_LONGER_LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "WeAreNoLongerTheLargestProducerOf"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v3, v10

    move-object v4, v5

    move-object v5, v6

    move v6, p0

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    goto :goto_f

    :cond_11
    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v5, :cond_12

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "WeAreTheLargestProducerOf"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-object v3, v10

    move-object v4, v5

    move-object v5, v6

    move v6, p0

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_12
    :goto_f
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_e

    :catch_1
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_13
    :try_start_4
    sget p0, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_10
    if-ge v1, p0, :cond_15

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_14

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateCivBonuses(III)V

    sget-object v2, Laoc/kingdoms/lukasz/map/ResourcesManager;->worldResources_LargestProducer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I

    add-int/2addr v3, v0

    iput v3, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->largestProducerNum:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :catch_2
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public static updateWorldResourcesProduced_NewYear()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lastUpdateYear:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->updateWorldResourcesProduced(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Goods()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->inGoodsView:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/ResourcesManager$1;

    const-string v1, "rebuildGoods"

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/map/ResourcesManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_0
    return-void
.end method
