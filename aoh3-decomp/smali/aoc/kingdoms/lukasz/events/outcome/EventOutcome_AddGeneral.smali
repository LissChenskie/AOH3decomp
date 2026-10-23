.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AddGeneral.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->general:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "RecruitGeneral"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public updateCiv(II)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p2

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->getGeneral_Random(I)Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    move-result-object p1

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
