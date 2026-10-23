.class public Laoc/kingdoms/lukasz/map/diplomacy/Vassal;
.super Ljava/lang/Object;
.source "Vassal.java"


# instance fields
.field public c:I

.field public cW:Z

.field public lD:F

.field public mL:I

.field public tL:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->c:I

    const/4 p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_MANPOWER_TO_LORD:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->setManpower(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_INCOME_TO_LORD:[F

    array-length v0, v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->setTribute(I)V

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-boolean p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_CAN_DECLARE_WAR_DEFAULT:Z

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->cW:Z

    return-void
.end method


# virtual methods
.method public setLibertyDesire_Change(F)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->LIBERTY_DESIRE_MIN:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->LIBERTY_DESIRE_MAX:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->lD:F

    return-void
.end method

.method public final setManpower(I)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_MANPOWER_TO_LORD:[F

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput v2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    iget p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final setTribute(I)V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->vassal:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Vassal;->VASSAL_INCOME_TO_LORD:[F

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->tL:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    iget p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Vassal;->mL:I

    :cond_1
    :goto_0
    return-void
.end method
