.class public Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;
.super Ljava/lang/Object;
.source "DiplomacyEspionageMission.java"


# instance fields
.field public iCivID:I

.field public iReportExpiresTurnID:I

.field public iReportTurnID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iCivID:I

    iput p2, p0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->spy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Spy;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Spy;->SEND_SPY_REPORT_ACTIVE:I

    add-int/2addr p2, p1

    iput p2, p0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportExpiresTurnID:I

    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyEspionageMission;->iReportTurnID:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
