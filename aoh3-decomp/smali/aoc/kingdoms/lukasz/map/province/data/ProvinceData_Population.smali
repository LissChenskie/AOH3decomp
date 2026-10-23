.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;
.super Ljava/lang/Object;
.source "ProvinceData_Population.java"


# instance fields
.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvincePopulation;",
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

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getPopulation(I)Laoc/kingdoms/lukasz/map/province/ProvincePopulation;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;

    return-object p1
.end method

.method public getPopulation()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvincePopulation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData_Population;->p:Ljava/util/List;

    return-object v0
.end method
