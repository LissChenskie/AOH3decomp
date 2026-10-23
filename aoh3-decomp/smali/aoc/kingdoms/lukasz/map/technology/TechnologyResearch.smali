.class public Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;
.super Ljava/lang/Object;
.source "TechnologyResearch.java"


# instance fields
.field public fProgress:F

.field public iTechID:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    iput p1, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->iTechID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyResearch;->fProgress:F

    return-void
.end method
