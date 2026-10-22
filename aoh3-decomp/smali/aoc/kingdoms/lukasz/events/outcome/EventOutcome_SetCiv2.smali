.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_SetCiv2.java"


# instance fields
.field public fromCivTAG:Ljava/lang/String;

.field public toCivTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;->fromCivTAG:Ljava/lang/String;

    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;->toCivTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->government:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;->fromCivTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;->toCivTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCiv(II)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;->fromCivTAG:Ljava/lang/String;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;->toCivTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setCivTag(Ljava/lang/String;)V

    new-instance p2, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2$1;

    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;->toCivTag:Ljava/lang/String;

    invoke-direct {p2, p0, v0, p1}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2$1;-><init>(Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;Ljava/lang/String;I)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
