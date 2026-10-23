.class public Laoc/kingdoms/lukasz/events/EventsManager;
.super Ljava/lang/Object;
.source "EventsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;
    }
.end annotation


# static fields
.field public static eventIMG:Laoc/kingdoms/lukasz/textures/Image; = null

.field public static events:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static eventsGlobal:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static eventsGlobalScenario:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables; = null

.field public static eventsScenario:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static eventsSiege:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static eventsSiegeScenario:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static exactDate_Events:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;",
            ">;"
        }
    .end annotation
.end field

.field public static exactDate_EventsScenario:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;",
            ">;"
        }
    .end annotation
.end field

.field public static iEventsGlobalScenarioSize:I = 0x0

.field public static iEventsGlobalSize:I = 0x0

.field public static iEventsScenarioSize:I = 0x0

.field public static iEventsSiegeScenarioSize:I = 0x0

.field public static iEventsSiegeSize:I = 0x0

.field public static iEventsSize:I = 0x0

.field public static loadScenarioEventsTag:Ljava/lang/String; = null

.field public static loadedEventIMG:Ljava/lang/String; = ""

.field public static missionImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public static runEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static runEventGlobalID:I

.field public static runEventGlobalID_Scenario:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeScenarioSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    new-instance v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearEventsScenario()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeScenarioSize:I

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    return-object p0

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    return-object p0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    return-object p0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    return-object p0

    :cond_3
    sget-object p1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    return-object p0

    :cond_4
    sget-object p1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    return-object p0

    :cond_5
    sget-object p1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    return-object p0
.end method

