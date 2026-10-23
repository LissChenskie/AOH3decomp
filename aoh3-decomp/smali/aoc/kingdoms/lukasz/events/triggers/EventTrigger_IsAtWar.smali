.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsAtWar;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_IsAtWar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->war:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "IaAtWar"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getText3()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public outCondition(II)Z
    .locals 0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result p1

    return p1
.end method
