.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AddVariable.java"


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public updateCiv(II)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    iget-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
