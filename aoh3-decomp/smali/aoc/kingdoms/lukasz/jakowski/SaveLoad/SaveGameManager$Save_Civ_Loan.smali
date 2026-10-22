.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Save_Civ_Loan"
.end annotation


# instance fields
.field public c:I

.field public e:I

.field public l:F

.field public n:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILaoc/kingdoms/lukasz/map/Loan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->c:I

    iget p1, p2, Laoc/kingdoms/lukasz/map/Loan;->fLoanValue:F

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->l:F

    iget p1, p2, Laoc/kingdoms/lukasz/map/Loan;->fInterestPerMonth:F

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->n:F

    iget p1, p2, Laoc/kingdoms/lukasz/map/Loan;->iExpires_TurnID:I

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_Loan;->e:I

    return-void
.end method
