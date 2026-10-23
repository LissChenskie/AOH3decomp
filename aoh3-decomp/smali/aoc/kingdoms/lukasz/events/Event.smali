.class public Laoc/kingdoms/lukasz/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public image:Ljava/lang/String;

.field public mission_desc:Ljava/lang/String;

.field public mission_image:I

.field public only_once:Z

.field public options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/EventOption;",
            ">;"
        }
    .end annotation
.end field

.field public popUp:Z

.field public possible_to_run:Z

.field public runCivsID:I

.field public run_in_background:Z

.field public show_in_missions:Z

.field public title:Ljava/lang/String;

.field public triggersAnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger;",
            ">;"
        }
    .end annotation
.end field

.field public triggersAndNot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger;",
            ">;"
        }
    .end annotation
.end field

.field public triggersOr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger;",
            ">;"
        }
    .end annotation
.end field

.field public triggersOrNot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/events/triggers/EventTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/map/civilization/stats/LQy/lJxd;->TNHbnhktUhsIHUJ:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->title:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->desc:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->mission_desc:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->image:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/events/Event;->only_once:Z

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/events/Event;->mission_image:I

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/events/Event;->show_in_missions:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/events/Event;->popUp:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/events/Event;->run_in_background:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/events/Event;->possible_to_run:Z

    iput v1, p0, Laoc/kingdoms/lukasz/events/Event;->runCivsID:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEvent()Z
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addTrigger(Laoc/kingdoms/lukasz/events/triggers/EventTrigger;I)V
    .locals 1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p2, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object p2, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final runTriggers(I)Z
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_1

    :try_start_0
    iget-object v3, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-virtual {v3, p1, v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->runTriggers(II)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v1

    :catch_0
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_3

    :try_start_1
    iget-object v3, p0, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-virtual {v3, p1, v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->runTriggers(II)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_2

    return v1

    :catch_1
    move-exception v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_5

    :try_start_2
    iget-object v3, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-virtual {v3, p1, v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->runTriggers(II)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v3, :cond_4

    return v2

    :catch_2
    move-exception v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_7

    :try_start_3
    iget-object v3, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    invoke-virtual {v3, p1, v2}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->runTriggers(II)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v3, :cond_6

    return v2

    :catch_3
    move-exception v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_9

    iget-object p1, p0, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :cond_9
    :goto_4
    return v1
.end method
