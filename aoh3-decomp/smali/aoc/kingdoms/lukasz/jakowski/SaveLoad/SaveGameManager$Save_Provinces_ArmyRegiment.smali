.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Save_Provinces_ArmyRegiment"
.end annotation


# instance fields
.field public a:I

.field public k:Ljava/lang/String;

.field public m:F

.field public n:I

.field public u:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->k:Ljava/lang/String;

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->u:I

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->a:I

    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->n:I

    iget p1, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->m:F

    return-void
.end method
