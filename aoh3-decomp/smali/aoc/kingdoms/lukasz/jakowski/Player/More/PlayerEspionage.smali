.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;
.super Ljava/lang/Object;
.source "PlayerEspionage.java"


# instance fields
.field public espionageMissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;",
            ">;"
        }
    .end annotation
.end field

.field public iEspionageMissionsSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    return-void
.end method


# virtual methods
.method public final addEspionageMission(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3, p1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->sendSpyTime(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, p1, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    return-void
.end method

.method public final clearEspionageMissions()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    return-void
.end method

.method public final espionageMission_IsAdded(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final espionageMission_ReportEndTurn(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget p1, p1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportExpiresTurnID:I

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final removeEspionageMission(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeExpiredEspionageMissions()V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;

    iget v1, v1, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportExpiresTurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->espionageMissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerEspionage;->iEspionageMissionsSize:I

    :cond_2
    return-void
.end method