.method public static loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    .locals 35

    move/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_25

    new-instance v5, Laoc/kingdoms/lukasz/events/Event;

    invoke-direct {v5}, Laoc/kingdoms/lukasz/events/Event;-><init>()V

    new-instance v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-direct {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;-><init>()V

    new-instance v7, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-direct {v7}, Laoc/kingdoms/lukasz/events/EventOption;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_28

    move v13, v4

    move v14, v13

    move v15, v14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v9, v3, :cond_1d

    :try_start_1
    aget-object v8, v2, v9

    const-string v4, "="

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v8, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_27

    const/16 v20, 0x7

    const/16 v21, 0x6

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/map/plague/KMTV/fTNtCctcBZcqKK;->mqzixiaJDDtJK:Ljava/lang/String;

    const/16 v22, -0x1

    move/from16 v23, v3

    const/4 v3, 0x1

    if-ne v8, v3, :cond_10

    const/4 v3, 0x0

    :try_start_2
    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    if-lez v8, :cond_f

    const/4 v8, 0x0

    sget-object v8, Laoc/kingdoms/lukasz/menu/FQy/TGqtTWl;->ApmGi:Ljava/lang/String;

    const-string v3, "next_and"

    move/from16 v24, v13

    const-string v13, "next_or_not"

    move/from16 v25, v14

    const/4 v14, 0x0

    sget-object v14, Landroidx/core/internal/oiV/CoLRpi;->jowBJYhxJ:Ljava/lang/String;

    if-eqz v11, :cond_1

    move/from16 v26, v15

    const/16 v18, 0x0

    :try_start_3
    aget-object v15, v4, v18

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v27
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    sparse-switch v27, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    :try_start_4
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v19, v21

    goto :goto_2

    :sswitch_1
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v19, 0x4

    goto :goto_2

    :sswitch_2
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move/from16 v19, v20

    goto :goto_2

    :sswitch_3
    const-string v3, "trigger_or_not_end"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v19, 0x3

    goto :goto_2

    :sswitch_4
    const-string v3, "trigger_and_not_end"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v19, 0x1

    goto :goto_2

    :sswitch_5
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v19, 0x5

    goto :goto_2

    :sswitch_6
    const-string v3, "trigger_or_end"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v19, 0x2

    goto :goto_2

    :sswitch_7
    const-string v3, "trigger_and_end"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v3, :cond_0

    const/16 v19, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_1
    move/from16 v19, v22

    :goto_2
    packed-switch v19, :pswitch_data_0

    move/from16 v15, v17

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :pswitch_0
    move/from16 v15, v17

    const/16 v16, 0x3

    goto :goto_4

    :pswitch_1
    move/from16 v15, v17

    const/16 v16, 0x2

    goto :goto_4

    :pswitch_2
    move/from16 v15, v17

    const/16 v16, 0x1

    goto :goto_4

    :pswitch_3
    move/from16 v15, v17

    const/16 v16, 0x0

    goto :goto_4

    :pswitch_4
    move/from16 v15, v17

    :try_start_6
    invoke-virtual {v5, v6, v15}, Laoc/kingdoms/lukasz/events/Event;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v11, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    move/from16 v17, v15

    move/from16 v3, v16

    move/from16 v14, v25

    const/4 v11, 0x0

    goto/16 :goto_d

    :goto_3
    :try_start_7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " MISSING LEN=1 IN TRIGGER -> "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_4
    move/from16 v17, v15

    :goto_5
    move/from16 v14, v25

    move/from16 v15, v26

    goto/16 :goto_16

    :catch_2
    move-exception v0

    move-object v2, v0

    move/from16 v17, v15

    goto :goto_7

    :catch_3
    move-exception v0

    move/from16 v15, v17

    :goto_6
    move-object v2, v0

    :goto_7
    move/from16 v3, v16

    move/from16 v14, v25

    goto/16 :goto_d

    :cond_1
    move/from16 v26, v15

    move/from16 v15, v17

    if-eqz v12, :cond_8

    move/from16 v27, v15

    const/16 v17, 0x0

    :try_start_8
    aget-object v15, v4, v17

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_1

    goto :goto_8

    :sswitch_8
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_9

    :sswitch_9
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_9

    :sswitch_a
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_9

    :sswitch_b
    const-string v3, "option_end"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_9

    :sswitch_c
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_9

    :cond_2
    :goto_8
    move/from16 v3, v22

    :goto_9
    if-eqz v3, :cond_7

    const/4 v8, 0x1

    if-eq v3, v8, :cond_6

    const/4 v8, 0x2

    if-eq v3, v8, :cond_5

    const/4 v8, 0x3

    if-eq v3, v8, :cond_4

    const/4 v8, 0x4

    if-eq v3, v8, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " MISSING LEN=1 IN TRIGGER -> "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_a

    :cond_3
    const/16 v16, 0x3

    goto :goto_a

    :cond_4
    const/16 v16, 0x2

    goto :goto_a

    :cond_5
    const/16 v16, 0x1

    goto :goto_a

    :cond_6
    const/16 v16, 0x0

    goto :goto_a

    :cond_7
    :try_start_9
    iget-object v2, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    const/4 v12, 0x0

    :goto_a
    move/from16 v14, v25

    move/from16 v15, v26

    goto/16 :goto_15

    :catch_4
    move-exception v0

    move-object v2, v0

    move/from16 v3, v16

    move/from16 v14, v25

    move/from16 v17, v27

    const/4 v12, 0x0

    goto/16 :goto_d

    :cond_8
    move/from16 v27, v15

    const/4 v3, 0x0

    :try_start_a
    aget-object v8, v4, v3

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto :goto_b

    :sswitch_d
    const-string v3, "option_btn"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    goto :goto_c

    :sswitch_e
    const-string v3, "trigger_or"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x2

    goto :goto_c

    :sswitch_f
    const-string v3, "trigger_or_not"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    goto :goto_c

    :sswitch_10
    const-string v3, "trigger_and_not"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_c

    :sswitch_11
    const-string v3, "trigger_and"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    goto :goto_c

    :cond_9
    :goto_b
    move/from16 v3, v22

    :goto_c
    if-eqz v3, :cond_e

    const/4 v8, 0x1

    if-eq v3, v8, :cond_d

    const/4 v8, 0x2

    if-eq v3, v8, :cond_c

    const/4 v8, 0x3

    if-eq v3, v8, :cond_b

    const/4 v8, 0x4

    if-eq v3, v8, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    sget-object v8, Lcom/badlogic/gdx/assets/loaders/Wkvw/PZBvyl;->dzO:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v8, 0x0

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move/from16 v17, v27

    goto/16 :goto_5

    :cond_a
    :try_start_b
    new-instance v2, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/EventOption;-><init>()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    move-object v7, v2

    move/from16 v17, v27

    const/4 v12, 0x1

    goto/16 :goto_5

    :catch_5
    move-exception v0

    move-object v2, v0

    move/from16 v3, v16

    move/from16 v14, v25

    move/from16 v17, v27

    const/4 v12, 0x1

    goto/16 :goto_d

    :cond_b
    :try_start_c
    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;-><init>()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    move-object v6, v2

    const/4 v11, 0x1

    const/16 v17, 0x3

    goto/16 :goto_5

    :catch_6
    move-exception v0

    move-object v2, v0

    move/from16 v3, v16

    move/from16 v14, v25

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x3

    goto/16 :goto_2a

    :cond_c
    :try_start_d
    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move-object v6, v2

    const/4 v11, 0x1

    const/16 v17, 0x2

    goto/16 :goto_5

    :catch_7
    move-exception v0

    move-object v2, v0

    move/from16 v3, v16

    move/from16 v14, v25

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x2

    goto/16 :goto_2a

    :cond_d
    :try_start_e
    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    move-object v6, v2

    const/4 v11, 0x1

    const/16 v17, 0x1

    goto/16 :goto_5

    :catch_8
    move-exception v0

    move-object v2, v0

    move/from16 v3, v16

    move/from16 v14, v25

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x1

    goto/16 :goto_2a

    :cond_e
    :try_start_f
    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    move-object v6, v2

    const/4 v11, 0x1

    const/16 v17, 0x0

    goto/16 :goto_5

    :catch_9
    move-exception v0

    move-object v2, v0

    move/from16 v3, v16

    move/from16 v14, v25

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    goto/16 :goto_2a

    :catch_a
    move-exception v0

    move-object v2, v0

    move/from16 v3, v16

    goto/16 :goto_18

    :cond_f
    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v17

    move v13, v3

    move/from16 v3, v16

    goto/16 :goto_27

    :catch_b
    move-exception v0

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v17

    move-object v2, v0

    move/from16 v3, v16

    :goto_d
    const/4 v13, 0x0

    goto/16 :goto_2a

    :cond_10
    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v27, v17

    :try_start_10
    array-length v3, v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_26

    const/4 v8, 0x1

    if-le v3, v8, :cond_1b

    const/16 v13, 0x28

    const/16 v14, 0x9e

    const/16 v15, 0x17

    const/16 v17, 0x9

    const/16 v28, 0x8

    if-eqz v11, :cond_13

    const/16 v18, 0x0

    :try_start_11
    aget-object v3, v4, v18

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v30
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    sparse-switch v30, :sswitch_data_3

    goto/16 :goto_e

    :sswitch_12
    :try_start_12
    const-string v8, "civ_manpower_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x99

    goto/16 :goto_f

    :sswitch_13
    const-string v8, "civ_vassals_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x6d

    goto/16 :goto_f

    :sswitch_14
    const-string v8, "civ_defensive_pacts_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x69

    goto/16 :goto_f

    :sswitch_15
    const-string v8, "civ_allies_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x67

    goto/16 :goto_f

    :sswitch_16
    const-string v8, "civ_inflation_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa6

    goto/16 :goto_f

    :sswitch_17
    const-string v8, "province_income_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x1d

    goto/16 :goto_f

    :sswitch_18
    const-string v8, "province_economy_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x12

    goto/16 :goto_f

    :sswitch_19
    const-string v8, "civs_have_defensive_pact"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd0

    goto/16 :goto_f

    :sswitch_1a
    const-string v8, "civ_is_at_war"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xbc

    goto/16 :goto_f

    :sswitch_1b
    const-string v8, "civ_have_guarantee"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd4

    goto/16 :goto_f

    :sswitch_1c
    const-string v8, "civ_manpower_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x9a

    goto/16 :goto_f

    :sswitch_1d
    const-string v8, "civ_capital_city_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x82

    goto/16 :goto_f

    :sswitch_1e
    const-string v8, "civ_has_rivalry_not"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xca

    goto/16 :goto_f

    :sswitch_1f
    const-string v8, "civ_military_advisor_skill_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x95

    goto/16 :goto_f

    :sswitch_20
    const-string v8, "civ_income_taxation_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb7

    goto/16 :goto_f

    :sswitch_21
    const-string v8, "recruited_advisors_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa4

    goto/16 :goto_f

    :sswitch_22
    const-string v8, "province_income_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x1c

    goto/16 :goto_f

    :sswitch_23
    const/4 v8, 0x0

    sget-object v8, Lcom/badlogic/gdx/backends/android/Zrdz/PxHJ;->yzVAvLXLL:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x72

    goto/16 :goto_f

    :sswitch_24
    const-string v8, "civ_largest_producer_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x9f

    goto/16 :goto_f

    :sswitch_25
    const-string v8, "civ_total_income_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xae

    goto/16 :goto_f

    :sswitch_26
    const-string v8, "civ_research_per_month_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb4

    goto/16 :goto_f

    :sswitch_27
    const-string v8, "largest_producer_production_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa0

    goto/16 :goto_f

    :sswitch_28
    const-string v8, "civ_is_largest_producer"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa1

    goto/16 :goto_f

    :sswitch_29
    const-string v8, "civ_gold_over_max_amount_of_gold"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x8d

    goto/16 :goto_f

    :sswitch_2a
    const-string v8, "civ_gold_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x63

    goto/16 :goto_f

    :sswitch_2b
    const-string v8, "province_is_capital"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x30

    goto/16 :goto_f

    :sswitch_2c
    const-string v8, "developed_infrastructure_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x4

    goto/16 :goto_f

    :sswitch_2d
    const-string v8, "civ_regiments_over_regiments_limit"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x8c

    goto/16 :goto_f

    :sswitch_2e
    const-string v8, "civ_capital_economy_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x51

    goto/16 :goto_f

    :sswitch_2f
    const-string v8, "civ_production_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x11

    goto/16 :goto_f

    :sswitch_30
    const-string v8, "random_chance"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    goto/16 :goto_f

    :sswitch_31
    const-string v8, "civ_has_larger_regiments_limit_than_civ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc4

    goto/16 :goto_f

    :sswitch_32
    const-string v8, "administrative_buildings_constructed_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x36

    goto/16 :goto_f

    :sswitch_33
    const-string v8, "civs_have_non_aggression"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd1

    goto/16 :goto_f

    :sswitch_34
    const-string v8, "civ_diplomacy_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb0

    goto/16 :goto_f

    :sswitch_35
    const-string v8, "province_unrest_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x20

    goto/16 :goto_f

    :sswitch_36
    const-string v8, "increased_tax_efficiency_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb

    goto/16 :goto_f

    :sswitch_37
    const-string v8, "civ_economy_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x48

    goto/16 :goto_f

    :sswitch_38
    const-string v8, "province_buildings_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x24

    goto/16 :goto_f

    :sswitch_39
    const-string v8, "province_buildings_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x25

    goto/16 :goto_f

    :sswitch_3a
    const-string v8, "civ_has_more_technologies_than_civ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc7

    goto/16 :goto_f

    :sswitch_3b
    const-string v8, "province_population_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x18

    goto/16 :goto_f

    :sswitch_3c
    const-string v8, "civ_supreme_court_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x85

    goto/16 :goto_f

    :sswitch_3d
    const-string v8, "civs_opinion_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xcf

    goto/16 :goto_f

    :sswitch_3e
    const-string v8, "province_infrastructure_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x23

    goto/16 :goto_f

    :sswitch_3f
    const-string v8, "invested_in_economy_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    goto/16 :goto_f

    :sswitch_40
    const-string v8, "civ_capital_manpower_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x53

    goto/16 :goto_f

    :sswitch_41
    const-string v8, "civ_capital_unrest_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x55

    goto/16 :goto_f

    :sswitch_42
    const-string v8, "civ_has_resource_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x10

    goto/16 :goto_f

    :sswitch_43
    const-string v8, "is_not_puppet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xda

    goto/16 :goto_f

    :sswitch_44
    const-string v8, "civ_regiments_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x8b

    goto/16 :goto_f

    :sswitch_45
    const-string v8, "province_growth_rate_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x15

    goto/16 :goto_f

    :sswitch_46
    const-string v8, "is_not_player"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xdc

    goto/16 :goto_f

    :sswitch_47
    const-string v8, "province_economy_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x13

    goto/16 :goto_f

    :sswitch_48
    const-string v8, "civ_capital_is_occupied"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x60

    goto/16 :goto_f

    :sswitch_49
    const-string v8, "unique_capital_buildings_constructed_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x3c

    goto/16 :goto_f

    :sswitch_4a
    const-string v8, "province_growth_rate_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x14

    goto/16 :goto_f

    :sswitch_4b
    const-string v8, "civ_loans_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xac

    goto/16 :goto_f

    :sswitch_4c
    const/4 v8, 0x0

    sget-object v8, Lcom/google/android/gms/internal/common/oss/ClXgFvsSKQc;->ISfNh:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x7a

    goto/16 :goto_f

    :sswitch_4d
    const-string v8, "civ_capital_has_building"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x2c

    goto/16 :goto_f

    :sswitch_4e
    const-string v8, "civ_unlocked_advantages_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x76

    goto/16 :goto_f

    :sswitch_4f
    const-string v8, "civ_regiments_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x8a

    goto/16 :goto_f

    :sswitch_50
    const-string v8, "civ_wars_total_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move/from16 v3, v20

    goto/16 :goto_f

    :sswitch_51
    const-string v8, "civ_loans_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xad

    goto/16 :goto_f

    :sswitch_52
    const-string v8, "civ_capital_growth_rate_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x57

    goto/16 :goto_f

    :sswitch_53
    const-string v8, "civ_provinces_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x43

    goto/16 :goto_f

    :sswitch_54
    const-string v8, "alliance_special_is_member_id"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xaa

    goto/16 :goto_f

    :sswitch_55
    const-string v8, "province_defense_lvl_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x26

    goto/16 :goto_f

    :sswitch_56
    const-string v8, "civ_government_is"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x66

    goto/16 :goto_f

    :sswitch_57
    const-string v8, "civ_provinces_equals"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x45

    goto/16 :goto_f

    :sswitch_58
    const-string v8, "civ_advisor_age_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x96

    goto/16 :goto_f

    :sswitch_59
    const-string v8, "civ_capital_manpower_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x52

    goto/16 :goto_f

    :sswitch_5a
    const-string v8, "administrative_buildings_constructed_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x37

    goto/16 :goto_f

    :sswitch_5b
    const-string v8, "civ_capital_growth_rate_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x56

    goto/16 :goto_f

    :sswitch_5c
    const-string v8, "civ_nuclear_reactor_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x86

    goto/16 :goto_f

    :sswitch_5d
    const-string v8, "civ_is_not_at_war"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xbd

    goto/16 :goto_f

    :sswitch_5e
    const-string v8, "alliance_special_is_leader_id"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa9

    goto/16 :goto_f

    :sswitch_5f
    const-string v8, "civ_non_aggression_pacts_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x6b

    goto/16 :goto_f

    :sswitch_60
    const-string v8, "civ_unlocked_technologies_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x73

    goto/16 :goto_f

    :sswitch_61
    const-string v8, "civ_military_academy_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x7f

    goto/16 :goto_f

    :sswitch_62
    const-string v8, "increased_growth_rate_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa

    goto/16 :goto_f

    :sswitch_63
    const-string v8, "civ_conquered_provinces_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x5

    goto/16 :goto_f

    :sswitch_64
    const-string v8, "civ_capital_religion_is"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x2d

    goto/16 :goto_f

    :sswitch_65
    const-string v8, "civ_income_taxation_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb6

    goto/16 :goto_f

    :sswitch_66
    const-string v8, "increased_growth_rate_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move/from16 v3, v17

    goto/16 :goto_f

    :sswitch_67
    const-string v8, "civ_legacy_per_month_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb3

    goto/16 :goto_f

    :sswitch_68
    const-string v8, "civ_is_vassal_of_civ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xcb

    goto/16 :goto_f

    :sswitch_69
    const-string v8, "exists_any"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xdf

    goto/16 :goto_f

    :sswitch_6a
    const-string v8, "alliance_special_is_leader"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa8

    goto/16 :goto_f

    :sswitch_6b
    const-string v8, "civ_is_at_war_days_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xbe

    goto/16 :goto_f

    :sswitch_6c
    const-string v8, "civ_nuclear_reactor_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x87

    goto/16 :goto_f

    :sswitch_6d
    const-string v8, "civ_religion_is"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x65

    goto/16 :goto_f

    :sswitch_6e
    const/4 v8, 0x0

    sget-object v8, Laoc/kingdoms/lukasz/map/plague/KMTV/fTNtCctcBZcqKK;->OrpkDbHmSd:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x1a

    goto/16 :goto_f

    :sswitch_6f
    const-string v8, "civ_capital_tax_efficiency_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x4d

    goto/16 :goto_f

    :sswitch_70
    const-string v8, "civ_capital_is_under_siege"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x62

    goto/16 :goto_f

    :sswitch_71
    const-string v8, "civ_income_economy_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb9

    goto/16 :goto_f

    :sswitch_72
    const-string v8, "civ_total_income_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xaf

    goto/16 :goto_f

    :sswitch_73
    const-string v8, "civs_are_rivals"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc8

    goto/16 :goto_f

    :sswitch_74
    const-string v8, "civ_neighbors_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x6f

    goto/16 :goto_f

    :sswitch_75
    const-string v8, "civ_population_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x46

    goto/16 :goto_f

    :sswitch_76
    const-string v8, "civ_research_per_month_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb5

    goto/16 :goto_f

    :sswitch_77
    const/4 v8, 0x0

    sget-object v8, Landroidx/arch/core/ht/qIuEvFbUtcea;->DMD:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x19

    goto/16 :goto_f

    :sswitch_78
    const-string v8, "civ_tag_religion_is"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xe1

    goto/16 :goto_f

    :sswitch_79
    const-string v8, "has_variable"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd6

    goto/16 :goto_f

    :sswitch_7a
    const-string v8, "unique_capital_buildings_constructed_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x3d

    goto/16 :goto_f

    :sswitch_7b
    const-string v8, "civ_non_aggression_pacts_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x6c

    goto/16 :goto_f

    :sswitch_7c
    const-string v8, "buildings_constructed_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x35

    goto/16 :goto_f

    :sswitch_7d
    const-string v8, "civ_legacy_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa3

    goto/16 :goto_f

    :sswitch_7e
    const-string v8, "civ_tag_government_is_not"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xe4

    goto/16 :goto_f

    :sswitch_7f
    const-string v8, "invested_in_economy_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x2

    goto/16 :goto_f

    :sswitch_80
    const-string v8, "province_manpower_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x1b

    goto/16 :goto_f

    :sswitch_81
    const-string v8, "civ_prestige_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x79

    goto/16 :goto_f

    :sswitch_82
    const-string v8, "civ_military_academy_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x7e

    goto/16 :goto_f

    :sswitch_83
    const-string v8, "civ_income_economy_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb8

    goto/16 :goto_f

    :sswitch_84
    const-string v8, "civ_diplomacy_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb1

    goto/16 :goto_f

    :sswitch_85
    const-string v8, "civ_economic_advisor_skill_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x90

    goto/16 :goto_f

    :sswitch_86
    const-string v8, "playing_time_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x3e

    goto/16 :goto_f

    :sswitch_87
    const-string v8, "civ_regiments_limit_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x88

    goto/16 :goto_f

    :sswitch_88
    const-string v8, "civ_has_larger_economy_than_civ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc3

    goto/16 :goto_f

    :sswitch_89
    const-string v8, "civ_administrative_advisor_skill_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x8e

    goto/16 :goto_f

    :sswitch_8a
    const-string v8, "civ_capital_population_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x5d

    goto/16 :goto_f

    :sswitch_8b
    const-string v8, "province_is_not_occupied"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x32

    goto/16 :goto_f

    :sswitch_8c
    const-string v8, "civ_capital_buildings_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x4b

    goto/16 :goto_f

    :sswitch_8d
    const-string v8, "civ_capital_population_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x5c

    goto/16 :goto_f

    :sswitch_8e
    const-string v8, "civ_capital_continent_is"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x4e

    goto/16 :goto_f

    :sswitch_8f
    const-string v8, "civ_has_resource"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xf

    goto/16 :goto_f

    :sswitch_90
    const-string v8, "civ_rank_position_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x77

    goto/16 :goto_f

    :sswitch_91
    const-string v8, "civ_max_manpower_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x9b

    goto/16 :goto_f

    :sswitch_92
    const-string v8, "exact_day"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x42

    goto/16 :goto_f

    :sswitch_93
    const-string v8, "civs_are_at_war"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xbf

    goto/16 :goto_f

    :sswitch_94
    const-string v8, "military_buildings_constructed_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x3b

    goto/16 :goto_f

    :sswitch_95
    const-string v8, "civ_legacy_per_month_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xb2

    goto/16 :goto_f

    :sswitch_96
    const/4 v8, 0x0

    sget-object v8, Lcom/badlogic/gdx/assets/loaders/Wkvw/nEtnPpUF;->QRZR:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x98

    goto/16 :goto_f

    :sswitch_97
    const-string v8, "civ_economic_advisor_skill_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x91

    goto/16 :goto_f

    :sswitch_98
    const-string v8, "civ_has_more_regiments_than_civ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc5

    goto/16 :goto_f

    :sswitch_99
    const-string v8, "civ_unlocked_technologies_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x74

    goto/16 :goto_f

    :sswitch_9a
    const-string v8, "year_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x40

    goto/16 :goto_f

    :sswitch_9b
    const-string v8, "province_unrest_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x21

    goto/16 :goto_f

    :sswitch_9c
    const-string v8, "is_puppet"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd9

    goto/16 :goto_f

    :sswitch_9d
    const-string v8, "is_player"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xdb

    goto/16 :goto_f

    :sswitch_9e
    const-string v8, "civs_have_truce"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd3

    goto/16 :goto_f

    :sswitch_9f
    const-string v8, "civ_has_more_provinces_than_civ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc1

    goto/16 :goto_f

    :sswitch_a0
    const-string v8, "civ_capital_income_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x58

    goto/16 :goto_f

    :sswitch_a1
    const-string v8, "civ_have_military_access"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd5

    goto/16 :goto_f

    :sswitch_a2
    const-string v8, "civ_capital_income_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x59

    goto/16 :goto_f

    :sswitch_a3
    const-string v8, "civ_wars_total_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move/from16 v3, v28

    goto/16 :goto_f

    :sswitch_a4
    const-string v8, "civ_advisor_production_efficiency_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x97

    goto/16 :goto_f

    :sswitch_a5
    const-string v8, "province_controlled_by"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x29

    goto/16 :goto_f

    :sswitch_a6
    const-string v8, "civ_capital_economy_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x50

    goto/16 :goto_f

    :sswitch_a7
    const-string v8, "civ_vassals_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x6e

    goto/16 :goto_f

    :sswitch_a8
    const-string v8, "civ_capital_continent_is_not"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x4f

    goto/16 :goto_f

    :sswitch_a9
    const-string v8, "civ_defensive_pacts_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x6a

    goto/16 :goto_f

    :sswitch_aa
    const-string v8, "civ_has_larger_population_than_civ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc2

    goto/16 :goto_f

    :sswitch_ab
    const-string v8, "military_buildings_constructed_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x3a

    goto/16 :goto_f

    :sswitch_ac
    const-string v8, "civ_capital_infrastructure_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x5b

    goto/16 :goto_f

    :sswitch_ad
    const-string v8, "province_tax_efficiency_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x16

    goto/16 :goto_f

    :sswitch_ae
    const-string v8, "civ_military_advisor_skill_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x94

    goto/16 :goto_f

    :sswitch_af
    const-string v8, "civ_capital_unrest_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x54

    goto/16 :goto_f

    :sswitch_b0
    const-string v8, "buildings_constructed_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x34

    goto/16 :goto_f

    :sswitch_b1
    const-string v8, "civ_tag_government_is"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xe3

    goto/16 :goto_f

    :sswitch_b2
    const-string v8, "civ_battle_width_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x7d

    goto/16 :goto_f

    :sswitch_b3
    const-string v8, "increased_manpower_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xe

    goto/16 :goto_f

    :sswitch_b4
    const-string v8, "civ_income_production_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xbb

    goto/16 :goto_f

    :sswitch_b5
    const-string v8, "province_has_building"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x2b

    goto/16 :goto_f

    :sswitch_b6
    const-string v8, "civ_unlocked_legacies_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x71

    goto/16 :goto_f

    :sswitch_b7
    const/4 v8, 0x0

    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/Court/zHJ/lOow;->cbZdPaRmzWHcbnn:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xce

    goto/16 :goto_f

    :sswitch_b8
    const-string v8, "province_is_occupied"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x31

    goto/16 :goto_f

    :sswitch_b9
    const-string v8, "civ_innovation_advisor_skill_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x93

    goto/16 :goto_f

    :sswitch_ba
    const-string v8, "recruited_advisors_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa5

    goto/16 :goto_f

    :sswitch_bb
    const-string v8, "province_not_controlled_by"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x2a

    goto/16 :goto_f

    :sswitch_bc
    const-string v8, "civ_tag_religion_is_not"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xe2

    goto/16 :goto_f

    :sswitch_bd
    const-string v8, "increased_tax_efficiency_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc

    goto/16 :goto_f

    :sswitch_be
    const-string v8, "civ_military_academy_for_generals_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x81

    goto/16 :goto_f

    :sswitch_bf
    const-string v8, "civ_economy_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x49

    goto/16 :goto_f

    :sswitch_c0
    const-string v8, "civs_are_not_at_war"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc0

    goto/16 :goto_f

    :sswitch_c1
    const-string v8, "is_civ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x7b

    goto/16 :goto_f

    :sswitch_c2
    const-string v8, "civ_capital_fort_level_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x5f

    goto/16 :goto_f

    :sswitch_c3
    const-string v8, "province_is_under_siege"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x33

    goto/16 :goto_f

    :sswitch_c4
    const-string v8, "civ_allies_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x68

    goto/16 :goto_f

    :sswitch_c5
    const-string v8, "civ_capital_tax_efficiency_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x4c

    goto/16 :goto_f

    :sswitch_c6
    const-string v8, "playing_time_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x3f

    goto/16 :goto_f

    :sswitch_c7
    const-string v8, "civ_capital_fort_level_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x5e

    goto/16 :goto_f

    :sswitch_c8
    const/4 v8, 0x0

    sget-object v8, Laoc/kingdoms/lukasz/map/advisors/VjN/hQfu;->yEFHLgonm:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xdd

    goto/16 :goto_f

    :sswitch_c9
    const-string v8, "civ_gold_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x64

    goto/16 :goto_f

    :sswitch_ca
    const-string v8, "civ_supreme_court_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x84

    goto/16 :goto_f

    :sswitch_cb
    const-string v8, "civ_provinces_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x44

    goto/16 :goto_f

    :sswitch_cc
    const-string v8, "civ_legacy_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa2

    goto/16 :goto_f

    :sswitch_cd
    const-string v8, "civ_rank_position_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x78

    goto/16 :goto_f

    :sswitch_ce
    const-string v8, "alliance_special_is_not_member_id"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xab

    goto/16 :goto_f

    :sswitch_cf
    const-string v8, "civ_has_rivalry"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc9

    goto/16 :goto_f

    :sswitch_d0
    const-string v8, "civ_military_academy_for_generals_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x80

    goto/16 :goto_f

    :sswitch_d1
    const-string v8, "civ_has_higher_ranking_than_civ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xc6

    goto/16 :goto_f

    :sswitch_d2
    const-string v8, "civ_manpower_perc_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x9d

    goto/16 :goto_f

    :sswitch_d3
    const-string v8, "civ_neighbors_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x70

    goto/16 :goto_f

    :sswitch_d4
    const-string v8, "not_exists"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xde

    goto/16 :goto_f

    :sswitch_d5
    const-string v8, "province_infrastructure_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x22

    goto/16 :goto_f

    :sswitch_d6
    const-string v8, "civ_max_manpower_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x9c

    goto/16 :goto_f

    :sswitch_d7
    const-string v8, "civ_capital_buildings_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x4a

    goto/16 :goto_f

    :sswitch_d8
    const-string v8, "province_religion_is_not"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x1f

    goto/16 :goto_f

    :sswitch_d9
    const-string v8, "civ_regiments_limit_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x89

    goto/16 :goto_f

    :sswitch_da
    const-string v8, "civ_conquered_provinces_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move/from16 v3, v21

    goto/16 :goto_f

    :sswitch_db
    const-string v8, "civ_capital_city_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x83

    goto/16 :goto_f

    :sswitch_dc
    const-string v8, "province_religion_is"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x1e

    goto/16 :goto_f

    :sswitch_dd
    const-string v8, "civs_are_not_neighbors"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xcd

    goto/16 :goto_f

    :sswitch_de
    const-string v8, "exists_any_not"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xe0

    goto/16 :goto_f

    :sswitch_df
    const-string v8, "economy_buildings_constructed_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x38

    goto/16 :goto_f

    :sswitch_e0
    const-string v8, "developed_infrastructure_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x3

    goto/16 :goto_f

    :sswitch_e1
    const-string v8, "province_buildings_limit_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x2f

    goto/16 :goto_f

    :sswitch_e2
    const-string v8, "civ_inflation_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xa7

    goto/16 :goto_f

    :sswitch_e3
    const-string v8, "civ_battle_width_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x7c

    goto/16 :goto_f

    :sswitch_e4
    const-string v8, "increased_manpower_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd

    goto/16 :goto_f

    :sswitch_e5
    const-string v8, "has_variable_not"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd7

    goto/16 :goto_f

    :sswitch_e6
    const-string v8, "has_variable_civ"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd8

    goto/16 :goto_f

    :sswitch_e7
    const-string v8, "province_buildings_limit_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x2e

    goto/16 :goto_f

    :sswitch_e8
    const-string v8, "civ_administrative_advisor_skill_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x8f

    goto/16 :goto_f

    :sswitch_e9
    const-string v8, "civ_capital_is_not_occupied"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x61

    goto/16 :goto_f

    :sswitch_ea
    const-string v8, "civ_unlocked_advantages_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x75

    goto/16 :goto_f

    :sswitch_eb
    const-string v8, "civs_are_neighbors"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xcc

    goto/16 :goto_f

    :sswitch_ec
    const-string v8, "province_defense_lvl_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x27

    goto/16 :goto_f

    :sswitch_ed
    const/4 v8, 0x0

    sget-object v8, Lcom/google/android/gms/security/IYT/MQYGMkZOAcS;->wSTBKpYSY:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x39

    goto/16 :goto_f

    :sswitch_ee
    const-string v8, "civ_capital_infrastructure_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x5a

    goto :goto_f

    :sswitch_ef
    const-string v8, "civ_innovation_advisor_skill_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x92

    goto :goto_f

    :sswitch_f0
    const-string v8, "civ_population_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x47

    goto :goto_f

    :sswitch_f1
    const-string v13, "year_below"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0x41

    goto :goto_f

    :sswitch_f2
    const-string v8, "province_civ_has_core"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v13

    goto :goto_f

    :sswitch_f3
    const-string v8, "civs_have_alliance"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xd2

    goto :goto_f

    :sswitch_f4
    const-string v8, "civ_income_production_over"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v3, 0xba

    goto :goto_f

    :sswitch_f5
    const-string v8, "civ_manpower_perc_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v14

    goto :goto_f

    :sswitch_f6
    const-string v8, "province_tax_efficiency_below"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    if-eqz v3, :cond_11

    move v3, v15

    goto :goto_f

    :cond_11
    :goto_e
    move/from16 v3, v22

    :goto_f
    packed-switch v3, :pswitch_data_1

    move/from16 v3, v16

    :try_start_13
    new-instance v8, Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_22

    goto/16 :goto_12

    :pswitch_5
    :try_start_14
    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_GovernmentIsNot;

    const/4 v3, 0x1

    aget-object v8, v4, v3

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v8, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_GovernmentIsNot;-><init>(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_f

    move/from16 v3, v16

    :try_start_15
    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_6
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_GovernmentIs;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_GovernmentIs;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_7
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_ReligionIsNot;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_ReligionIsNot;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_8
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_ReligionIs;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivTag_ReligionIs;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_9
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsAnyNot;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsAnyNot;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_a
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsAny;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsAny;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsNot;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExistsNot;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Exists;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Exists;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotPlayer;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotPlayer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_e
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsPlayer;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsPlayer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_f
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotVassal;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotVassal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_10
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsVassal;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsVassal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_11
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_12
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableNot;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableNot;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_13
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariable;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_14
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_15
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveGuarantee;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveGuarantee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_16
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveTruce;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveTruce;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_17
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveAlliance;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveAlliance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_18
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveNonAggressionPact;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveNonAggressionPact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_19
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveDefensivePact;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveDefensivePact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_1a
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_OpinionBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v8, v4, v8

    const/4 v14, 0x3

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v13, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_OpinionBelow;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_1b
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_OpinionOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v8, v4, v8

    const/4 v14, 0x3

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v13, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_OpinionOver;-><init>(Ljava/lang/String;Ljava/lang/String;F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_1c
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreNeighborsNot;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreNeighborsNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_1d
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreNeighbors;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreNeighbors;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_1e
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsVassalOfCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsVassalOfCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_1f
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRivaledCivNot;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRivaledCivNot;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_20
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRivaledCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRivaledCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_21
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreRivals;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivsAreRivals;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_22
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreTechsThanCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreTechsThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_23
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasHigherRankThanCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasHigherRankThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_24
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreRegimentsThanCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreRegimentsThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_25
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerRegimentsLimitThanCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerRegimentsLimitThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_26
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerEconomyThanCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerEconomyThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_27
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerPopulationThanCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasLargerPopulationThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_28
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreProvinceThanCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasMoreProvinceThanCiv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_29
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AreNotAtWar;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AreNotAtWar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_2a
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AreAtWar;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    const/4 v8, 0x2

    aget-object v4, v4, v8

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AreAtWar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_2b
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsAtWar_DaysOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsAtWar_DaysOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_2c
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotAtWar;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsNotAtWar;-><init>()V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_2d
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsAtWar;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsAtWar;-><init>()V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_2e
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeProductionBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeProductionBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_2f
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeProductionOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeProductionOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_30
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeEconomyBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeEconomyBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_31
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeEconomyOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeEconomyOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_32
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeTaxationBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeTaxationBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_33
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeTaxationOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeTaxationOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_34
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivResearchPerMonthBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivResearchPerMonthBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_35
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivResearchPerMonthOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivResearchPerMonthOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_36
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyPerMonthBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyPerMonthBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_37
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyPerMonthOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyPerMonthOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_38
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDiplomacyBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDiplomacyBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_39
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDiplomacyOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDiplomacyOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_3a
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_3b
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivIncomeOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_3c
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLoansBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLoansBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_3d
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLoansOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLoansOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_3e
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsNotInAlliance;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsNotInAlliance;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_3f
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsInAlliance;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsInAlliance;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_40
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsLeaderID;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsLeaderID;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_41
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsLeader;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_AllianceIsLeader;-><init>()V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_42
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInflationBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInflationBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_43
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInflationOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInflationOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_44
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RecruitedAdvisorsBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RecruitedAdvisorsBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_45
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RecruitedAdvisorsOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RecruitedAdvisorsOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_46
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_47
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLegacyOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_48
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsLargestProducer;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsLargestProducer;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_49
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_LargestProducer_ProductionOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_LargestProducer_ProductionOver;-><init>(II)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_4a
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLargestProducerOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivLargestProducerOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_4b
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpower_PercOfMax_Below;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpower_PercOfMax_Below;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_4c
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpower_PercOfMax_Over;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpower_PercOfMax_Over;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_4d
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMaxManpowerBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMaxManpowerBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_4e
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMaxManpowerOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMaxManpowerOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_4f
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpowerBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpowerBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_50
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpowerOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivManpowerOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_51
    move/from16 v3, v16

    array-length v2, v4

    const/4 v8, 0x2

    if-le v2, v8, :cond_12

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_52
    move/from16 v3, v16

    array-length v2, v4

    const/4 v8, 0x2

    if-le v2, v8, :cond_12

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ProductionEfficiencyOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_53
    move/from16 v3, v16

    array-length v2, v4

    const/4 v8, 0x2

    if-le v2, v8, :cond_12

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_AgeOver;-><init>(II)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_54
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAdvisorSkillBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAdvisorSkillBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_55
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAdvisorSkillOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAdvisorSkillOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_56
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInnovationAdvisorSkillBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInnovationAdvisorSkillBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_57
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInnovationAdvisorSkillOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivInnovationAdvisorSkillOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_58
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyAdvisorSkillBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyAdvisorSkillBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_59
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyAdvisorSkillOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyAdvisorSkillOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_5a
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdministrativeAdvisorSkillBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdministrativeAdvisorSkillBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_5b
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdministrativeAdvisorSkillOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdministrativeAdvisorSkillOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_5c
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldOver_MaxAmountOfGold;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldOver_MaxAmountOfGold;-><init>(Z)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_5d
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsOverRegimentsLimit;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsOverRegimentsLimit;-><init>(Z)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_5e
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_5f
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_60
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsLimitBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsLimitBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_61
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsLimitOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRegimentsLimitOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_62
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNuclearReactorBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNuclearReactorBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_63
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNuclearReactorOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNuclearReactorOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_64
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivSupremeCourtBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivSupremeCourtBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_65
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivSupremeCourtOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivSupremeCourtOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_66
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapitalCityBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapitalCityBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_67
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapitalCityOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapitalCityOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_68
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyForGeneralsBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyForGeneralsBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_69
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyForGeneralsOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyForGeneralsOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_6a
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_6b
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivMilitaryAcademyOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_6c
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivBattleWidthBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivBattleWidthBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_6d
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivBattleWidthOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivBattleWidthOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_6e
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsCiv;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsCiv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_6f
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPrestigeBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPrestigeBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_70
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPrestigeOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPrestigeOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_71
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPositionBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPositionBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_72
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPositionOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivRankPositionOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_73
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedAdvantagesBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedAdvantagesBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_74
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedAdvantagesOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedAdvantagesOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_75
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedTechnologiesBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedTechnologiesBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_76
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedTechnologiesOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedTechnologiesOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_77
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedLegaciesBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedLegaciesBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_78
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedLegaciesOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivUnlockedLegaciesOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_79
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNeighborsBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNeighborsBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_7a
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNeighborsOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNeighborsOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_7b
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivVassalsBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivVassalsBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_7c
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivVassalsOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivVassalsOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_7d
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNonAggressionPactsBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNonAggressionPactsBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_7e
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNonAggressionPactsOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivNonAggressionPactsOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_7f
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDefensivePactsBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDefensivePactsBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_80
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDefensivePactsOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivDefensivePactsOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_81
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAlliesBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAlliesBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_82
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAlliesOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAlliesOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_83
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGovernmentIs;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGovernmentIs;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_84
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivReligionIs;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivReligionIs;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_85
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_86
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivGoldOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_87
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsUnderSiege;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsUnderSiege;-><init>()V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_88
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsOccupiedNot;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsOccupiedNot;-><init>()V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_89
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsOccupied;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IsOccupied;-><init>()V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_8a
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_FortLevelBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_FortLevelBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_8b
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_FortLevelOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_FortLevelOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_8c
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_PopulationBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_PopulationBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_8d
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_PopulationOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_PopulationOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_8e
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_InfrastructureBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_InfrastructureBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_8f
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_InfrastructureOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_InfrastructureOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_90
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IncomeBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IncomeBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_91
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IncomeOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_IncomeOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_92
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_GrowthRateBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_GrowthRateBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_93
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_GrowthRateOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_GrowthRateOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_94
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_UnrestBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_UnrestBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_95
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_UnrestOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_UnrestOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_96
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ManpowerBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ManpowerBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_97
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ManpowerOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ManpowerOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_98
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_EconomyBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_EconomyBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_99
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_EconomyOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_EconomyOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_9a
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ContinentIsNot;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ContinentIsNot;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_9b
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ContinentIs;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ContinentIs;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_9c
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_TaxEfficiencyBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_TaxEfficiencyBelow;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_9d
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_TaxEfficiencyOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_TaxEfficiencyOver;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_9e
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_BuildingsBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_BuildingsBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_9f
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_BuildingsOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_BuildingsOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_a0
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_a1
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivEconomyOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_a2
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivPopulationBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivPopulationBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_a3
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivPopulationOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivPopulationOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_a4
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesEquals;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesEquals;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_a5
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_a6
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivProvincesOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_a7
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x3

    aget-object v15, v4, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v2, v8, v13, v14}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;-><init>(III)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_22

    const/4 v2, 0x1

    :try_start_16
    aget-object v8, v4, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    const/4 v2, 0x2

    :try_start_17
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    const/4 v2, 0x3

    :try_start_18
    aget-object v2, v4, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_c

    move v15, v2

    const/4 v10, 0x1

    goto/16 :goto_14

    :catch_c
    move-exception v0

    move-object v2, v0

    move/from16 v24, v13

    goto :goto_11

    :catch_d
    move-exception v0

    move-object v2, v0

    move/from16 v24, v13

    goto :goto_10

    :catch_e
    move-exception v0

    move-object v2, v0

    :goto_10
    move/from16 v14, v25

    :goto_11
    move/from16 v17, v27

    const/4 v10, 0x1

    goto/16 :goto_d

    :pswitch_a8
    move/from16 v3, v16

    :try_start_19
    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_YearBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_YearBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_a9
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_YearOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_YearOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_aa
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_PlayingTimeBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_PlayingTimeBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_ab
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_PlayingTimeOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_PlayingTimeOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_ac
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedCapitalBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedCapitalBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_ad
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedCapitalOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedCapitalOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_ae
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedMilitaryBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedMilitaryBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_af
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedMilitaryOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedMilitaryOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b0
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedEconomyBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedEconomyBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b1
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedEconomyOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedEconomyOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b2
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedAdministrativeBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedAdministrativeBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b3
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedAdministrativeOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedAdministrativeOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b4
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b5
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Buildings_ConstructedOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b6
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsUnderSiege;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsUnderSiege;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b7
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsOccupiedNot;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsOccupiedNot;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b8
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsOccupied;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsOccupied;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_b9
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsCapital;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsCapital;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_ba
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_bb
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsLimitOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsLimitOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_bc
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ReligionIs;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_ReligionIs;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_bd
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_HasBuilding;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivCapital_HasBuilding;-><init>(II)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_be
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x3

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v8, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;-><init>(III)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_bf
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceControlledByCivNot;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceControlledByCivNot;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c0
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceControlledByCiv;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceControlledByCiv;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c1
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceCivHasCore;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceCivHasCore;-><init>(ILjava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c2
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceDefenseLevelBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceDefenseLevelBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c3
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceDefenseLevelOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceDefenseLevelOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c4
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c5
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceBuildingsOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c6
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceInfrastructureBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceInfrastructureBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c7
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceInfrastructureOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceInfrastructureOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c8
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceUnrestBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceUnrestBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_c9
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceUnrestOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceUnrestOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_ca
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceReligionIsNot;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceReligionIsNot;-><init>(II)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_cb
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceReligionIs;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceReligionIs;-><init>(II)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_cc
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIncomeBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIncomeBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_cd
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIncomeOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIncomeOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_ce
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceManpowerBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceManpowerBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_cf
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceManpowerOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceManpowerOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d0
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvincePopulationBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvincePopulationBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d1
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvincePopulationOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvincePopulationOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d2
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceTaxEfficiencyBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceTaxEfficiencyBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d3
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceTaxEfficiencyOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceTaxEfficiencyOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d4
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceGrowthRateBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceGrowthRateBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d5
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceGrowthRateOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceGrowthRateOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d6
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceEconomyBelow;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceEconomyBelow;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d7
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceEconomyOver;

    const/4 v8, 0x1

    aget-object v13, v4, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceEconomyOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d8
    move/from16 v3, v16

    array-length v2, v4

    const/4 v8, 0x2

    if-le v2, v8, :cond_12

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasResourceOver;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v13, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasResourceOver;-><init>(IF)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_d9
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasResource;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivHasResource;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_da
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedManpowerBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedManpowerBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_db
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedManpowerOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedManpowerOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_dc
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedTaxEfficiencyBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedTaxEfficiencyBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_dd
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedTaxEfficiencyOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedTaxEfficiencyOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_de
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedGrowthRateBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedGrowthRateBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_df
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedGrowthRateOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IncreasedGrowthRateOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_e0
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivWarsTotalBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivWarsTotalBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_e1
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivWarsTotalOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivWarsTotalOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_e2
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ConqueredProvincesBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ConqueredProvincesBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_e3
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ConqueredProvincesOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ConqueredProvincesOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto/16 :goto_13

    :pswitch_e4
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_DevelopedInfrastructureBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_DevelopedInfrastructureBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto :goto_13

    :pswitch_e5
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_DevelopedInfrastructureOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_DevelopedInfrastructureOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto :goto_13

    :pswitch_e6
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_InvestedInEconomyBelow;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_InvestedInEconomyBelow;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto :goto_13

    :pswitch_e7
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_InvestedInEconomyOver;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_InvestedInEconomyOver;-><init>(I)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto :goto_13

    :pswitch_e8
    move/from16 v3, v16

    new-instance v2, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RandomChance;

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v2, v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RandomChance;-><init>(F)V

    invoke-virtual {v6, v2, v3}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;I)V

    goto :goto_13

    :goto_12
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " MISSING IN TRIGGER -> "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v13, 0x0

    aget-object v4, v4, v13

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    :cond_12
    :goto_13
    move/from16 v13, v24

    move/from16 v14, v25

    move/from16 v15, v26

    :goto_14
    move/from16 v16, v3

    move/from16 v24, v13

    :goto_15
    move/from16 v17, v27

    :goto_16
    const/4 v13, 0x0

    goto/16 :goto_2b

    :catch_f
    move-exception v0

    move/from16 v3, v16

    :goto_17
    move-object v2, v0

    :goto_18
    move/from16 v14, v25

    move/from16 v17, v27

    goto/16 :goto_d

    :cond_13
    move/from16 v3, v16

    if-eqz v12, :cond_19

    const/16 v16, 0x0

    aget-object v8, v4, v16

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_4

    goto/16 :goto_19

    :sswitch_f7
    const-string v13, "bonus_siege_effectiveness"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x95

    goto/16 :goto_1a

    :sswitch_f8
    const-string v13, "bonus_generals_defense"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x90

    goto/16 :goto_1a

    :sswitch_f9
    const-string v13, "bonus_loans_limit"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x98

    goto/16 :goto_1a

    :sswitch_fa
    const-string v13, "bonus_units_defense"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x92

    goto/16 :goto_1a

    :sswitch_fb
    const-string v13, "bonus_monthly_legacy"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x6a

    goto/16 :goto_1a

    :sswitch_fc
    const-string v13, "bonus_all_characters_life_expectancy"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xa6

    goto/16 :goto_1a

    :sswitch_fd
    const-string v13, "bonus_growth_rate"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x70

    goto/16 :goto_1a

    :sswitch_fe
    const-string v13, "change_ideology"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x19

    goto/16 :goto_1a

    :sswitch_ff
    const-string v13, "bonus_corruption"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x71

    goto/16 :goto_1a

    :sswitch_100
    const-string v13, "bonus_monthly_income"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x69

    goto/16 :goto_1a

    :sswitch_101
    const-string v13, "nuclear_reactor"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x13

    goto/16 :goto_1a

    :sswitch_102
    const/4 v13, 0x0

    sget-object v13, Laoc/kingdoms/lukasz/map/plague/KMTV/fTNtCctcBZcqKK;->rjIzHqjr:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x42

    goto/16 :goto_1a

    :sswitch_103
    const-string v13, "bonus_max_manpower"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x77

    goto/16 :goto_1a

    :sswitch_104
    const-string v13, "bonus_aggressive_expansion"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x99

    goto/16 :goto_1a

    :sswitch_105
    const/4 v13, 0x0

    sget-object v13, Lcom/google/android/gms/internal/common/oss/ClXgFvsSKQc;->ZWAnjjhfGcwRGr:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x56

    goto/16 :goto_1a

    :sswitch_106
    const-string v13, "bonus_reinforcement_speed"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x7a

    goto/16 :goto_1a

    :sswitch_107
    const-string v13, "province_religion_capital"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x59

    goto/16 :goto_1a

    :sswitch_108
    const-string v13, "price_change_up"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x27

    goto/16 :goto_1a

    :sswitch_109
    const-string v13, "province_unrest_capital"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x61

    goto/16 :goto_1a

    :sswitch_10a
    const-string v13, "advantage_points"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xa

    goto/16 :goto_1a

    :sswitch_10b
    const-string v13, "province_population"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x55

    goto/16 :goto_1a

    :sswitch_10c
    const-string v13, "join_alliance_special_id_first_tier"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x1f

    goto/16 :goto_1a

    :sswitch_10d
    const-string v13, "bonus_loan_interest"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x97

    goto/16 :goto_1a

    :sswitch_10e
    const-string v13, "declare_war2"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    move v8, v15

    goto/16 :goto_1a

    :sswitch_10f
    const-string v13, "change_religion"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x1a

    goto/16 :goto_1a

    :sswitch_110
    const-string v13, "province_population_all"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x57

    goto/16 :goto_1a

    :sswitch_111
    const-string v13, "annex_from_civ"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x35

    goto/16 :goto_1a

    :sswitch_112
    const-string v13, "add_advisor2"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x33

    goto/16 :goto_1a

    :sswitch_113
    const-string v13, "capital_city_level"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x11

    goto/16 :goto_1a

    :sswitch_114
    const-string v13, "bonus_max_morale"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x93

    goto/16 :goto_1a

    :sswitch_115
    const/4 v13, 0x0

    sget-object v13, Laoc/kingdoms/lukasz/map/advisors/VjN/hQfu;->BQJTLI:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x10

    goto/16 :goto_1a

    :sswitch_116
    const-string v13, "bonus_manpower_recovery_speed"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x79

    goto/16 :goto_1a

    :sswitch_117
    const-string v13, "make_puppet"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x37

    goto/16 :goto_1a

    :sswitch_118
    const-string v13, "province_unrest_id"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x63

    goto/16 :goto_1a

    :sswitch_119
    const-string v13, "province_devastation_capital"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x5d

    goto/16 :goto_1a

    :sswitch_11a
    const-string v13, "province_remove_core_civ"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x44

    goto/16 :goto_1a

    :sswitch_11b
    const/4 v13, 0x0

    sget-object v13, Laoc/kingdoms/lukasz/menusEditor/RJR/ATsAGKCnv;->YgMYMnC:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x25

    goto/16 :goto_1a

    :sswitch_11c
    const-string v13, "province_growth_rate_id"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x54

    goto/16 :goto_1a

    :sswitch_11d
    const-string v13, "legacy_monthly"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x4

    goto/16 :goto_1a

    :sswitch_11e
    const-string v13, "bonus_income_production"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x76

    goto/16 :goto_1a

    :sswitch_11f
    const-string v13, "bonus_army_movement_speed"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x94

    goto/16 :goto_1a

    :sswitch_120
    const-string v13, "inflation"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    move/from16 v8, v21

    goto/16 :goto_1a

    :sswitch_121
    const-string v13, "bonus_war_score_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x7c

    goto/16 :goto_1a

    :sswitch_122
    const-string v13, "bonus_diplomacy_points"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xa1

    goto/16 :goto_1a

    :sswitch_123
    const-string v13, "annex_civ"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x38

    goto/16 :goto_1a

    :sswitch_124
    const/4 v13, 0x0

    sget-object v13, Lcom/badlogic/gdx/backends/android/surfaceview/JuyF/CvuNnwgYwe;->fNLyvnuYGrzP:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x73

    goto/16 :goto_1a

    :sswitch_125
    const-string v13, "province_add_core_civ"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x43

    goto/16 :goto_1a

    :sswitch_126
    const-string v13, "add_variable"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xb

    goto/16 :goto_1a

    :sswitch_127
    const-string v13, "province_devastation_id"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x5f

    goto/16 :goto_1a

    :sswitch_128
    const-string v13, "bonus_buildings_maintenance_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x6e

    goto/16 :goto_1a

    :sswitch_129
    const-string v13, "bonus_disease_death_rate"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xa0

    goto/16 :goto_1a

    :sswitch_12a
    const-string v13, "province_tax_efficiency_capital"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x4b

    goto/16 :goto_1a

    :sswitch_12b
    const-string v13, "province_economy_capital"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x47

    goto/16 :goto_1a

    :sswitch_12c
    const-string v13, "bonus_advisors_max_level"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xa5

    goto/16 :goto_1a

    :sswitch_12d
    const-string v13, "set_civ_tag"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x14

    goto/16 :goto_1a

    :sswitch_12e
    const-string v13, "kill_advisor"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x22

    goto/16 :goto_1a

    :sswitch_12f
    const-string v13, "price_change_group_up"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x2a

    goto/16 :goto_1a

    :sswitch_130
    const-string v13, "add_variable2"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xc

    goto/16 :goto_1a

    :sswitch_131
    const-string v13, "province_unrest_all"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x62

    goto/16 :goto_1a

    :sswitch_132
    const-string v13, "bonus_discipline"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xa3

    goto/16 :goto_1a

    :sswitch_133
    const-string v13, "bonus_province_maintenance"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x6d

    goto/16 :goto_1a

    :sswitch_134
    const-string v13, "add_guarantee"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x3e

    goto/16 :goto_1a

    :sswitch_135
    const-string v13, "province_economy_id"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x46

    goto/16 :goto_1a

    :sswitch_136
    const/4 v13, 0x0

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/AI/Values/nvwi/cIUGJCqyPXfp;->UjVryacT:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x18

    goto/16 :goto_1a

    :sswitch_137
    const-string v13, "bonus_inflation"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x72

    goto/16 :goto_1a

    :sswitch_138
    const-string v13, "bonus_recruit_army_second_line_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x81

    goto/16 :goto_1a

    :sswitch_139
    const/4 v13, 0x0

    sget-object v13, Lcom/google/android/gms/security/IYT/MQYGMkZOAcS;->tqNodUZsrJO:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x75

    goto/16 :goto_1a

    :sswitch_13a
    const/4 v13, 0x0

    sget-object v13, Lcom/badlogic/gdx/assets/loaders/Wkvw/nEtnPpUF;->TEshuJi:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x5a

    goto/16 :goto_1a

    :sswitch_13b
    const-string v13, "change_ideology_civ"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x1b

    goto/16 :goto_1a

    :sswitch_13c
    const-string v13, "bonus_religion_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x9d

    goto/16 :goto_1a

    :sswitch_13d
    const-string v13, "province_infrastructure_capital"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x65

    goto/16 :goto_1a

    :sswitch_13e
    const-string v13, "bonus_invest_in_economy_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x89

    goto/16 :goto_1a

    :sswitch_13f
    const-string v13, "bonus_maintenance_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x6f

    goto/16 :goto_1a

    :sswitch_140
    const-string v13, "bonus_recruitment_time"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x7e

    goto/16 :goto_1a

    :sswitch_141
    const-string v13, "bonus_revolutionary_risk"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x9b

    goto/16 :goto_1a

    :sswitch_142
    const-string v13, "add_truce"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x40

    goto/16 :goto_1a

    :sswitch_143
    const-string v13, "add_ruler"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x31

    goto/16 :goto_1a

    :sswitch_144
    const-string v13, "gold_monthly_income"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x2

    goto/16 :goto_1a

    :sswitch_145
    const-string v13, "province_manpower_capital"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x4e

    goto/16 :goto_1a

    :sswitch_146
    const-string v13, "bonus_advisor_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    move v8, v14

    goto/16 :goto_1a

    :sswitch_147
    const-string v13, "add_military_access"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x3d

    goto/16 :goto_1a

    :sswitch_148
    const-string v13, "military_academy"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xf

    goto/16 :goto_1a

    :sswitch_149
    const-string v13, "ai_aggression"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xd

    goto/16 :goto_1a

    :sswitch_14a
    const-string v13, "add_advisor"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x32

    goto/16 :goto_1a

    :sswitch_14b
    const-string v13, "province_infrastructure"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x64

    goto/16 :goto_1a

    :sswitch_14c
    const-string v13, "bonus_army_maintenance"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x7d

    goto/16 :goto_1a

    :sswitch_14d
    const-string v13, "bonus_recruit_army_first_line_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x80

    goto/16 :goto_1a

    :sswitch_14e
    const-string v13, "leave_alliance_special_id"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x21

    goto/16 :goto_1a

    :sswitch_14f
    const-string v13, "manpower"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    move/from16 v8, v28

    goto/16 :goto_1a

    :sswitch_150
    const-string v13, "bonus_units_attack"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x91

    goto/16 :goto_1a

    :sswitch_151
    const-string v13, "annex"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x34

    goto/16 :goto_1a

    :sswitch_152
    const-string v13, "annexed_by_civ"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x39

    goto/16 :goto_1a

    :sswitch_153
    const/4 v13, 0x0

    sget-object v13, Lcom/badlogic/gdx/backends/android/surfaceview/JuyF/CvuNnwgYwe;->FdNDeGcZv:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x8b

    goto/16 :goto_1a

    :sswitch_154
    const-string v13, "name"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x0

    goto/16 :goto_1a

    :sswitch_155
    const-string v13, "gold"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    goto/16 :goto_1a

    :sswitch_156
    const-string v13, "ai"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x41

    goto/16 :goto_1a

    :sswitch_157
    const-string v13, "bonus_administration_buildings_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x85

    goto/16 :goto_1a

    :sswitch_158
    const-string v13, "province_manpower"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x4d

    goto/16 :goto_1a

    :sswitch_159
    const-string v13, "change_religion_civ"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x1c

    goto/16 :goto_1a

    :sswitch_15a
    const-string v13, "bonus_max_manpower_percentage"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x78

    goto/16 :goto_1a

    :sswitch_15b
    const-string v13, "add_general3"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x30

    goto/16 :goto_1a

    :sswitch_15c
    const-string v13, "add_general2"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x2f

    goto/16 :goto_1a

    :sswitch_15d
    const-string v13, "add_alliance"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x3a

    goto/16 :goto_1a

    :sswitch_15e
    const-string v13, "research"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x5

    goto/16 :goto_1a

    :sswitch_15f
    const-string v13, "bonus_construction_time"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x88

    goto/16 :goto_1a

    :sswitch_160
    const-string v13, "bonus_construction_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x84

    goto/16 :goto_1a

    :sswitch_161
    const-string v13, "bonus_research"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x82

    goto/16 :goto_1a

    :sswitch_162
    const-string v13, "province_growth_rate_all"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x53

    goto/16 :goto_1a

    :sswitch_163
    const-string v13, "price_change_random"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x2c

    goto/16 :goto_1a

    :sswitch_164
    const-string v13, "province_infrastructure_all"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x66

    goto/16 :goto_1a

    :sswitch_165
    const-string v13, "run_event"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x1d

    goto/16 :goto_1a

    :sswitch_166
    const-string v13, "price_change_group"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x29

    goto/16 :goto_1a

    :sswitch_167
    const/4 v13, 0x0

    sget-object v13, Laoc/kingdoms/lukasz/menusScenarioEditor/YGiX/gpVDKipRURuzw;->pWSeyYbCnEh:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x4c

    goto/16 :goto_1a

    :sswitch_168
    const-string v13, "bonus_develop_infrastructure_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x8d

    goto/16 :goto_1a

    :sswitch_169
    const-string v13, "bonus_research_points"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x83

    goto/16 :goto_1a

    :sswitch_16a
    const-string v13, "add_defensive_pact"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x3f

    goto/16 :goto_1a

    :sswitch_16b
    const-string v13, "add_new_army"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xe

    goto/16 :goto_1a

    :sswitch_16c
    const-string v13, "supreme_court"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x12

    goto/16 :goto_1a

    :sswitch_16d
    const-string v13, "province_religion"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x58

    goto/16 :goto_1a

    :sswitch_16e
    const-string v13, "annex_by_civ_from_civ"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x36

    goto/16 :goto_1a

    :sswitch_16f
    const-string v13, "bonus_battle_width"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xa2

    goto/16 :goto_1a

    :sswitch_170
    const-string v13, "bonus_maximum_amount_of_gold"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x8a

    goto/16 :goto_1a

    :sswitch_171
    const-string v13, "province_economy"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x45

    goto/16 :goto_1a

    :sswitch_172
    const-string v13, "province_tax_efficiency"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x49

    goto/16 :goto_1a

    :sswitch_173
    const-string v13, "add_non_aggression"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x3c

    goto/16 :goto_1a

    :sswitch_174
    const-string v13, "legacy"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x3

    goto/16 :goto_1a

    :sswitch_175
    const-string v13, "province_growth_rate"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x51

    goto/16 :goto_1a

    :sswitch_176
    const-string v13, "kill_ruler"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x23

    goto/16 :goto_1a

    :sswitch_177
    const-string v13, "province_devastation_all"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x5e

    goto/16 :goto_1a

    :sswitch_178
    const-string v13, "explode"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x3b

    goto/16 :goto_1a

    :sswitch_179
    const-string v13, "join_alliance_special_id_second_tier"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x20

    goto/16 :goto_1a

    :sswitch_17a
    const-string v13, "province_manpower_all"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x4f

    goto/16 :goto_1a

    :sswitch_17b
    const-string v13, "price_change_group_down"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x2b

    goto/16 :goto_1a

    :sswitch_17c
    const/4 v13, 0x0

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/AI/Government/nSju/IlLkpaQxs;->zRGLjEszrKLkM:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    move/from16 v8, v17

    goto/16 :goto_1a

    :sswitch_17d
    const-string v13, "bonus_improve_relations_modifier"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x96

    goto/16 :goto_1a

    :sswitch_17e
    const-string v13, "bonus_economy_buildings_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x87

    goto/16 :goto_1a

    :sswitch_17f
    const-string v13, "bonus_recruit_army_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x7f

    goto/16 :goto_1a

    :sswitch_180
    const-string v13, "bonus_tax_efficiency"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x6c

    goto/16 :goto_1a

    :sswitch_181
    const-string v13, "province_unrest"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x60

    goto/16 :goto_1a

    :sswitch_182
    const-string v13, "province_manpower_id"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x50

    goto/16 :goto_1a

    :sswitch_183
    const-string v13, "bonus_military_buildings_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x86

    goto/16 :goto_1a

    :sswitch_184
    const-string v13, "bonus_regiments_limit"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xa7

    goto/16 :goto_1a

    :sswitch_185
    const-string v13, "bonus_income_taxation"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x74

    goto/16 :goto_1a

    :sswitch_186
    const-string v13, "promote_advisor"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x1e

    goto/16 :goto_1a

    :sswitch_187
    const-string v13, "province_religion_id"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x5b

    goto/16 :goto_1a

    :sswitch_188
    const-string v13, "province_growth_rate_capital"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x52

    goto/16 :goto_1a

    :sswitch_189
    const/4 v13, 0x0

    sget-object v13, Laoc/kingdoms/lukasz/menu/FQy/TGqtTWl;->piC:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0xa4

    goto/16 :goto_1a

    :sswitch_18a
    const-string v13, "move_capital"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    move/from16 v8, v20

    goto/16 :goto_1a

    :sswitch_18b
    const-string v13, "province_tax_efficiency_id"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x4a

    goto/16 :goto_1a

    :sswitch_18c
    const-string v13, "province_economy_all"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x48

    goto/16 :goto_1a

    :sswitch_18d
    const-string v13, "bonus_monthly_legacy_percentage"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x6b

    goto/16 :goto_1a

    :sswitch_18e
    const-string v13, "price_change_random_up"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x2d

    goto/16 :goto_1a

    :sswitch_18f
    const-string v13, "set_civ_tag2"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x15

    goto/16 :goto_1a

    :sswitch_190
    const-string v13, "price_change_random_down"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x2e

    goto/16 :goto_1a

    :sswitch_191
    const-string v13, "bonus_generals_attack"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x8f

    goto/16 :goto_1a

    :sswitch_192
    const-string v13, "province_infrastructure_id"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x67

    goto/16 :goto_1a

    :sswitch_193
    const-string v13, "bonus_income_from_vassals"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x9a

    goto/16 :goto_1a

    :sswitch_194
    const-string v13, "province_devastation"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x5c

    goto/16 :goto_1a

    :sswitch_195
    const-string v13, "bonus_increase_tax_efficiency_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x8c

    goto/16 :goto_1a

    :sswitch_196
    const-string v13, "bonus_army_morale_recovery"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x7b

    goto :goto_1a

    :sswitch_197
    const-string v13, "kill_ruler_chance"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x24

    goto :goto_1a

    :sswitch_198
    const-string v13, "bonus_general_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x9f

    goto :goto_1a

    :sswitch_199
    const-string v13, "bonus_duration"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x68

    goto :goto_1a

    :sswitch_19a
    const-string v13, "declare_war"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x16

    goto :goto_1a

    :sswitch_19b
    const-string v14, "price_change_down"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    move v8, v13

    goto :goto_1a

    :sswitch_19c
    const-string v13, "bonus_increase_growth_rate_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x8e

    goto :goto_1a

    :sswitch_19d
    const-string v13, "bonus_core_cost"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/16 v8, 0x9c

    goto :goto_1a

    :sswitch_19e
    const-string v13, "price_change"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_22

    if-eqz v8, :cond_14

    const/16 v8, 0x26

    goto :goto_1a

    :cond_14
    :goto_19
    move/from16 v8, v22

    :goto_1a
    const-string v13, ";"

    packed-switch v8, :pswitch_data_2

    :try_start_1a
    new-instance v8, Ljava/lang/StringBuilder;

    goto/16 :goto_22

    :pswitch_e9
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRegimentsLimit;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRegimentsLimit;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_ea
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAllCharactersLifeExpectancy;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAllCharactersLifeExpectancy;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_eb
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdvisorMaxLevel;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdvisorMaxLevel;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_ec
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusManpowerRecoveryFromADisbandedArmy;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusManpowerRecoveryFromADisbandedArmy;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_ed
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiscipline;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiscipline;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_ee
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusBattleWidth;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusBattleWidth;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_ef
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiplomacyPoints;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiplomacyPoints;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_f0
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiseaseDeathRate;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDiseaseDeathRate;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_f1
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_f2
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdvisorCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdvisorCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_f3
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusReligionCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusReligionCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_f4
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusCoreCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusCoreCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_f5
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRevolutionaryRisk;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRevolutionaryRisk;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_f6
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeFromVassals;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeFromVassals;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_f7
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAggressiveExpansion;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAggressiveExpansion;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_f8
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusLoansLimit;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusLoansLimit;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_f9
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusLoanInterest;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusLoanInterest;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_fa
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusImproveRelationsModifier;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusImproveRelationsModifier;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_fb
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusSiegeEffectiveness;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusSiegeEffectiveness;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_fc
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMovementSpeed;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMovementSpeed;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_fd
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxMorale;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxMorale;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_fe
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusUnitsDefense;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusUnitsDefense;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_ff
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusUnitsAttack;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusUnitsAttack;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_100
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralDefense;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralDefense;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_101
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralAttack;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGeneralAttack;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_102
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseGrowthRateCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseGrowthRateCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_103
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDevelopInfrastructureCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusDevelopInfrastructureCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_104
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseTaxEfficiencyCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseTaxEfficiencyCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_105
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseManpowerCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncreaseManpowerCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_106
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaximumAmountOfGold;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaximumAmountOfGold;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_107
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusInvestInEconomyCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusInvestInEconomyCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_108
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusConstructionTime;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusConstructionTime;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_109
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusEconomyBuildingsCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusEconomyBuildingsCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_10a
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMilitaryBuildingsCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMilitaryBuildingsCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_10b
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdministrationBuildingsCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusAdministrationBuildingsCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_10c
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusConstructionCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusConstructionCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_10d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusResearchPoints;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusResearchPoints;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_10e
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusResearch;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusResearch;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_10f
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmySecondLineCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmySecondLineCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_110
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmyFirstLineCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmyFirstLineCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_111
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmyCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitArmyCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_112
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitmentTime;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusRecruitmentTime;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_113
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMaintenance;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMaintenance;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_114
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusWarScoreCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusWarScoreCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_115
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMoraleRecovery;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusArmyMoraleRecovery;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_116
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusReinforcementSpeed;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusReinforcementSpeed;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_117
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusManpowerRecoverySpeed;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusManpowerRecoverySpeed;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_118
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxManpowerPercentage;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxManpowerPercentage;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_119
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxManpower;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaxManpower;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_11a
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeProduction;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeProduction;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_11b
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeEconomy;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeEconomy;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_11c
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeTaxation;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusIncomeTaxation;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_11d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusProductionEfficiency;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusProductionEfficiency;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_11e
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusInflation;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusInflation;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_11f
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusCorruption;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusCorruption;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_120
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGrowthRate;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusGrowthRate;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_121
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaintenanceCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMaintenanceCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_122
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusBuildingsMaintenanceCost;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusBuildingsMaintenanceCost;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_123
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusProvinceMaintenance;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusProvinceMaintenance;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_124
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusTaxEfficiency;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusTaxEfficiency;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_125
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyLegacyPerc;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyLegacyPerc;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_126
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyLegacy;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyLegacy;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_127
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyIncome;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/civilizationBonus/EventOutcome_BonusMonthlyIncome;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_128
    const/4 v2, 0x1

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->bonus_duration:I

    goto/16 :goto_26

    :pswitch_129
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;-><init>(II)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_12a
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_All;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_All;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_12b
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_Capital;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_Capital;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_12c
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_12d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_ID;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_ID;-><init>(IF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_12e
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_All;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_All;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_12f
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_Capital;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest_Capital;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_130
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Unrest;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_131
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_ID;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_ID;-><init>(IF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_132
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_All;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_All;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_133
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_Capital;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation_Capital;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_134
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Devastation;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_135
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_ID;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_ID;-><init>(II)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_136
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_All;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_All;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_137
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_Capital;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion_Capital;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_138
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Religion;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_139
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population_All;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population_All;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_13a
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population_Capital;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population_Capital;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_13b
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Population;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_13c
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_ID;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_ID;-><init>(IF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_13d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_All;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_All;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_13e
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_Capital;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate_Capital;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_13f
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_GrowthRate;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_140
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_ID;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_ID;-><init>(IF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_141
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_All;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_All;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_142
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_Capital;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower_Capital;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_143
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Manpower;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_144
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_All;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_All;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_145
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_Capital;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_Capital;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_146
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_ID;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency_ID;-><init>(IF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_147
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_TaxEfficiency;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_148
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_All;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_All;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_149
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_Capital;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_Capital;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_14a
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_ID;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy_ID;-><init>(IF)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_14b
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Economy;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_14c
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_14d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreAdd;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreAdd;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_14e
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PlayMusic;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PlayMusic;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_14f
    const/4 v2, 0x1

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->ai:F
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_22

    goto/16 :goto_26

    :pswitch_150
    :try_start_1b
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddTruce;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v8, v14, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddTruce;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_10

    goto/16 :goto_26

    :catch_10
    move-exception v0

    move-object v2, v0

    :try_start_1c
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_22

    goto/16 :goto_26

    :pswitch_151
    :try_start_1d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DefensivePact;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v8, v14, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DefensivePact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    goto/16 :goto_26

    :catch_11
    move-exception v0

    move-object v2, v0

    :try_start_1e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_22

    goto/16 :goto_26

    :pswitch_152
    :try_start_1f
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Guarantee;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v8, v14, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Guarantee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_12

    goto/16 :goto_26

    :catch_12
    move-exception v0

    move-object v2, v0

    :try_start_20
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_22

    goto/16 :goto_26

    :pswitch_153
    :try_start_21
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAccess;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v8, v14, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAccess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_13

    goto/16 :goto_26

    :catch_13
    move-exception v0

    move-object v2, v0

    :try_start_22
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_22

    goto/16 :goto_26

    :pswitch_154
    :try_start_23
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_NonAggressionPact;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v8, v14, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_NonAggressionPact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_14

    goto/16 :goto_26

    :catch_14
    move-exception v0

    move-object v2, v0

    :try_start_24
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_22

    goto/16 :goto_26

    :pswitch_155
    :try_start_25
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Explode;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_15

    goto/16 :goto_26

    :catch_15
    move-exception v0

    move-object v2, v0

    :try_start_26
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_22

    goto/16 :goto_26

    :pswitch_156
    :try_start_27
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Alliance;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v8, v14, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Alliance;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_16

    goto/16 :goto_26

    :catch_16
    move-exception v0

    move-object v2, v0

    :try_start_28
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_22

    goto/16 :goto_26

    :pswitch_157
    :try_start_29
    array-length v2, v4

    const/4 v8, 0x1

    if-le v2, v8, :cond_1c

    aget-object v2, v4, v8

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v13, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexedByCivilization;

    aget-object v4, v4, v8

    invoke-direct {v13, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexedByCivilization;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_17

    goto/16 :goto_26

    :catch_17
    move-exception v0

    move-object v2, v0

    :try_start_2a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_22

    goto/16 :goto_26

    :pswitch_158
    :try_start_2b
    array-length v2, v4

    const/4 v8, 0x1

    if-le v2, v8, :cond_1c

    aget-object v2, v4, v8

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v13, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexCivilization;

    aget-object v4, v4, v8

    invoke-direct {v13, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexCivilization;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_18

    goto/16 :goto_26

    :catch_18
    move-exception v0

    move-object v2, v0

    :try_start_2c
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_22

    goto/16 :goto_26

    :pswitch_159
    :try_start_2d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v8, v14, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Vassalize;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_19

    goto/16 :goto_26

    :catch_19
    move-exception v0

    move-object v2, v0

    :try_start_2e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_22

    goto/16 :goto_26

    :pswitch_15a
    :try_start_2f
    array-length v2, v4

    const/4 v8, 0x3

    if-le v2, v8, :cond_1c

    aget-object v2, v4, v8

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    aget-object v2, v4, v8

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_1b
    array-length v14, v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_1b

    if-ge v13, v14, :cond_15

    :try_start_30
    aget-object v14, v2, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_1a

    goto :goto_1c

    :catch_1a
    move-exception v0

    move-object v14, v0

    :try_start_31
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1c
    add-int/lit8 v13, v13, 0x1

    goto :goto_1b

    :cond_15
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c

    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v13, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexedProvincesByCivFromCiv;

    const/4 v14, 0x1

    aget-object v15, v4, v14

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-direct {v13, v15, v4, v8}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexedProvincesByCivFromCiv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1b

    goto/16 :goto_26

    :catch_1b
    move-exception v0

    move-object v2, v0

    :try_start_32
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_22

    goto/16 :goto_26

    :pswitch_15b
    :try_start_33
    array-length v2, v4

    const/4 v8, 0x2

    if-le v2, v8, :cond_1c

    aget-object v2, v4, v8

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    const/4 v2, 0x1

    aget-object v8, v4, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    const/4 v2, 0x2

    aget-object v2, v4, v2

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    :goto_1d
    array-length v14, v2
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1d

    if-ge v13, v14, :cond_16

    :try_start_34
    aget-object v14, v2, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_1c

    goto :goto_1e

    :catch_1c
    move-exception v0

    move-object v14, v0

    :try_start_35
    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1e
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    :cond_16
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c

    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v13, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexProvincesFromCiv;

    const/4 v14, 0x1

    aget-object v4, v4, v14

    invoke-direct {v13, v4, v8}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexProvincesFromCiv;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1d

    goto/16 :goto_26

    :catch_1d
    move-exception v0

    move-object v2, v0

    :try_start_36
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_22

    goto/16 :goto_26

    :pswitch_15c
    :try_start_37
    array-length v2, v4

    const/4 v8, 0x1

    if-le v2, v8, :cond_1c

    aget-object v2, v4, v8

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    aget-object v2, v4, v8

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_1f
    array-length v13, v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1f

    if-ge v8, v13, :cond_17

    :try_start_38
    aget-object v13, v2, v8

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_1e

    goto :goto_20

    :catch_1e
    move-exception v0

    move-object v13, v0

    :try_start_39
    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_20
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_17
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c

    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexProvinces;

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexProvinces;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_1f

    goto/16 :goto_26

    :catch_1f
    move-exception v0

    move-object v2, v0

    :try_start_3a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_26

    :pswitch_15d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;

    const/4 v13, 0x2

    aget-object v13, v4, v13

    const/4 v14, 0x1

    aget-object v4, v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor_Character;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_15e
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddAdvisor;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_22

    goto/16 :goto_26

    :pswitch_15f
    :try_start_3b
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;

    const/4 v13, 0x1

    aget-object v29, v4, v13

    const/4 v13, 0x2

    aget-object v30, v4, v13

    const/4 v13, 0x3

    aget-object v31, v4, v13

    const/4 v13, 0x4

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v13, 0x5

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    aget-object v4, v4, v21

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    move-object/from16 v28, v8

    invoke-direct/range {v28 .. v34}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_20

    goto/16 :goto_26

    :catch_20
    move-exception v0

    move-object v2, v0

    :try_start_3c
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto/16 :goto_26

    :pswitch_160
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v15, 0x3

    aget-object v4, v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v14, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_CharacterAttackDefense;-><init>(Ljava/lang/String;II)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_161
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_Character;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral_Character;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_162
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x3

    aget-object v15, v4, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x4

    aget-object v4, v4, v16

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v13, v14, v15, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomDown;-><init>(IIII)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_163
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x3

    aget-object v15, v4, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x4

    aget-object v4, v4, v16

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v13, v14, v15, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandomUp;-><init>(IIII)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_164
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandom;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x3

    aget-object v15, v4, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x4

    aget-object v4, v4, v16

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v13, v14, v15, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeRandom;-><init>(IIII)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_165
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroupDown;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/4 v13, 0x3

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v13, 0x4

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v13, 0x5

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v28, v8

    invoke-direct/range {v28 .. v33}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroupDown;-><init>(IIIII)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_166
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroupUp;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/4 v13, 0x3

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v13, 0x4

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v13, 0x5

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v28, v8

    invoke-direct/range {v28 .. v33}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroupUp;-><init>(IIIII)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_167
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/4 v13, 0x3

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v13, 0x4

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v13, 0x5

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v28, v8

    invoke-direct/range {v28 .. v33}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeGroup;-><init>(IIIII)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_168
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeDown;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/4 v13, 0x3

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v13, 0x4

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v13, 0x5

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v28, v8

    invoke-direct/range {v28 .. v33}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeDown;-><init>(IIIII)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_169
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeUp;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/4 v13, 0x3

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v13, 0x4

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v13, 0x5

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v28, v8

    invoke-direct/range {v28 .. v33}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChangeUp;-><init>(IIIII)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_16a
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const/4 v13, 0x2

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/4 v13, 0x3

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    const/4 v13, 0x4

    aget-object v13, v4, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    const/4 v13, 0x5

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    move-object/from16 v28, v8

    invoke-direct/range {v28 .. v33}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Resource_PriceChange;-><init>(IIIII)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_16b
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddGeneral;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_16c
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillRuler_Chance;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillRuler_Chance;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_16d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillRuler;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillRuler;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_16e
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillAdvisor;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_KillAdvisor;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_16f
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_LeaveAllianceSpecial;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_LeaveAllianceSpecial;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_170
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialSecondTier;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialSecondTier;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_171
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_JoinAllianceSpecialFirstTier;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_172
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PromoteAdvisor;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PromoteAdvisor;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_173
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RunEvent;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_RunEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_174
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligionCiv;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_175
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x2

    aget-object v4, v4, v14

    invoke-direct {v8, v13, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeologyCiv;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_176
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligion;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeReligion;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_177
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeology;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_ChangeIdeology;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_178
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PlayerChangeCiv;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_PlayerChangeCiv;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_179
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DeclareWar2;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v8, v14, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DeclareWar2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_17a
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DeclareWar;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_DeclareWar;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_17b
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v8, v14, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_17c
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_17d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_NuclearReactor;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_NuclearReactor;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_17e
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SupremeCourt;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SupremeCourt;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_17f
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_CapitalCityLevel;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_CapitalCityLevel;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_180
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAcademyForGenerals;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAcademyForGenerals;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_181
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAcademy;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MilitaryAcademy;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_22

    const/4 v13, 0x1

    :goto_21
    :try_start_3d
    array-length v14, v4

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ge v13, v14, :cond_18

    aget-object v14, v4, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v13, 0x1

    aget-object v14, v4, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_21

    add-int/lit8 v13, v13, 0x2

    goto :goto_21

    :catch_21
    move-exception v0

    move-object v4, v0

    :try_start_3e
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_18
    iget-object v4, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v13, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddArmy;

    invoke-direct {v13, v2, v8}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddArmy;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_183
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AI_Aggression;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AI_Aggression;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_184
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable_Civ;

    const/4 v13, 0x1

    aget-object v14, v4, v13

    const/4 v13, 0x2

    aget-object v4, v4, v13

    invoke-direct {v8, v14, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable_Civ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_185
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_186
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AdvantagePoints;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AdvantagePoints;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_187
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AggressiveExpansion_Set;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AggressiveExpansion_Set;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_188
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Manpower;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Manpower;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_189
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MoveCapital;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_MoveCapital;-><init>(I)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_18a
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Inflation;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Inflation;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_18b
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Research;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Research;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_18c
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/triggers/EventOutcome_Legacy_Monthly;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/triggers/EventOutcome_Legacy_Monthly;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_18d
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Legacy;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Legacy;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_18e
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Gold_MonthlyIncome;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Gold_MonthlyIncome;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_18f
    iget-object v2, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Gold;

    const/4 v13, 0x1

    aget-object v4, v4, v13

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-direct {v8, v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Gold;-><init>(F)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_26

    :pswitch_190
    const/4 v2, 0x1

    aget-object v4, v4, v2

    iput-object v4, v7, Laoc/kingdoms/lukasz/events/EventOption;->name:Ljava/lang/String;

    goto/16 :goto_26

    :goto_22
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " MISSING IN OPTION -> "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v13, 0x0

    aget-object v4, v4, v13

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_22

    goto/16 :goto_26

    :catch_22
    move-exception v0

    goto/16 :goto_17

    :cond_19
    const/4 v8, 0x0

    :try_start_3f
    aget-object v13, v4, v8
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_25

    :try_start_40
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_24

    sparse-switch v8, :sswitch_data_5

    goto/16 :goto_23

    :sswitch_19f
    :try_start_41
    const-string v8, "possible_to_run"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    move/from16 v8, v21

    goto/16 :goto_24

    :sswitch_1a0
    const-string v8, "show_in_missions"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    move/from16 v8, v20

    goto :goto_24

    :sswitch_1a1
    const-string v8, "only_once"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x5

    goto :goto_24

    :sswitch_1a2
    const-string v8, "title"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x1

    goto :goto_24

    :sswitch_1a3
    const-string v8, "popUp"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    move/from16 v8, v17

    goto :goto_24

    :sswitch_1a4
    const/4 v8, 0x0

    sget-object v8, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->hOv:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x4

    goto :goto_24

    :sswitch_1a5
    const-string v8, "desc"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x2

    goto :goto_24

    :sswitch_1a6
    const-string v8, "id"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x0

    goto :goto_24

    :sswitch_1a7
    const-string v8, "mission_desc"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x3

    goto :goto_24

    :sswitch_1a8
    const-string v8, "mission_image"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_22

    if-eqz v8, :cond_1a

    move/from16 v8, v28

    goto :goto_24

    :cond_1a
    :goto_23
    move/from16 v8, v22

    :goto_24
    packed-switch v8, :pswitch_data_3

    :try_start_42
    new-instance v8, Ljava/lang/StringBuilder;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_24

    goto :goto_25

    :pswitch_191
    const/4 v8, 0x1

    :try_start_43
    aget-object v2, v4, v8

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v5, Laoc/kingdoms/lukasz/events/Event;->popUp:Z

    goto/16 :goto_26

    :pswitch_192
    const/4 v2, 0x1

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v5, Laoc/kingdoms/lukasz/events/Event;->mission_image:I

    goto/16 :goto_26

    :pswitch_193
    const/4 v2, 0x1

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v5, Laoc/kingdoms/lukasz/events/Event;->show_in_missions:Z

    goto :goto_26

    :pswitch_194
    const/4 v2, 0x1

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v5, Laoc/kingdoms/lukasz/events/Event;->possible_to_run:Z

    goto :goto_26

    :pswitch_195
    const/4 v2, 0x1

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v5, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    goto :goto_26

    :pswitch_196
    const/4 v2, 0x1

    aget-object v4, v4, v2

    iput-object v4, v5, Laoc/kingdoms/lukasz/events/Event;->image:Ljava/lang/String;

    goto :goto_26

    :pswitch_197
    const/4 v2, 0x1

    aget-object v4, v4, v2

    iput-object v4, v5, Laoc/kingdoms/lukasz/events/Event;->mission_desc:Ljava/lang/String;

    goto :goto_26

    :pswitch_198
    const/4 v2, 0x1

    aget-object v4, v4, v2

    iput-object v4, v5, Laoc/kingdoms/lukasz/events/Event;->desc:Ljava/lang/String;

    goto :goto_26

    :pswitch_199
    const/4 v2, 0x1

    aget-object v4, v4, v2

    iput-object v4, v5, Laoc/kingdoms/lukasz/events/Event;->title:Ljava/lang/String;

    goto :goto_26

    :pswitch_19a
    const/4 v2, 0x1

    aget-object v4, v4, v2

    iput-object v4, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_22

    goto :goto_26

    :goto_25
    :try_start_44
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " MISSING -> "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_24

    const/4 v13, 0x0

    :try_start_45
    aget-object v4, v4, v13

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_23

    goto :goto_27

    :catch_23
    move-exception v0

    goto :goto_29

    :catch_24
    move-exception v0

    goto :goto_28

    :catch_25
    move-exception v0

    move v13, v8

    goto :goto_29

    :cond_1b
    move/from16 v3, v16

    :cond_1c
    :goto_26
    const/4 v13, 0x0

    :goto_27
    move/from16 v16, v3

    move/from16 v14, v25

    move/from16 v15, v26

    move/from16 v17, v27

    goto :goto_2b

    :catch_26
    move-exception v0

    move/from16 v3, v16

    :goto_28
    const/4 v13, 0x0

    :goto_29
    move-object v2, v0

    move/from16 v14, v25

    move/from16 v17, v27

    goto :goto_2a

    :catch_27
    move-exception v0

    move/from16 v23, v3

    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    move/from16 v3, v16

    move/from16 v27, v17

    const/4 v13, 0x0

    move-object v2, v0

    :goto_2a
    :try_start_46
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    move/from16 v16, v3

    move/from16 v15, v26

    :goto_2b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v13, v24

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1d
    move/from16 v24, v13

    move/from16 v25, v14

    move/from16 v26, v15

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/Event;->addEvent()Z

    move-result v2

    if-eqz v2, :cond_25

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_24

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1e

    goto/16 :goto_2c

    :cond_1e
    if-nez v1, :cond_1f

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_25

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v4, v24

    move/from16 v14, v25

    move/from16 v15, v26

    invoke-direct {v2, v3, v4, v14, v15}, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_1f
    move/from16 v4, v24

    move/from16 v14, v25

    move/from16 v15, v26

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_20
    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_21
    const/4 v2, 0x3

    if-ne v1, v2, :cond_22

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_25

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-direct {v2, v3, v4, v14, v15}, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;-><init>(IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_22
    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_23
    const/4 v2, 0x5

    if-ne v1, v2, :cond_25

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_28

    goto :goto_2d

    :cond_24
    :goto_2c
    return-object v5

    :catch_28
    move-exception v0

    move-object v1, v0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_25
    :goto_2d
    const/4 v1, 0x0

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1ef2cd14 -> :sswitch_7
        0xed864e6 -> :sswitch_6
        0x172e1f1f -> :sswitch_5
        0x3efcfb00 -> :sswitch_4
        0x4f8a9ffa -> :sswitch_3
        0x52a80943 -> :sswitch_2
        0x54eb828b -> :sswitch_1
        0x6e181eaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x172e1f1f -> :sswitch_c
        0x51e3fe11 -> :sswitch_b
        0x52a80943 -> :sswitch_a
        0x54eb828b -> :sswitch_9
        0x6e181eaf -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x28919d30 -> :sswitch_11
        -0x1ef2ab1c -> :sswitch_10
        0xed886de -> :sswitch_f
        0x5145a1ca -> :sswitch_e
        0x51e3f392 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        -0x7f97e162 -> :sswitch_f6
        -0x7ebf4383 -> :sswitch_f5
        -0x7d8075ad -> :sswitch_f4
        -0x7ac7606e -> :sswitch_f3
        -0x7a74129e -> :sswitch_f2
        -0x77c06a51 -> :sswitch_f1
        -0x762eefb2 -> :sswitch_f0
        -0x7566f234 -> :sswitch_ef
        -0x74f59256 -> :sswitch_ee
        -0x74db4519 -> :sswitch_ed
        -0x72762cba -> :sswitch_ec
        -0x723a6e06 -> :sswitch_eb
        -0x722787c2 -> :sswitch_ea
        -0x7194abc7 -> :sswitch_e9
        -0x718ec7fe -> :sswitch_e8
        -0x6ebd2779 -> :sswitch_e7
        -0x6d8db9ee -> :sswitch_e6
        -0x6d8d8feb -> :sswitch_e5
        -0x6cf73275 -> :sswitch_e4
        -0x6cf4d41b -> :sswitch_e3
        -0x6b25d893 -> :sswitch_e2
        -0x69a69922 -> :sswitch_e1
        -0x684ac313 -> :sswitch_e0
        -0x66d7a0a2 -> :sswitch_df
        -0x651f02e3 -> :sswitch_de
        -0x6288b8f2 -> :sswitch_dd
        -0x621cf397 -> :sswitch_dc
        -0x5e295c9d -> :sswitch_db
        -0x5dc21687 -> :sswitch_da
        -0x5d4b1fa1 -> :sswitch_d9
        -0x5c8e7603 -> :sswitch_d8
        -0x5b495b26 -> :sswitch_d7
        -0x5a44f919 -> :sswitch_d6
        -0x5847c19f -> :sswitch_d5
        -0x5826fcb8 -> :sswitch_d4
        -0x56c3cb3c -> :sswitch_d3
        -0x56a52cf8 -> :sswitch_d2
        -0x5625da09 -> :sswitch_d1
        -0x54cc0264 -> :sswitch_d0
        -0x54730c43 -> :sswitch_cf
        -0x53081e13 -> :sswitch_ce
        -0x52d46fe1 -> :sswitch_cd
        -0x529ae165 -> :sswitch_cc
        -0x519d5d3a -> :sswitch_cb
        -0x4fe4d783 -> :sswitch_ca
        -0x4ee5259f -> :sswitch_c9
        -0x4cda0ba4 -> :sswitch_c8
        -0x4c9ccaa3 -> :sswitch_c7
        -0x4b2d8f10 -> :sswitch_c6
        -0x4a0fa7f0 -> :sswitch_c5
        -0x49f1b0a9 -> :sswitch_c4
        -0x480a90e0 -> :sswitch_c3
        -0x47bb5b38 -> :sswitch_c2
        -0x4651e7c5 -> :sswitch_c1
        -0x45e76351 -> :sswitch_c0
        -0x45de8a3f -> :sswitch_bf
        -0x45731b97 -> :sswitch_be
        -0x42bd2d54 -> :sswitch_bd
        -0x3f6b6f88 -> :sswitch_bc
        -0x3ce00d13 -> :sswitch_bb
        -0x3b943e39 -> :sswitch_ba
        -0x383625c7 -> :sswitch_b9
        -0x37d6087c -> :sswitch_b8
        -0x37280b73 -> :sswitch_b7
        -0x36841821 -> :sswitch_b6
        -0x35a11498 -> :sswitch_b5
        -0x334d116e -> :sswitch_b4
        -0x32adeda6 -> :sswitch_b3
        -0x326480c0 -> :sswitch_b2
        -0x31f6e75c -> :sswitch_b1
        -0x3183db43 -> :sswitch_b0
        -0x2f3e0a60 -> :sswitch_af
        -0x2e06229c -> :sswitch_ae
        -0x2d61d739 -> :sswitch_ad
        -0x2a7b89e5 -> :sswitch_ac
        -0x2a0808d1 -> :sswitch_ab
        -0x299783b0 -> :sswitch_aa
        -0x274cb378 -> :sswitch_a9
        -0x26d3c651 -> :sswitch_a8
        -0x26910840 -> :sswitch_a7
        -0x263c6c45 -> :sswitch_a6
        -0x260c9c27 -> :sswitch_a5
        -0x257a4cee -> :sswitch_a4
        -0x2423a4af -> :sswitch_a3
        -0x23fba45f -> :sswitch_a2
        -0x2278c7f2 -> :sswitch_a1
        -0x222b409c -> :sswitch_a0
        -0x2129a1bc -> :sswitch_9f
        -0x2104e522 -> :sswitch_9e
        -0x1f18b86a -> :sswitch_9d
        -0x1e933517 -> :sswitch_9c
        -0x1d3c93f2 -> :sswitch_9b
        -0x1c9cf46a -> :sswitch_9a
        -0x1af41db7 -> :sswitch_99
        -0x1a74f779 -> :sswitch_98
        -0x18fb6b77 -> :sswitch_97
        -0x18a26b3a -> :sswitch_96
        -0x184d4764 -> :sswitch_95
        -0x17b7e2ca -> :sswitch_94
        -0x1673e6bd -> :sswitch_93
        -0x14b799a4 -> :sswitch_92
        -0x13676ca2 -> :sswitch_91
        -0x1329fcda -> :sswitch_90
        -0x11dc94de -> :sswitch_8f
        -0x11429ae5 -> :sswitch_8e
        -0x10ee98c0 -> :sswitch_8d
        -0xea0db15 -> :sswitch_8c
        -0xdebe790 -> :sswitch_8b
        -0xda350bb -> :sswitch_8a
        -0xbe5ad1d -> :sswitch_89
        -0xb7804d9 -> :sswitch_88
        -0xb3e551a -> :sswitch_87
        -0xaa8bbcb -> :sswitch_86
        -0x90a3684 -> :sswitch_85
        -0x8f2f2e5 -> :sswitch_84
        -0x800d0e4 -> :sswitch_83
        -0x77b4df6 -> :sswitch_82
        -0x69b8ddf -> :sswitch_81
        -0x66c4434 -> :sswitch_80
        -0x606c51f -> :sswitch_7f
        -0x30eff48 -> :sswitch_7e
        -0x1801cb6 -> :sswitch_7d
        0x49a168 -> :sswitch_7c
        0xd7fef9 -> :sswitch_7b
        0x1b615a3 -> :sswitch_7a
        0x2babe81 -> :sswitch_79
        0x36a8864 -> :sswitch_78
        0x3cc71ee -> :sswitch_77
        0x4429b7b -> :sswitch_76
        0x4784117 -> :sswitch_75
        0x57bb5e1 -> :sswitch_74
        0x5fd9c90 -> :sswitch_73
        0x70fdf05 -> :sswitch_72
        0x727e2e9 -> :sswitch_71
        0x7531637 -> :sswitch_70
        0x75bd875 -> :sswitch_6f
        0x8132dd9 -> :sswitch_6e
        0x84cf209 -> :sswitch_6d
        0x9946b8c -> :sswitch_6c
        0x9e6849f -> :sswitch_6b
        0xb000bb0 -> :sswitch_6a
        0xc490f89 -> :sswitch_69
        0xc71e44b -> :sswitch_68
        0xde58969 -> :sswitch_67
        0x11452c98 -> :sswitch_66
        0x1407c5c2 -> :sswitch_65
        0x14b994b2 -> :sswitch_64
        0x15c6168c -> :sswitch_63
        0x16a194ed -> :sswitch_62
        0x1752bdbb -> :sswitch_61
        0x17edc3bc -> :sswitch_60
        0x18d3510c -> :sswitch_5f
        0x1a51880a -> :sswitch_5e
        0x1d27b4ce -> :sswitch_5d
        0x215d8619 -> :sswitch_5c
        0x22527ee1 -> :sswitch_5b
        0x23336dd7 -> :sswitch_5a
        0x2368c7e2 -> :sswitch_59
        0x237f6942 -> :sswitch_58
        0x23bd3bca -> :sswitch_57
        0x23f7ad09 -> :sswitch_56
        0x259f3f1f -> :sswitch_55
        0x25f70cd9 -> :sswitch_54
        0x26ae7f9f -> :sswitch_53
        0x273e8bc4 -> :sswitch_52
        0x27438186 -> :sswitch_51
        0x282609b4 -> :sswitch_50
        0x2b80c362 -> :sswitch_4f
        0x2c77be07 -> :sswitch_4e
        0x2e596c3f -> :sswitch_4d
        0x326b0084 -> :sswitch_4c
        0x32d6c8df -> :sswitch_4b
        0x33c2418a -> :sswitch_4a
        0x39e2bd22 -> :sswitch_49
        0x3f007fcd -> :sswitch_48
        0x429a7821 -> :sswitch_47
        0x435af402 -> :sswitch_46
        0x43c71e3b -> :sswitch_45
        0x43d8d763 -> :sswitch_44
        0x43e07755 -> :sswitch_43
        0x45bb2fd1 -> :sswitch_42
        0x46bdece5 -> :sswitch_41
        0x48f162e3 -> :sswitch_40
        0x4a26f824 -> :sswitch_3f
        0x4e90bc44 -> :sswitch_3e
        0x5167cb98 -> :sswitch_3d
        0x528b15a8 -> :sswitch_3c
        0x52ba2b77 -> :sswitch_3b
        0x53f43bd1 -> :sswitch_3a
        0x5507e922 -> :sswitch_39
        0x5558fdc3 -> :sswitch_38
        0x589be144 -> :sswitch_37
        0x58b5baf9 -> :sswitch_36
        0x59eb6d57 -> :sswitch_35
        0x5a92f6aa -> :sswitch_34
        0x5bce5b01 -> :sswitch_33
        0x5bff8e6e -> :sswitch_32
        0x5c40cec9 -> :sswitch_31
        0x5c70da30 -> :sswitch_30
        0x5d5fc72b -> :sswitch_2f
        0x5df0122a -> :sswitch_2e
        0x5e03757f -> :sswitch_2d
        0x5e338f38 -> :sswitch_2c
        0x5fa7f7c2 -> :sswitch_2b
        0x609368a4 -> :sswitch_2a
        0x609f6097 -> :sswitch_29
        0x60dea61b -> :sswitch_28
        0x62c92df0 -> :sswitch_27
        0x63421c4a -> :sswitch_26
        0x63593f80 -> :sswitch_25
        0x63eedf0f -> :sswitch_24
        0x65424286 -> :sswitch_23
        0x66fe371b -> :sswitch_22
        0x6974fc7e -> :sswitch_21
        0x6c322103 -> :sswitch_20
        0x6c82fda1 -> :sswitch_1f
        0x706fa751 -> :sswitch_1e
        0x70997762 -> :sswitch_1d
        0x72ec722c -> :sswitch_1c
        0x739e0bc0 -> :sswitch_1b
        0x74f218e2 -> :sswitch_1a
        0x75052609 -> :sswitch_19
        0x75c912e4 -> :sswitch_18
        0x7809daca -> :sswitch_17
        0x78704a18 -> :sswitch_16
        0x79827cee -> :sswitch_15
        0x7aa0959d -> :sswitch_14
        0x7aa6a365 -> :sswitch_13
        0x7f9a2b79 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e8
        :pswitch_e7
        :pswitch_e6
        :pswitch_e5
        :pswitch_e4
        :pswitch_e3
        :pswitch_e2
        :pswitch_e1
        :pswitch_e0
        :pswitch_df
        :pswitch_de
        :pswitch_dd
        :pswitch_dc
        :pswitch_db
        :pswitch_da
        :pswitch_d9
        :pswitch_d8
        :pswitch_d8
        :pswitch_d7
        :pswitch_d6
        :pswitch_d5
        :pswitch_d4
        :pswitch_d3
        :pswitch_d2
        :pswitch_d1
        :pswitch_d0
        :pswitch_cf
        :pswitch_ce
        :pswitch_cd
        :pswitch_cc
        :pswitch_cb
        :pswitch_ca
        :pswitch_c9
        :pswitch_c8
        :pswitch_c7
        :pswitch_c6
        :pswitch_c5
        :pswitch_c4
        :pswitch_c3
        :pswitch_c2
        :pswitch_c1
        :pswitch_c0
        :pswitch_bf
        :pswitch_be
        :pswitch_bd
        :pswitch_bc
        :pswitch_bb
        :pswitch_ba
        :pswitch_b9
        :pswitch_b8
        :pswitch_b7
        :pswitch_b6
        :pswitch_b5
        :pswitch_b4
        :pswitch_b3
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x7fbbf49a -> :sswitch_19e
        -0x7ef99bb3 -> :sswitch_19d
        -0x7e13586f -> :sswitch_19c
        -0x7cfcfe25 -> :sswitch_19b
        -0x78b9856d -> :sswitch_19a
        -0x77c6ee4c -> :sswitch_199
        -0x76d09b1c -> :sswitch_198
        -0x75410222 -> :sswitch_197
        -0x727e2ad8 -> :sswitch_196
        -0x6f79da0e -> :sswitch_195
        -0x6e2e1dc7 -> :sswitch_194
        -0x6d3aed62 -> :sswitch_193
        -0x6c3ef218 -> :sswitch_192
        -0x6b87f3a4 -> :sswitch_191
        -0x6b0d04bb -> :sswitch_190
        -0x68fc4edc -> :sswitch_18f
        -0x6800ce02 -> :sswitch_18e
        -0x67c64302 -> :sswitch_18d
        -0x678e5e6f -> :sswitch_18c
        -0x6435a632 -> :sswitch_18b
        -0x63debd06 -> :sswitch_18a
        -0x6398c2a7 -> :sswitch_189
        -0x633f070e -> :sswitch_188
        -0x621cf3a6 -> :sswitch_187
        -0x6138e9bf -> :sswitch_186
        -0x609fbc20 -> :sswitch_185
        -0x5eb347c4 -> :sswitch_184
        -0x5e0e26e1 -> :sswitch_183
        -0x5d7e84a0 -> :sswitch_182
        -0x5987ae24 -> :sswitch_181
        -0x58532063 -> :sswitch_180
        -0x571b02b2 -> :sswitch_17f
        -0x56199bf2 -> :sswitch_17e
        -0x54fabf9a -> :sswitch_17d
        -0x54bdba39 -> :sswitch_17c
        -0x52989325 -> :sswitch_17b
        -0x52522c04 -> :sswitch_17a
        -0x4f23401e -> :sswitch_179
        -0x4e08071f -> :sswitch_178
        -0x4a9f3965 -> :sswitch_177
        -0x4882972b -> :sswitch_176
        -0x47fb9637 -> :sswitch_175
        -0x41f50c37 -> :sswitch_174
        -0x4147ccbc -> :sswitch_173
        -0x4005cf94 -> :sswitch_172
        -0x38bd57d1 -> :sswitch_171
        -0x388be700 -> :sswitch_170
        -0x37a8d461 -> :sswitch_16f
        -0x35f45fb9 -> :sswitch_16e
        -0x341a96a0 -> :sswitch_16d
        -0x29b7efdb -> :sswitch_16c
        -0x28353d46 -> :sswitch_16b
        -0x281101b4 -> :sswitch_16a
        -0x24a20419 -> :sswitch_169
        -0x23574c19 -> :sswitch_168
        -0x227f3cb2 -> :sswitch_167
        -0x22773f9a -> :sswitch_166
        -0x1cccc41a -> :sswitch_165
        -0x1b9f6d8c -> :sswitch_164
        -0x1a9ba844 -> :sswitch_163
        -0x171af9d5 -> :sswitch_162
        -0x15f57a45 -> :sswitch_161
        -0x1519eda5 -> :sswitch_160
        -0x15124aa5 -> :sswitch_15f
        -0x14ea3e65 -> :sswitch_15e
        -0xe9159eb -> :sswitch_15d
        -0xe5d0dd8 -> :sswitch_15c
        -0xe5d0dd7 -> :sswitch_15b
        -0xe37e40d -> :sswitch_15a
        -0xc56af0f -> :sswitch_159
        -0xb4937e6 -> :sswitch_158
        -0x2da9652 -> :sswitch_157
        0xc28 -> :sswitch_156
        0x308060 -> :sswitch_155
        0x337a8b -> :sswitch_154
        0xb33884 -> :sswitch_153
        0x2c8d4b4 -> :sswitch_152
        0x58a9254 -> :sswitch_151
        0x802dd38 -> :sswitch_150
        0x8302beb -> :sswitch_14f
        0x900b9e1 -> :sswitch_14e
        0x922aa48 -> :sswitch_14d
        0x9b14391 -> :sswitch_14c
        0x9bb8292 -> :sswitch_14b
        0xb344e22 -> :sswitch_14a
        0xcc07bab -> :sswitch_149
        0xdde0dba -> :sswitch_148
        0xf832138 -> :sswitch_147
        0x1033950c -> :sswitch_146
        0x11dc7643 -> :sswitch_145
        0x131077da -> :sswitch_144
        0x146c67d8 -> :sswitch_143
        0x14875b3b -> :sswitch_142
        0x1882acaf -> :sswitch_141
        0x18b203b0 -> :sswitch_140
        0x19c50d99 -> :sswitch_13f
        0x1a0131de -> :sswitch_13e
        0x1b9b38bb -> :sswitch_13d
        0x1be101fb -> :sswitch_13c
        0x1cddd17a -> :sswitch_13b
        0x1e7e6242 -> :sswitch_13a
        0x2023c1c8 -> :sswitch_139
        0x2033e32e -> :sswitch_138
        0x240ac90a -> :sswitch_137
        0x250f3c15 -> :sswitch_136
        0x25f3272b -> :sswitch_135
        0x26629c6a -> :sswitch_134
        0x29f7c8a4 -> :sswitch_133
        0x2a4fd790 -> :sswitch_132
        0x2c30acbe -> :sswitch_131
        0x2cb65b18 -> :sswitch_130
        0x2cef1114 -> :sswitch_12f
        0x2e0903df -> :sswitch_12e
        0x2e2968ce -> :sswitch_12d
        0x2f6bb47d -> :sswitch_12c
        0x34257158 -> :sswitch_12b
        0x35236c95 -> :sswitch_12a
        0x353cd68e -> :sswitch_129
        0x36d6a999 -> :sswitch_128
        0x376638e1 -> :sswitch_127
        0x3b3fb05a -> :sswitch_126
        0x3c5642bd -> :sswitch_125
        0x3e39dd8f -> :sswitch_124
        0x3ebdf865 -> :sswitch_123
        0x42c301ca -> :sswitch_122
        0x4431cb31 -> :sswitch_121
        0x4467092a -> :sswitch_120
        0x44eedb79 -> :sswitch_11f
        0x48ef10ef -> :sswitch_11e
        0x49685197 -> :sswitch_11d
        0x4993c751 -> :sswitch_11c
        0x49dbf74a -> :sswitch_11b
        0x4a65267c -> :sswitch_11a
        0x4b870162 -> :sswitch_119
        0x4bbf825e -> :sswitch_118
        0x50d92da5 -> :sswitch_117
        0x51f725d1 -> :sswitch_116
        0x554a0970 -> :sswitch_115
        0x595633e5 -> :sswitch_114
        0x5b1cbee7 -> :sswitch_113
        0x5b557650 -> :sswitch_112
        0x5b8ce046 -> :sswitch_111
        0x5d81aa9e -> :sswitch_110
        0x5db010e0 -> :sswitch_10f
        0x6188d7ff -> :sswitch_10e
        0x64e97179 -> :sswitch_10d
        0x66f71e5c -> :sswitch_10c
        0x6cb33fbc -> :sswitch_10b
        0x6de09b77 -> :sswitch_10a
        0x6de11e05 -> :sswitch_109
        0x6e6be614 -> :sswitch_108
        0x6f907189 -> :sswitch_107
        0x70002599 -> :sswitch_106
        0x70c02be5 -> :sswitch_105
        0x71710264 -> :sswitch_104
        0x72033c86 -> :sswitch_103
        0x7277a55a -> :sswitch_102
        0x73bf1149 -> :sswitch_101
        0x754a823b -> :sswitch_100
        0x75bb16fb -> :sswitch_ff
        0x76443de9 -> :sswitch_fe
        0x78fe7038 -> :sswitch_fd
        0x799a2408 -> :sswitch_fc
        0x79ebd45b -> :sswitch_fb
        0x7caf7d50 -> :sswitch_fa
        0x7e6261df -> :sswitch_f9
        0x7ee032ac -> :sswitch_f8
        0x7eef318c -> :sswitch_f7
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_190
        :pswitch_18f
        :pswitch_18e
        :pswitch_18d
        :pswitch_18c
        :pswitch_18b
        :pswitch_18a
        :pswitch_189
        :pswitch_188
        :pswitch_187
        :pswitch_186
        :pswitch_185
        :pswitch_184
        :pswitch_183
        :pswitch_182
        :pswitch_181
        :pswitch_180
        :pswitch_17f
        :pswitch_17e
        :pswitch_17d
        :pswitch_17c
        :pswitch_17b
        :pswitch_17a
        :pswitch_179
        :pswitch_178
        :pswitch_177
        :pswitch_176
        :pswitch_175
        :pswitch_174
        :pswitch_173
        :pswitch_172
        :pswitch_171
        :pswitch_170
        :pswitch_16f
        :pswitch_16e
        :pswitch_16d
        :pswitch_16c
        :pswitch_16b
        :pswitch_16a
        :pswitch_169
        :pswitch_168
        :pswitch_167
        :pswitch_166
        :pswitch_165
        :pswitch_164
        :pswitch_163
        :pswitch_162
        :pswitch_161
        :pswitch_160
        :pswitch_15f
        :pswitch_15e
        :pswitch_15d
        :pswitch_15c
        :pswitch_15b
        :pswitch_15a
        :pswitch_159
        :pswitch_158
        :pswitch_157
        :pswitch_156
        :pswitch_155
        :pswitch_154
        :pswitch_153
        :pswitch_152
        :pswitch_151
        :pswitch_150
        :pswitch_14f
        :pswitch_14e
        :pswitch_14d
        :pswitch_14c
        :pswitch_14b
        :pswitch_14a
        :pswitch_149
        :pswitch_148
        :pswitch_147
        :pswitch_146
        :pswitch_145
        :pswitch_144
        :pswitch_143
        :pswitch_142
        :pswitch_141
        :pswitch_140
        :pswitch_13f
        :pswitch_13e
        :pswitch_13d
        :pswitch_13c
        :pswitch_13b
        :pswitch_13a
        :pswitch_139
        :pswitch_138
        :pswitch_137
        :pswitch_136
        :pswitch_135
        :pswitch_134
        :pswitch_133
        :pswitch_132
        :pswitch_131
        :pswitch_130
        :pswitch_12f
        :pswitch_12e
        :pswitch_12d
        :pswitch_12c
        :pswitch_12b
        :pswitch_12a
        :pswitch_129
        :pswitch_128
        :pswitch_127
        :pswitch_126
        :pswitch_125
        :pswitch_124
        :pswitch_123
        :pswitch_122
        :pswitch_121
        :pswitch_120
        :pswitch_11f
        :pswitch_11e
        :pswitch_11d
        :pswitch_11c
        :pswitch_11b
        :pswitch_11a
        :pswitch_119
        :pswitch_118
        :pswitch_117
        :pswitch_116
        :pswitch_115
        :pswitch_114
        :pswitch_113
        :pswitch_112
        :pswitch_111
        :pswitch_110
        :pswitch_10f
        :pswitch_10e
        :pswitch_10d
        :pswitch_10c
        :pswitch_10b
        :pswitch_10a
        :pswitch_109
        :pswitch_108
        :pswitch_107
        :pswitch_106
        :pswitch_105
        :pswitch_104
        :pswitch_103
        :pswitch_102
        :pswitch_101
        :pswitch_100
        :pswitch_ff
        :pswitch_fe
        :pswitch_fd
        :pswitch_fc
        :pswitch_fb
        :pswitch_fa
        :pswitch_f9
        :pswitch_f8
        :pswitch_f7
        :pswitch_f6
        :pswitch_f5
        :pswitch_f4
        :pswitch_f3
        :pswitch_f2
        :pswitch_f1
        :pswitch_f0
        :pswitch_ef
        :pswitch_ee
        :pswitch_ed
        :pswitch_ec
        :pswitch_eb
        :pswitch_ea
        :pswitch_e9
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x6ce6cb18 -> :sswitch_1a8
        -0x385b29c -> :sswitch_1a7
        0xd1b -> :sswitch_1a6
        0x2efe91 -> :sswitch_1a5
        0x5faa95b -> :sswitch_1a4
        0x65e6ccc -> :sswitch_1a3
        0x6942258 -> :sswitch_1a2
        0x1177a334 -> :sswitch_1a1
        0x457b73ff -> :sswitch_1a0
        0x651d8555 -> :sswitch_19f
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19a
        :pswitch_199
        :pswitch_198
        :pswitch_197
        :pswitch_196
        :pswitch_195
        :pswitch_194
        :pswitch_193
        :pswitch_192
        :pswitch_191
    .end packed-switch
.end method

.method public static loadEventIMG(Ljava/lang/String;)V
    .locals 5

    const-string v0, "game/events/images/"

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->loadedEventIMG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    const/4 v1, 0x0

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    goto :goto_0

    :cond_2
    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    :goto_0
    sput-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->loadedEventIMG:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "default.png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture_RGB888(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v1, v0, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sput-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static final loadEvents()V
    .locals 9

    const-string v0, ""

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "game/events/generate_list.txt"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "game/events/common/"

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "game/events/list_common.txt"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    move v5, v3

    :goto_0
    array-length v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/map/allianceHRE/JgPF/HTGgowNjn;->IQdjj:Ljava/lang/String;

    if-ge v5, v6, :cond_0

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v1, v5

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "game/events/siege/"

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "game/events/list_siege.txt"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    move v5, v3

    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v1, v5

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "game/events/global/"

    invoke-interface {v1, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v5, "game/events/list_global.txt"

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    move v0, v3

    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v0

    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    invoke-static {v3}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents(I)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/events/EventsManager;->loadMissionImages()V

    return-void
.end method

.method public static final loadEvents(I)V
    .locals 10

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const-string v1, "common/"

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    const-string v1, "siege/"

    goto :goto_0

    :cond_1
    const-string v1, "global/"

    :goto_0
    if-nez p0, :cond_2

    const-string v2, "list_common.txt"

    goto :goto_1

    :cond_2
    if-ne p0, v0, :cond_3

    const-string v2, "list_siege.txt"

    goto :goto_1

    :cond_3
    const-string v2, "list_global.txt"

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v3

    const-string v4, ";"

    const-string v5, "\\r?\\n"

    const/4 v6, 0x0

    const-string v7, "game/events/"

    if-eqz v3, :cond_b

    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v3, :cond_5

    :try_start_0
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v6

    :goto_2
    if-ge v4, v3, :cond_5

    :try_start_1
    aget-object v8, v2, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-exception v8

    :try_start_2
    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    array-length v3, v2

    move v4, v6

    :goto_4
    if-ge v4, v3, :cond_6

    aget-object v8, v2, v4

    :try_start_3
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    move v2, v6

    :goto_6
    sget v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v2, v3, :cond_9

    sget-boolean v3, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    goto :goto_7

    :cond_7
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    :goto_7
    array-length v4, v3

    move v8, v6

    :goto_8
    if-ge v8, v4, :cond_8

    aget-object v9, v3, v8

    :try_start_4
    invoke-virtual {v9}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    :catch_3
    move-exception v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_9
    move v2, v6

    :goto_a
    sget v3, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v2, v3, :cond_d

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v7}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/game/events/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    array-length v4, v3

    move v7, v6

    :goto_b
    if-ge v7, v4, :cond_a

    aget-object v8, v3, v7

    :try_start_5
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_c

    :catch_4
    move-exception v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    :try_start_6
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2
    :try_end_6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_d
    if-ge v6, v3, :cond_d

    :try_start_7
    aget-object v4, v2, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v8, v2, v6

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_e

    :catch_5
    move-exception v4

    :try_start_8
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_c
    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :catch_6
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_d
    if-nez p0, :cond_e

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSize:I

    goto :goto_f

    :cond_e
    if-ne p0, v0, :cond_f

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeSize:I

    goto :goto_f

    :cond_f
    const/4 v1, 0x2

    if-ne p0, v1, :cond_10

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    sget v3, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/2addr v2, v0

    const/16 v0, 0xa

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    :cond_10
    :goto_f
    const/4 v0, 0x3

    if-ne p0, v0, :cond_11

    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    goto :goto_10

    :cond_11
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeScenarioSize:I

    goto :goto_10

    :cond_12
    const/4 v0, 0x5

    if-ne p0, v0, :cond_13

    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    :cond_13
    :goto_10
    return-void
.end method

.method public static final loadEvents_Scenario()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents_Scenario(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents_Scenario(I)V

    const/4 v0, 0x5

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvents_Scenario(I)V

    return-void
.end method

.method public static final loadEvents_Scenario(I)V
    .locals 15

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const-string v2, "common/"

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    const-string v2, "siege/"

    goto :goto_0

    :cond_1
    const-string v2, "global/"

    :goto_0
    if-ne p0, v1, :cond_2

    const-string v3, "list_common.txt"

    goto :goto_1

    :cond_2
    if-ne p0, v0, :cond_3

    const-string v3, "list_siege.txt"

    goto :goto_1

    :cond_3
    const-string v3, "list_global.txt"

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v4

    const-string v5, "events/"

    const-string v6, "/"

    const-string v7, ";"

    const-string v8, "\\r?\\n"

    const/4 v9, 0x0

    const-string v10, "scenarios/"

    const-string v11, "/events/"

    const-string v12, "map/"

    if-eqz v4, :cond_b

    sget-boolean v4, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v4, :cond_5

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v7, v9

    :goto_2
    if-ge v7, v4, :cond_5

    :try_start_1
    aget-object v13, v3, v7

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v3, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-exception v13

    :try_start_2
    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_4

    :catch_2
    move-exception v3

    :try_start_3
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :goto_4
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    array-length v4, v3

    move v5, v9

    :goto_6
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    :try_start_4
    invoke-virtual {v6}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    :catch_3
    move-exception v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    move v3, v9

    :goto_8
    sget v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I

    if-ge v3, v4, :cond_9

    sget-boolean v4, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v4, :cond_7

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    goto :goto_9

    :cond_7
    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    :goto_9
    array-length v5, v4

    move v6, v9

    :goto_a
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    :try_start_5
    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    move-exception v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :cond_9
    move v3, v9

    :goto_c
    sget v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v3, v4, :cond_d

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v6}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/map/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    array-length v5, v4

    move v6, v9

    :goto_d
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    :try_start_6
    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_e

    :catch_5
    move-exception v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_b
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v13, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_f
    if-ge v9, v4, :cond_d

    :try_start_8
    aget-object v7, v3, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Laoc/kingdoms/lukasz/events/EventsManager;->loadScenarioEventsTag:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v11, v3, v9

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_10

    :catch_6
    move-exception v7

    :try_start_9
    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_c
    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :catch_7
    move-exception v2

    goto :goto_11

    :catch_8
    move-exception v2

    :try_start_a
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_12

    :goto_11
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_d
    :goto_12
    if-nez p0, :cond_e

    sget-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSize:I

    goto :goto_13

    :cond_e
    const/4 v2, 0x1

    if-ne p0, v2, :cond_f

    sget-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeSize:I

    goto :goto_13

    :cond_f
    const/4 v3, 0x2

    if-ne p0, v3, :cond_10

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sput v3, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/2addr v4, v2

    const/16 v2, 0xa

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    :cond_10
    :goto_13
    if-ne p0, v1, :cond_11

    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    goto :goto_14

    :cond_11
    if-ne p0, v0, :cond_12

    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeScenarioSize:I

    goto :goto_14

    :cond_12
    const/4 v0, 0x5

    if-ne p0, v0, :cond_13

    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    :cond_13
    :goto_14
    return-void
.end method

.method public static loadMissionImages()V
    .locals 9

    const-string v0, ".png"

    const-string v1, "game/events/imagesMissions/"

    :try_start_0
    const-string v2, "game/events/imagesMissions/numOfImages.txt"

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v5, v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath_Short_H()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v5, v6, v7, v8}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static final runEvent(I)V
    .locals 8

    :try_start_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SCENARIO_EVENTS:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_0
    sget v3, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    if-ge v0, v3, :cond_8

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_5

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v3, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    new-instance v3, Laoc/kingdoms/lukasz/events/EventsManager$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Laoc/kingdoms/lukasz/events/EventsManager$3;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_5

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    move v3, v2

    move v4, v3

    :goto_2
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    if-lez v4, :cond_4

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move v4, v2

    :goto_3
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    int-to-float v5, v3

    int-to-float v6, v2

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_4
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    :cond_5
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    move v0, v2

    :goto_6
    sget v3, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSize:I

    if-ge v0, v3, :cond_11

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_f

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_e

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v3, :cond_9

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_9
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v1}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v3, :cond_a

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v3, v2, v0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    new-instance v3, Laoc/kingdoms/lukasz/events/EventsManager$4;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Laoc/kingdoms/lukasz/events/EventsManager$4;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_b

    :cond_a
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    move v3, v2

    move v4, v3

    :goto_8
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_b

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    if-lez v4, :cond_d

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move v4, v2

    :goto_9
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_d

    int-to-float v5, v3

    int-to-float v6, v2

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_d
    move v4, v2

    :goto_a
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    :cond_e
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method public static final runEvents(I)V
    .locals 8

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->runEvent(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/events/EventsManager;->runEvents_ExactDay()V

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_EVENTS:I

    rem-int v0, p0, v0

    :goto_1
    sget v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_9

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget v1, v1, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    rem-int/2addr v1, v3

    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_6

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v3, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v3, v3, Laoc/kingdoms/lukasz/events/Event;->possible_to_run:Z

    if-eqz v3, :cond_6

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v1, v3, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-virtual {v3, v2, v0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    new-instance v3, Laoc/kingdoms/lukasz/events/EventsManager$1;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Laoc/kingdoms/lukasz/events/EventsManager$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_6

    :cond_2
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    move v3, v2

    move v4, v3

    :goto_3
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    if-lez v4, :cond_5

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    move v4, v2

    :goto_4
    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    int-to-float v5, v3

    int-to-float v6, v2

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_5
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    :cond_6
    :goto_6
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    add-int/2addr v1, v3

    goto/16 :goto_2

    :cond_7
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget v3, v1, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget v1, v1, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    if-lt v1, v3, :cond_8

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iput v2, v1, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    :cond_8
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_EVENTS:I

    add-int/2addr v0, v1

    goto/16 :goto_1

    :cond_9
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->SCENARIO_EVENTS:Z

    if-eqz v0, :cond_12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_EVENTS:I

    rem-int/2addr p0, v0

    :goto_7
    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsScenarioSize:I

    if-ge p0, v0, :cond_12

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget v0, v0, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    rem-int/2addr v0, v1

    :goto_8
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_10

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_f

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v1, :cond_a

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_a
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/events/Event;->possible_to_run:Z

    if-eqz v1, :cond_f

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, p0, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    new-instance v1, Laoc/kingdoms/lukasz/events/EventsManager$2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Laoc/kingdoms/lukasz/events/EventsManager$2;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_c

    :cond_b
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    move v1, v2

    move v3, v1

    :goto_9
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_c
    if-lez v3, :cond_e

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    move v3, v2

    :goto_a
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_e

    int-to-float v4, v1

    int-to-float v5, v2

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v6, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_d

    goto :goto_b

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_e
    move v3, v2

    :goto_b
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    :cond_f
    :goto_c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    add-int/2addr v0, v1

    goto/16 :goto_8

    :cond_10
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget v1, v0, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget v0, v0, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_CIVS:I

    if-lt v0, v1, :cond_11

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iput v2, v0, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    :cond_11
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->gameUpdate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GameUpdate;->GAME_UPDATE_EVENTS_EVENTS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr p0, v0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_12
    return-void
.end method

.method public static final runEvents_ExactDay()V
    .locals 10

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_a

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_a

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-gt v3, v4, :cond_1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-lt v3, v4, :cond_0

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->month:I

    if-gt v3, v4, :cond_1

    :cond_0
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-lt v3, v4, :cond_9

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->month:I

    if-lt v3, v4, :cond_9

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->day:I

    if-lt v3, v4, :cond_9

    :cond_1
    move v3, v1

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_7

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v4, :cond_2

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_2
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-virtual {v4, v2, v5, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    new-instance v4, Laoc/kingdoms/lukasz/events/EventsManager$5;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/EventsManager$5;-><init>(Ljava/lang/String;I)V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_5

    :cond_3
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    move v4, v2

    move v5, v4

    :goto_2
    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    if-lez v5, :cond_6

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    move v5, v2

    :goto_3
    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_6

    int-to-float v6, v4

    int-to-float v7, v2

    sget-object v8, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v9, v9, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_4
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->events:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_8
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_Events:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_15

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-gt v3, v4, :cond_c

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-lt v3, v4, :cond_b

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->month:I

    if-gt v3, v4, :cond_c

    :cond_b
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    if-lt v3, v4, :cond_14

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->month:I

    if-lt v3, v4, :cond_14

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v4, v4, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->day:I

    if-lt v3, v4, :cond_14

    :cond_c
    move v3, v1

    :goto_7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_13

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-lez v4, :cond_12

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v4, :cond_d

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    :cond_d
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {v3}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v3, v4, :cond_e

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v5, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    new-instance v4, Laoc/kingdoms/lukasz/events/EventsManager$6;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/events/EventsManager$6;-><init>(Ljava/lang/String;I)V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_b

    :cond_e
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_12

    move v4, v2

    move v5, v4

    :goto_8
    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_f

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_f
    if-lez v5, :cond_11

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    move v5, v2

    :goto_9
    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_11

    int-to-float v6, v4

    int-to-float v7, v2

    sget-object v8, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v9, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v9, v9, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_10

    goto :goto_a

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    move v5, v2

    :goto_a
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v7, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v7, v7, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsScenario:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    :cond_12
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_13
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->exactDate_EventsScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_15
    return-void
.end method

.method public static final runEvents_Global(I)V
    .locals 7

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    rem-int v0, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_6

    :try_start_1
    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    if-ge v0, v4, :cond_5

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-static {v4, v1}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_CHANGE_PRICE_SHOW_ONLY_THOSE_THAT_PLAYER_HAS:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr v0, v2

    if-nez v0, :cond_3

    if-nez v0, :cond_2

    :try_start_2
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v2, :cond_1

    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getValue1()I

    move-result v5

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->hasResource(II)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :catch_0
    :cond_3
    :goto_1
    :try_start_3
    sget-object v4, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome()V

    if-eqz v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    div-int/2addr v5, v1

    neg-int v5, v5

    invoke-virtual {v0, v1, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    new-instance v0, Laoc/kingdoms/lukasz/events/EventsManager$9;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-direct {v0, v4, v5}, Laoc/kingdoms/lukasz/events/EventsManager$9;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_2

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    add-int/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalSize:I

    if-lt v0, v4, :cond_6

    sput v3, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID:I

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->RUN_GLOBAL_EVENTS_EVERY_X_TURNS:I

    rem-int/2addr p0, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez p0, :cond_d

    :try_start_5
    sget p0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    if-ge p0, v0, :cond_c

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz p0, :cond_7

    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_c

    :cond_7
    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-static {v3}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    const/4 v4, 0x5

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_CHANGE_PRICE_SHOW_ONLY_THOSE_THAT_PLAYER_HAS:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    xor-int/2addr p0, v2

    if-nez p0, :cond_a

    if-nez p0, :cond_9

    :try_start_6
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v6, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getValue1()I

    move-result v5

    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->hasResource(II)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    move p0, v3

    goto :goto_4

    :cond_9
    :goto_3
    move p0, v2

    :catch_2
    :cond_a
    :goto_4
    :try_start_7
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome()V

    if-eqz p0, :cond_b

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->events:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Events;->EVENT_TIME_TO_RESPOND:I

    div-int/2addr v5, v1

    neg-int v1, v5

    invoke-virtual {p0, v4, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    new-instance p0, Laoc/kingdoms/lukasz/events/EventsManager$10;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-direct {p0, v0, v1}, Laoc/kingdoms/lukasz/events/EventsManager$10;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_5

    :cond_b
    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    iget-object p0, p0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v2, :cond_c

    sget-object p0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobalScenario:Ljava/util/List;

    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/Event;

    iget-object p0, p0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    :try_start_8
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_c
    :goto_5
    sget p0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    add-int/2addr p0, v2

    sput p0, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I

    sget v0, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsGlobalScenarioSize:I

    if-lt p0, v0, :cond_d

    sput v3, Laoc/kingdoms/lukasz/events/EventsManager;->runEventGlobalID_Scenario:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public static final runEvents_Siege(II)V
    .locals 6

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    :try_start_0
    sget v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeSize:I

    if-ge v0, v1, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p0, v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    new-instance v1, Laoc/kingdoms/lukasz/events/EventsManager$7;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Laoc/kingdoms/lukasz/events/EventsManager$7;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_4

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    move v1, p1

    move v2, v1

    :goto_1
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventOption;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez v2, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    move v2, p1

    :goto_2
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    int-to-float v3, v1

    int-to-float v4, p1

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, p1

    :goto_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiege:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_4
    move v0, p1

    :goto_5
    sget v1, Laoc/kingdoms/lukasz/events/EventsManager;->iEventsSiegeScenarioSize:I

    if-ge v0, v1, :cond_d

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    if-eqz v1, :cond_7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->hasVariable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    :cond_7
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/events/Event;->runTriggers(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p0}, Laoc/kingdoms/lukasz/events/EventsManager;->updateRandomProvinceID(I)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne p0, v1, :cond_8

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0, p1}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addActiveEvent(III)V

    new-instance p0, Laoc/kingdoms/lukasz/events/EventsManager$8;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "4"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/events/EventsManager$8;-><init>(Ljava/lang/String;I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto/16 :goto_9

    :cond_8
    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    move v1, p1

    move v2, v1

    :goto_6
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    int-to-float v2, v2

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/EventOption;

    iget v3, v3, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    if-lez v2, :cond_b

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    move v2, p1

    :goto_7
    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    int-to-float v3, v1

    int-to-float v4, p1

    sget-object v5, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->ai:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_a

    move p1, v2

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    :goto_8
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    sget-object v2, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/events/EventsManager;->eventsSiegeScenario:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_d
    :goto_9
    return-void
.end method

.method public static final takeEventDecision(IIII)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-static {p2, p1}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventsGlobal_Variables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-static {p2, p1}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventsDataVariables:Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;

    invoke-static {p2, p1}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->addVariable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_1
    invoke-static {p2, p1}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/events/EventOption;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/events/EventOption;->executeOutcome(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static final updateRandomProvinceID(I)V
    .locals 4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result p0

    iput p0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    return-void

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-ne v0, p0, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p0

    iput p0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    return-void

    :cond_1
    if-nez p0, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v1

    if-gez v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
