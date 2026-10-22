.class public Laoc/kingdoms/lukasz/jakowski/Region;
.super Ljava/lang/Object;
.source "Region.java"


# instance fields
.field private belowZero:Z

.field private iMaxX:I

.field private iMaxY:I

.field private iMinX:I

.field private iMinY:I

.field private iProvincesSize:I

.field private lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iProvincesSize:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->belowZero:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addProvince(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final buildRegionBounds()V
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinX:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxX:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinY:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxY:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iProvincesSize:I

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iProvincesSize:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinX:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinX:I

    :cond_0
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxX:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxX:I

    :cond_1
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinY:I

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinY:I

    :cond_2
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxY:I

    if-le v3, v4, :cond_3

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxY:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinX:I

    if-gez v2, :cond_5

    move v1, v0

    :cond_5
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Region;->belowZero:Z

    :cond_6
    return-void
.end method

.method public final getBelowZero()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->belowZero:Z

    return v0
.end method

.method public final getMaxX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxX:I

    return v0
.end method

.method public final getMaxY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMaxY:I

    return v0
.end method

.method public final getMinX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinX:I

    return v0
.end method

.method public final getMinY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iMinY:I

    return v0
.end method

.method public final getProvince(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getProvincesSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iProvincesSize:I

    return v0
.end method

.method public final getProvincesSize2()I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final removeProvince(I)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Region;->lProvinces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Region;->iProvincesSize:I

    return-void
.end method
