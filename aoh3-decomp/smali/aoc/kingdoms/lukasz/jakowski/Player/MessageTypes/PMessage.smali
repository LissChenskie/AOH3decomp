.class public Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
.super Ljava/lang/Object;
.source "PMessage.java"


# instance fields
.field public expiresTurnID:I

.field public fromCivID:I

.field public iValue1:I

.field public key:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->key:Ljava/lang/String;

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->fromCivID:I

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->expiresTurnID:I

    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->iValue1:I

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->time:J

    return-void
.end method


# virtual methods
.method public actionClick()V
    .locals 0

    return-void
.end method

.method public buildElementHover()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageID()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    return v0
.end method

.method public onAccept()V
    .locals 0

    return-void
.end method

.method public onRefuse()V
    .locals 0

    return-void
.end method
