.class public Laoc/kingdoms/lukasz/map/army/ArmyPositionSize;
.super Ljava/lang/Object;
.source "ArmyPositionSize.java"


# instance fields
.field public armySize:I

.field public key:Ljava/lang/String;

.field public provinceID:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyPositionSize;->key:Ljava/lang/String;

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyPositionSize;->provinceID:I

    iput p3, p0, Laoc/kingdoms/lukasz/map/army/ArmyPositionSize;->armySize:I

    return-void
.end method
