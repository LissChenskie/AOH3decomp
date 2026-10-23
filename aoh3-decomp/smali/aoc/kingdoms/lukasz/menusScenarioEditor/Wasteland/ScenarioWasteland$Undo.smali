.class public Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;
.super Ljava/lang/Object;
.source "ScenarioWasteland.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Undo"
.end annotation


# instance fields
.field public iProvinceID:I

.field public iState:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;->iProvinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;->iState:I

    return-void
.end method
