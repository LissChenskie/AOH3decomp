.class public Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;
.super Ljava/lang/Object;
.source "TechnologyTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/technology/TechnologyTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unit"
.end annotation


# instance fields
.field public armyID:I

.field public unitID:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->unitID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Unit;->armyID:I

    return-void
.end method
