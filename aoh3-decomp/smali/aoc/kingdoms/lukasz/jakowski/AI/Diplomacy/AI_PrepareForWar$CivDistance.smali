.class public Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;
.super Ljava/lang/Object;
.source "AI_PrepareForWar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CivDistance"
.end annotation


# instance fields
.field public civID:I

.field public distance:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->civID:I

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Diplomacy/AI_PrepareForWar$CivDistance;->distance:F

    return-void
.end method
