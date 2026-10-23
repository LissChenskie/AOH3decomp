.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;
.super Ljava/lang/Object;
.source "CivilizationsNeighbors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CivNeighbor"
.end annotation


# instance fields
.field public byLand:Z

.field public civID:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->this$0:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;IZ)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->this$0:Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->civID:I

    iput-boolean p3, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationsNeighbors$CivNeighbor;->byLand:Z

    return-void
.end method
