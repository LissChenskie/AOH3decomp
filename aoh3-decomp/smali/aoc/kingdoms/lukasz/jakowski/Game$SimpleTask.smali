.class public Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleTask"
.end annotation


# instance fields
.field public id:I

.field public id2:I

.field public taskKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->taskKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->taskKey:Ljava/lang/String;

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->id:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->taskKey:Ljava/lang/String;

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->id:I

    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->id2:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->taskKey:Ljava/lang/String;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;->taskKey:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .locals 0

    return-void
.end method
