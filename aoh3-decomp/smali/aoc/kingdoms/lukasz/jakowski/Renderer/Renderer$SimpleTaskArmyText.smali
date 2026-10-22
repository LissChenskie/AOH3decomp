.class public Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;
.super Ljava/lang/Object;
.source "Renderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleTaskArmyText"
.end annotation


# instance fields
.field public armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

.field public taskKey:Ljava/lang/String;

.field public updateShift:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Laoc/kingdoms/lukasz/map/army/ArmyDivision;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->taskKey:Ljava/lang/String;

    iput-object p2, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iput-boolean p3, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->updateShift:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->taskKey:Ljava/lang/String;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->taskKey:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->armyDivision:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer$SimpleTaskArmyText;->updateShift:Z

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->updateArmyWidth_Just(Z)V

    return-void
.end method
