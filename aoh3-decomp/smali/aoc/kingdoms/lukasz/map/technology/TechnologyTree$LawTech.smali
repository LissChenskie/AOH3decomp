.class public Laoc/kingdoms/lukasz/map/technology/TechnologyTree$LawTech;
.super Ljava/lang/Object;
.source "TechnologyTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/technology/TechnologyTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LawTech"
.end annotation


# instance fields
.field public law:I

.field public lawID:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$LawTech;->law:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$LawTech;->lawID:I

    return-void
.end method
