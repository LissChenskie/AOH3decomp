.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RandomChance;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_RandomChance.java"


# instance fields
.field public value:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RandomChance;->value:F

    return-void
.end method


# virtual methods
.method public getImage()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->dice:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Random"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

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

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RandomChance;->value:F

    const/16 v2, 0xa

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

.method public getText3()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public outCondition(II)Z
    .locals 1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const p2, 0xf4240

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_RandomChance;->value:F

    const v0, 0x461c4000    # 10000.0f

    mul-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
