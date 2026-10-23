.class public Laoc/kingdoms/lukasz/map/province/ProvincePopulation;
.super Ljava/lang/Object;
.source "ProvincePopulation.java"


# instance fields
.field private c:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->c:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->n:I

    return-void
.end method


# virtual methods
.method public final getCivID()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->c:I

    return v0
.end method

.method public final getPopulation()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->n:I

    return v0
.end method

.method public final setPopulation(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvincePopulation;->n:I

    return-void
.end method
