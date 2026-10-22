.class public Laoc/kingdoms/lukasz/map/province/ProvinceCut;
.super Ljava/lang/Object;
.source "ProvinceCut.java"


# instance fields
.field public iMaxX:I

.field public iMaxY:I

.field public iMinX:I

.field public iMinY:I

.field private iPointsSize:I

.field private lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxX:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinY:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxY:I

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iPointsSize:I

    if-lez p1, :cond_4

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinX:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxX:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinY:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxY:I

    const/4 p1, 0x1

    :goto_0
    iget p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iPointsSize:I

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxX:I

    if-le p2, v0, :cond_0

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxX:I

    :cond_0
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinX:I

    if-ge p2, v0, :cond_1

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinX:I

    :cond_1
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxY:I

    if-le p2, v0, :cond_2

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMaxY:I

    :cond_2
    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinY:I

    if-ge p2, v0, :cond_3

    iget-object p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iMinY:I

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final getPointsSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->iPointsSize:I

    return v0
.end method

.method public final getPointsX(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsX:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, v0

    return p1
.end method

.method public final getPointsY(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceCut;->lPointsY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr p1, v0

    return p1
.end method
