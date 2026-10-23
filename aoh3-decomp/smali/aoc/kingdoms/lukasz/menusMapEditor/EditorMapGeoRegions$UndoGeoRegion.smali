.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions$UndoGeoRegion;
.super Ljava/lang/Object;
.source "EditorMapGeoRegions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoGeoRegion"
.end annotation


# instance fields
.field protected iGeoRegion:I

.field protected iProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions$UndoGeoRegion;->iProvinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions$UndoGeoRegion;->iGeoRegion:I

    return-void
.end method
