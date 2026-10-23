.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_SplitArmy;
.super Ljava/lang/Object;
.source "AI_SplitArmy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static splitArmy(Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    const/4 v3, 0x1

    if-lez v2, :cond_1

    iget v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-nez v4, :cond_0

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    sub-int/2addr v4, v3

    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFirstLine:I

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-lez v2, :cond_3

    iget v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int/2addr v2, v3

    :goto_2
    if-ltz v2, :cond_3

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v4, v3, :cond_2

    iget-object v4, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    sub-int/2addr v4, v3

    iput v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numFlank:I

    if-gtz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    const/4 v4, 0x2

    if-lez v2, :cond_5

    iget v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int/2addr v2, v3

    :goto_4
    if-ltz v2, :cond_5

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v5, v4, :cond_4

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-nez v5, :cond_4

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v5, :cond_4

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    sub-int/2addr v5, v3

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSupport:I

    if-gtz v5, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-lez v2, :cond_7

    iget v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    sub-int/2addr v2, v3

    :goto_6
    if-ltz v2, :cond_7

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v5, v4, :cond_6

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeUnit:Z

    if-eqz v5, :cond_6

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->isSettler:Z

    if-nez v5, :cond_6

    iget-object v5, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v1, v5}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    sub-int/2addr v5, v3

    iput v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_Army_Composition;->numSiege:I

    if-gtz v5, :cond_6

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget p0, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-lez p0, :cond_8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-virtual {p2, p0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->updateRegiment(ILjava/util/List;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    new-instance p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-direct {p2, v0, p1, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/map/province/Province;->addArmy(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
