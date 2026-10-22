.class public Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
.super Ljava/lang/Object;
.source "ArmyGeneral.java"


# instance fields
.field private at:I

.field public c:I

.field public d:I

.field private df:I

.field private e:I

.field public g:I

.field public key:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public sI:Ljava/lang/String;

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    iput-object p7, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    iput p3, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    iput p4, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    iput p5, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    iput p6, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->c:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDaysInMonth(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_NEW_GENERAL_MIN:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget p3, p3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_NEW_GENERAL_RANDOM:I

    invoke-virtual {p2, p3}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCombatExperience(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_MAX:I

    if-lt v0, p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_INCREASE_ATTACK_CHANCE:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_MAX_ATTACK:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    goto :goto_0

    :cond_0
    iget p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_MAX_DEFENSE:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    :cond_1
    :goto_0
    iget p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_MAX:I

    sub-int/2addr p1, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->COMBAT_EXPERIENCE_MAX:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    :cond_2
    return-void
.end method

.method public getAttack()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->at:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->c:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCombatExperience()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->e:I

    return v0
.end method

.method public getDefense()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->df:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->c:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    add-int/2addr v0, v1

    return v0
.end method
