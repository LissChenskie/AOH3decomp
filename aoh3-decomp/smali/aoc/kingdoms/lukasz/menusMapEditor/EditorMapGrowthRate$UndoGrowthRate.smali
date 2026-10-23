.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;
.super Ljava/lang/Object;
.source "EditorMapGrowthRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoGrowthRate"
.end annotation


# instance fields
.field public fGrowthRate:F

.field public iProvinceID:I


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;->iProvinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;->fGrowthRate:F

    return-void
.end method
