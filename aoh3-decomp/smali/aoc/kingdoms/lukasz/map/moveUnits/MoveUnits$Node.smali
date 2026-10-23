.class public Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
.super Ljava/lang/Object;
.source "MoveUnits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation


# instance fields
.field gCost:F

.field hCost:F

.field parent:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

.field provinceID:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    iput-object p3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->parent:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    iput p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->gCost:F

    iput p5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->hCost:F

    return-void
.end method


# virtual methods
.method public getFCost()F
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->gCost:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->hCost:F

    add-float/2addr v0, v1

    return v0
.end method
