.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;
.super Ljava/lang/Object;
.source "AI_MoveNoConnection.java"


# instance fields
.field public noConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addProvince(II)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;

    invoke-direct {v1, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;-><init>(II)V

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->AT_WAR_NO_CONNECTION_DAYS:I

    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public contains(II)Z
    .locals 6

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;

    invoke-direct {v0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;-><init>(II)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_0
    return v2

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v1, v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    iget v1, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->fromProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->isTheSameRegion(Laoc/kingdoms/lukasz/map/province/Province;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v4, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->toProvince:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->isTheSameRegion(Laoc/kingdoms/lukasz/map/province/Province;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_4
    return v3
.end method

.method public isTheSameRegion(Laoc/kingdoms/lukasz/map/province/Province;I)Z
    .locals 1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result v0

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result p2

    if-ne v0, p2, :cond_0

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivRegionID()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public update()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnection;->noConnectionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v1, v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
