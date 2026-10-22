.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents$UndoContinent;
.super Ljava/lang/Object;
.source "EditorMapContinents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoContinent"
.end annotation


# instance fields
.field protected iContinentID:I

.field protected iProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents$UndoContinent;->iProvinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents$UndoContinent;->iContinentID:I

    return-void
.end method
