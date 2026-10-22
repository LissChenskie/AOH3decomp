.class public Laoc/kingdoms/lukasz/map/army/ArmyPosition;
.super Ljava/lang/Object;
.source "ArmyPosition.java"


# instance fields
.field public key:Ljava/lang/String;

.field public provinceID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->key:Ljava/lang/String;

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyPosition;->provinceID:I

    return-void
.end method
