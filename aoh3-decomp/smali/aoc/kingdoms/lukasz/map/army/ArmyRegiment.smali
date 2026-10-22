.class public Laoc/kingdoms/lukasz/map/army/ArmyRegiment;
.super Ljava/lang/Object;
.source "ArmyRegiment.java"


# instance fields
.field public aID:I

.field public key:Ljava/lang/String;

.field public mo:F

.field public num:I

.field public uID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    iget-object v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->k:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->u:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->a:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->n:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->m:F

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    return-void
.end method
