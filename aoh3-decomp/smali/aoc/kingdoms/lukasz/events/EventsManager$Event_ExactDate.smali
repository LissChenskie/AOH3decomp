.class public Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;
.super Ljava/lang/Object;
.source "EventsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/events/EventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event_ExactDate"
.end annotation


# instance fields
.field public day:I

.field public eventID:I

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    iput p2, p0, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->day:I

    iput p3, p0, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->month:I

    iput p4, p0, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    return-void
.end method
