.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_ExactDay.java"


# instance fields
.field public day:I

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->day:I

    iput p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->month:I

    iput p3, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->year:I

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->time:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Date"

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

.method public getText2()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->month:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText3()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public outCondition(II)Z
    .locals 0

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->year:I

    if-gt p1, p2, :cond_2

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->year:I

    if-lt p1, p2, :cond_0

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->month:I

    if-gt p1, p2, :cond_2

    :cond_0
    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->year:I

    if-lt p1, p2, :cond_1

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->month:I

    if-lt p1, p2, :cond_1

    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentDay:I

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ExactDay;->day:I

    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
