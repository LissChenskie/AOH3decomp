.class public Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;
.super Ljava/lang/Object;
.source "PlayerActiveEvent.java"


# instance fields
.field public eventType:I

.field public iTurnID:I

.field public id:I

.field public value1:I

.field public value2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    return-void
.end method

.method public constructor <init>(IIIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->eventType:I

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->id:I

    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->iTurnID:I

    iput p4, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->value1:I

    iput p5, p0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerActiveEvent;->value2:F

    return-void
.end method
