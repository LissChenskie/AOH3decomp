.class Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$2;
.super Ljava/lang/Object;
.source "ProvinceBorderManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resetProvinceID()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->clearProvinceBorder()V

    :goto_0
    return-void
.end method

.method public setProvinceID(I)V
    .locals 5

    if-ltz p1, :cond_a

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-ne v0, v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->clearProvinceBorder()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveProvince()V

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesSeaBySea:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveProvince()V

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesSeaBySea:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-direct {v3, v4, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    if-ge p1, v2, :cond_5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveProvince()V

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveProvince()V

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-direct {v3, v4, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    if-ge p1, v2, :cond_7

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveProvince()V

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-direct {v3, p1, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveProvince()V

    sget-object v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-direct {v3, v4, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    :goto_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    if-ge p1, v1, :cond_9

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveProvince()V

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveProvince()V

    sget-object v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v3

    invoke-direct {v2, v3, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public update()V
    .locals 6

    sget-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lTimeLine:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->iLineOffsetInterval:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->iLineOffset:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->iLineOffset:I

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lTimeLine:J

    :cond_0
    return-void
.end method
