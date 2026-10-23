.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;
.super Ljava/lang/Object;
.source "PlayerInvasion.java"


# instance fields
.field public invasions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/army/ArmyInvasion;",
            ">;"
        }
    .end annotation
.end field

.field public invasionsSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    return-void
.end method


# virtual methods
.method public final addInvasion(I)Z
    .locals 4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvincesSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/jakowski/Game;->findArmy_FullCheck(ILjava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$ArmyPos;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v1

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    iput-object v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->invasionArmyProvinces:Ljava/util/List;

    invoke-direct {v1, p1, v2, v3}, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;-><init>(ILjava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    const/4 p1, 0x1

    return p1
.end method

.method public final clearInvasions()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    return-void
.end method

.method public final getInvasionPlan_NumOfProvinces(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final haveInvasionPlan(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final moveInvasion(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->invasionMoveArmy(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final removeInvasion(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyInvasion;->armyKey:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerInvasion;->invasionsSize:I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
