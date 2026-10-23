.class public Laoc/kingdoms/lukasz/map/army/ArmyRecruit;
.super Ljava/lang/Object;
.source "ArmyRecruit.java"


# instance fields
.field public armyID:I

.field public cost:I

.field public provinceID:I

.field public timeLeft:I

.field public toArmyKey:Ljava/lang/String;

.field public unitID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    iput-object p4, p0, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->toArmyKey:Ljava/lang/String;

    return-void
.end method
