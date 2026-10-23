.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_Resource_PriceChangeRandomDown.java"


# instance fields
.field public changePrice:I

.field public changePrice_Min:I

.field public changePrice_Random:I

.field public iResourceID:I

.field public timeInMonths:I

.field public timeInMonths_Min:I

.field public timeInMonths_Random:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 3

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice_Min:I

    iput p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice_Random:I

    const/4 v0, 0x1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->timeInMonths_Min:I

    const/4 v1, 0x0

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->timeInMonths_Random:I

    if-lez p2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    add-int/2addr p2, v0

    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    add-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    iput p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice:I

    if-lez p4, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    add-int/2addr p4, v0

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    :cond_1
    add-int/2addr p3, v1

    iput p3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->timeInMonths:I

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->iResourceID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "PriceChange"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice:I

    if-lez v1, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice:I

    int-to-float v1, v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->timeInMonths:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "APriceModifierIsAppliedUntilX"

    invoke-virtual {v1, v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue1()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->iResourceID:I

    return v0
.end method

.method public getValue2()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice:I

    int-to-float v0, v0

    return v0
.end method

.method public update()V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->iResourcesSize:I

    if-ge v2, v3, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    if-ltz v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget v4, v4, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->RequiredTechID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->iResourceID:I

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice_Min:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice_Random:I

    if-lez v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice_Random:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice:I

    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->timeInMonths_Min:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->timeInMonths_Random:I

    if-lez v2, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->timeInMonths_Random:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->timeInMonths:I

    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->iResourceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->timeInMonths:I

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/map/ResourcesManager;->setPriceChangePerc(IFI)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->PRICE_CHANGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->iResourceID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v3, Lcom/badlogic/gdx/assets/loaders/Wkvw/PZBvyl;->uDTwAFWPFeacTP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice:I

    if-lez v3, :cond_6

    const-string v3, "+"

    goto :goto_2

    :cond_6
    const-string v3, ""

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice:I

    int-to-float v3, v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->iResourceID:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;->changePrice:I

    if-lez v1, :cond_7

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    goto :goto_3

    :cond_7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    :goto_3
    move-object v6, v1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    invoke-virtual {v0, v7}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method
