.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;
.super Ljava/lang/Object;
.source "EditorMapOptimizationRegions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoOptimizationRegions"
.end annotation


# instance fields
.field public iProvinceID:I

.field public iRegionID:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;->iProvinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$UndoOptimizationRegions;->iRegionID:I

    return-void
.end method
