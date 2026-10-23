.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;
.super Ljava/lang/Object;
.source "AI_RecruitArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecruitArmy_ExistingArmy"
.end annotation


# instance fields
.field public armyID:I

.field public provinceID:I

.field public regimentsSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->regimentsSize:I

    return-void
.end method
