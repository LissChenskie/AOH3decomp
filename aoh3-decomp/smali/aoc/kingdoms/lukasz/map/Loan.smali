.class public Laoc/kingdoms/lukasz/map/Loan;
.super Ljava/lang/Object;
.source "Loan.java"


# instance fields
.field public fInterestPerMonth:F

.field public fLoanValue:F

.field public iExpires_TurnID:I


# direct methods
.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/map/Loan;->fLoanValue:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanExpires()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/Loan;->iExpires_TurnID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanMonthlyExpenses(F)F

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->l:F

    iput v0, p0, Laoc/kingdoms/lukasz/map/Loan;->fLoanValue:F

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->e:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/Loan;->iExpires_TurnID:I

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->n:F

    iput p1, p0, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    return-void
.end method


# virtual methods
.method public getLoanValueLeft()F
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/map/Loan;->fLoanValue:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/Loan;->iExpires_TurnID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getLoanExpires()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    return v0
.end method
