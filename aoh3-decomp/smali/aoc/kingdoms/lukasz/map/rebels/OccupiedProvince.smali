.class public Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;
.super Ljava/lang/Object;
.source "OccupiedProvince.java"


# instance fields
.field public p:I

.field public sinceTurnID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->p:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/rebels/OccupiedProvince;->sinceTurnID:I

    return-void
.end method
