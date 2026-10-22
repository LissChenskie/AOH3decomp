.class public Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;
.super Ljava/lang/Object;
.source "AI_ValuesConvert.java"


# instance fields
.field public BUILD_SCORE_MIN:F

.field public SCORE_DISTANCE_FROM_CAPITAL:F

.field public SCORE_PER_ECONOMY:F

.field public SCORE_PER_GROWTH_RATE:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x461c4000    # 10000.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;->BUILD_SCORE_MIN:F

    const/high16 v0, -0x3c860000    # -250.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;->SCORE_DISTANCE_FROM_CAPITAL:F

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;->SCORE_PER_GROWTH_RATE:F

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesConvert;->SCORE_PER_ECONOMY:F

    return-void
.end method
