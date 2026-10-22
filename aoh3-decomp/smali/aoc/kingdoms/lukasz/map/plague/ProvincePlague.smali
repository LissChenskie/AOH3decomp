.class public Laoc/kingdoms/lukasz/map/plague/ProvincePlague;
.super Ljava/lang/Object;
.source "ProvincePlague.java"


# instance fields
.field public deaths:I

.field public id:I

.field public sinceTurnID:I

.field public turnsLeft:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->sinceTurnID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    return-void
.end method

.method public constructor <init>(IIFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->sinceTurnID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    iput p4, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    return-void
.end method
