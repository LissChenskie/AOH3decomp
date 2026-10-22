.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AddRuler.java"


# instance fields
.field public BornDay:I

.field public BornMonth:I

.field public BornYear:I

.field public imageID:Ljava/lang/String;

.field public sName:Ljava/lang/String;

.field public sSurname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sName:Ljava/lang/String;

    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sSurname:Ljava/lang/String;

    iput-object p3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->imageID:Ljava/lang/String;

    iput p4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornDay:I

    iput p5, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornMonth:I

    iput p6, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornYear:I

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->council:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Ruler"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sSurname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCiv(II)V
    .locals 12

    const-string p2, ""

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornYear:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sub-int/2addr v1, v0

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sub-int/2addr v1, v0

    const/16 v2, 0x63

    if-le v1, v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_MIN:I

    sub-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_RANDOM:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :goto_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    new-instance v11, Laoc/kingdoms/lukasz/map/Ruler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sSurname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->imageID:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornDay:I

    iget v6, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornMonth:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    move v2, p1

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/map/Ruler;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIZZ)V

    iput-object v11, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
