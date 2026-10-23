.class public Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;
.super Ljava/lang/Object;
.source "ProvinceBorderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBData"
.end annotation


# instance fields
.field public iProvinceID:I

.field public iWithProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iWithProvinceID:I

    return-void
.end method
