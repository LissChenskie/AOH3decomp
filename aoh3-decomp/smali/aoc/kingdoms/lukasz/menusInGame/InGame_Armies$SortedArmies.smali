.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;
.super Ljava/lang/Object;
.source "InGame_Armies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortedArmies"
.end annotation


# instance fields
.field public iArmyID:I

.field public iProvinceID:I

.field public sortKey:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    iput p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->sortKey:I

    return-void
.end method
