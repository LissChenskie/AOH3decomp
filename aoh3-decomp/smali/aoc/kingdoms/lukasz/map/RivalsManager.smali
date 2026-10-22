.class public Laoc/kingdoms/lukasz/map/RivalsManager;
.super Ljava/lang/Object;
.source "RivalsManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildRivals(II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/4 v4, 0x0

    if-ge v3, p0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/RivalsManager;->buildRivals_IsInDistance_Perc(II)F

    move-result v5

    cmpl-float v4, v5, v4

    if-ltz v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p0, 0x1

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/RivalsManager;->buildRivals_IsInDistance_Perc(II)F

    move-result v5

    cmpl-float v6, v5, v4

    if-ltz v6, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, p1, :cond_4

    return-object v0

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVALS_SCORE_MIN:F

    mul-float/2addr v8, v7

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVALS_SCORE_DISTANCE:F

    mul-float/2addr v7, v9

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->RIVALS_DISTANCE:F

    div-float/2addr v9, v10

    mul-float/2addr v7, v9

    add-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, p1, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    move v4, v2

    move v6, v5

    :goto_4
    if-ge v4, p0, :cond_7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    move v6, v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    return-object v3
.end method

.method public static buildRivals_IsInDistance(II)Z
    .locals 2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result p0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->RIVALS_DISTANCE:F

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static buildRivals_IsInDistance_Perc(II)F
    .locals 2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    if-gtz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result p0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->RIVALS_DISTANCE:F

    cmpl-float p1, p0, p1

    if-lez p1, :cond_1

    return v1

    :cond_1
    return p0
.end method

.method public static getLegacy(II)F
    .locals 0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget p0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVAL_LEGACY_MIN:F

    return p0
.end method

.method public static getManpower(II)I
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVAL_MANPOWER_MIN:I

    int-to-float v0, v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getDistance_PercOfMax(II)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    const p0, 0x3d4ccccd    # 0.05f

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static getRivaledBy(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p0, 0x1

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isRival(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method
