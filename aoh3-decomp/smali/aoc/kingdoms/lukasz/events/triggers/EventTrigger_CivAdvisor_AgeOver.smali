.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_CivAdvisor_AgeOver.java"


# instance fields
.field public advisorType:I

.field public value:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;->advisorType:I

    iput p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;->value:I

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->council:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;->advisorType:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorGroupName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Age"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;->value:I

    int-to-float v1, v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText3()Ljava/lang/String;
    .locals 6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;->advisorType:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const-string v1, "]"

    const-string v2, ": "

    const-string v3, "Currently"

    const-string v4, " ["

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "NoAdvisor"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v5, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;->advisorType:I

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    sub-int/2addr v3, v4

    const-string v4, "XYearsOld"

    invoke-virtual {v2, v4, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outCondition(II)Z
    .locals 2

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;->advisorType:I

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    sget p2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;->advisorType:I

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iYearOfBirth:I

    sub-int/2addr p2, p1

    iget p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;->value:I

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
