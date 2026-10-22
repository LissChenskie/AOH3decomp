.class public Laoc/kingdoms/lukasz/map/war/WarManager;
.super Ljava/lang/Object;
.source "WarManager.java"


# static fields
.field public static UPDATE_WARS_CHECK_PROVINCES:I

.field public static iWarsSize:I

.field public static lWars:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Laoc/kingdoms/lukasz/map/war/War;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/war/WarManager;->iWarsSize:I

    sput v0, Laoc/kingdoms/lukasz/map/war/WarManager;->UPDATE_WARS_CHECK_PROVINCES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addWar(IIZZ)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v2, p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->areInThisWar(II)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Laoc/kingdoms/lukasz/map/war/War;

    move-object v1, v8

    move v2, p0

    move v3, p1

    move-object v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/war/War;-><init>(IILjava/lang/String;ZZ)V

    invoke-virtual {v7, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    sput p2, Laoc/kingdoms/lukasz/map/war/WarManager;->iWarsSize:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p2, v0, p0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p0, v0, p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return-object v0
.end method

.method protected static buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IILjava/util/List;Ljava/util/List;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)I"
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v5, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->clear()V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    if-eq v9, v5, :cond_0

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v9

    if-eq v9, v5, :cond_0

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v9

    invoke-static/range {p5 .. p5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v10

    if-ne v9, v10, :cond_1

    :cond_0
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/map/war/WarManager;->clearWas(Ljava/util/List;)V

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_d

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    move v9, v0

    :goto_2
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v10

    const/4 v11, 0x1

    if-ge v9, v10, :cond_8

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget-boolean v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    if-nez v10, :cond_6

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    move/from16 v12, p0

    move/from16 v13, p4

    invoke-static {v12, v10, v0, v13}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-eq v10, v5, :cond_3

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v10

    if-eq v10, v5, :cond_3

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    invoke-static/range {p5 .. p5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v14

    if-ne v10, v14, :cond_4

    :cond_3
    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/map/war/WarManager;->clearWas(Ljava/util/List;)V

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v0

    return v0

    :cond_4
    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v14, v0

    :goto_3
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_5

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iput-boolean v11, v10, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move/from16 v12, p0

    move/from16 v13, p4

    :cond_7
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_8
    move/from16 v12, p0

    move/from16 v13, p4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v9

    if-nez v9, :cond_c

    move v9, v0

    :goto_5
    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v10

    if-ge v9, v10, :cond_c

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget-boolean v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    if-nez v10, :cond_b

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v10

    if-ne v10, v5, :cond_9

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v14, v0

    :goto_6
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_a

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-interface {v10, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v14

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iput-boolean v11, v10, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_d
    move/from16 v12, p0

    move/from16 v13, p4

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v9, -0x1

    if-eqz v0, :cond_e

    return v9

    :cond_e
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    :try_start_0
    invoke-static/range {v0 .. v7}, Laoc/kingdoms/lukasz/map/war/WarManager;->buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IILjava/util/List;Ljava/util/List;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/map/war/WarManager;->clearWas(Ljava/util/List;)V

    return v9
.end method

.method public static final buildWars_Load()V
    .locals 7

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v4, v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v4, v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addWar(Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_2
    iget-object v4, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v4, v2

    :goto_3
    iget-object v5, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addAtWar(I)V

    iget-object v5, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v5, v5, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v6, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v6, v6, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->addAtWar(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public static final clearData()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/war/WarManager;->iWarsSize:I

    return-void
.end method

.method protected static final clearWas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static getWarKey(II)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v1, p0, p1}, Laoc/kingdoms/lukasz/map/war/War;->areInThisWar(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWarName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_NAMES:[Ljava/lang/String;

    array-length v0, v0

    rem-int/2addr p0, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_NAMES:[Ljava/lang/String;

    aget-object p0, v1, p0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "WarOverview"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final retreatToProvinceID(II)I
    .locals 8

    if-gez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iput-boolean v0, v3, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v0

    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {p0, v6, v3, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->canBeUsedInPath(IIZI)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iput-boolean v3, v6, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iput-boolean v3, v5, Laoc/kingdoms/lukasz/map/province/Province;->wasRetreat:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, p0

    move-object v3, v4

    move v4, p1

    move v5, p0

    invoke-static/range {v0 .. v7}, Laoc/kingdoms/lukasz/map/war/WarManager;->buildPath(ILjava/util/List;Ljava/util/List;Ljava/util/List;IILjava/util/List;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final updateWars_Peace()V
    .locals 6

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    iget v2, v1, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->WAR_MAKE_DEMANDS_MIN_WAR_SCORE:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-object v2, v1, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v2, v2, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget v4, v1, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/AI/AI_PeaceTreaty;->peaceTreaty(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object v1, v1, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Laoc/kingdoms/lukasz/jakowski/AI/AI_PeaceTreaty;->peaceTreaty(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static final updateWars_TickingWarScore()V
    .locals 2

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/map/war/WarManager;->UPDATE_WARS_CHECK_PROVINCES:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/war/WarManager;->UPDATE_WARS_CHECK_PROVINCES:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_WAR_ALL_PROVINCES_OCCUPIED_MONTHS:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/war/WarManager;->UPDATE_WARS_CHECK_PROVINCES:I

    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/war/War;->updateWars_AllProvincesOccupied()V

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/war/War;->updateWars_TickingWarScore()V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/war/War;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/war/War;->updateWars_TickingWarScore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static final updateWars_WhitePeace()V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v3, v2, Laoc/kingdoms/lukasz/map/war/War;->lastFight_TurnID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_AUTO_WHITE_PEACE_IF_NOTHING_HAPPENS_IN_WAR_DAYS:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    iget v3, v2, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_AUTO_WHITE_PEACE_IF_WARSCORE_BELOW:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_3

    :cond_1
    iget v3, v2, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_AUTO_WHITE_PEACE_AFTER_X_DAYS_OF_WAR:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-ge v3, v4, :cond_2

    iget v3, v2, Laoc/kingdoms/lukasz/map/war/War;->warScore:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->WAR_AUTO_WHITE_PEACE_AFTER_X_DAYS_OF_WAR_IF_WARSCORE_BELOW:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_3

    :cond_2
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-gtz v3, :cond_0

    :cond_3
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/war/War;->lAggressors:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v3, v3, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/war/War;->lDefenders:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;

    iget v4, v4, Laoc/kingdoms/lukasz/map/war/WarCivilization;->iCivID:I

    iget-object v6, v2, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->whitePeace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v3, v6, :cond_4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v4, v6, :cond_5

    :cond_4
    sput v3, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    sput v4, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "WhitePeace"

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->infoDiplomacy:I

    sput v3, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    new-instance v3, Laoc/kingdoms/lukasz/map/war/WarManager$1;

    const-string v4, "rebuildInGame_Wars"

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/map/war/WarManager$1;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    iget-object v4, v2, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    :cond_5
    iget-object v2, v2, Laoc/kingdoms/lukasz/map/war/War;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_7

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
