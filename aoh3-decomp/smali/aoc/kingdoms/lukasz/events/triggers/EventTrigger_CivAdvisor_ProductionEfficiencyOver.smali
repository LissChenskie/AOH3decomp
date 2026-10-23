.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_CivAdvisor_ProductionEfficiencyOver.java"


# instance fields
.field public advisorType:I

.field public value:F


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;->advisorType:I

    iput p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;->value:F

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;->advisorType:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorGroupName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProductionEfficiency"

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

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;->value:F

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
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;->advisorType:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const-string v1, ": "

    const-string v2, "Currently"

    const-string v3, " ["

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "NoAdvisor"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;->advisorType:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outCondition(II)Z
    .locals 1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;->advisorType:I

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;->advisorType:I

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object p1

    iget p1, p1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ProductionEfficiency:F

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;->value:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
