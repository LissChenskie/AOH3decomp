.class public Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;
.super Ljava/lang/Object;
.source "AI_CivDiplomacy.java"


# instance fields
.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPrepareForAlliance(I)Z
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_FIND_ALLY_EXPIRE:I

    add-int/2addr v3, v4

    invoke-direct {v2, p1, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public addPrepareForWar(I)Z
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_TURNS_MIN:I

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesDiplomacy:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesDiplomacy;->AI_PREPARE_FOR_WAR_TURNS_RANDOM:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, p1, v3}, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;-><init>(II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public clearPrepareForAlliance()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearPrepareForWar()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isPreparingForAllianceWithCivID(I)Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isPreparingForWarWithCivID(I)Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removePreparingForAllianceWithCivID(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar_Data;->c:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/AI_CivDiplomacy;->p:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
