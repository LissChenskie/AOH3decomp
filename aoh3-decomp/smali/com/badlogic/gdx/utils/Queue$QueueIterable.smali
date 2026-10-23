.class public Lcom/badlogic/gdx/utils/Queue$QueueIterable;
.super Ljava/lang/Object;
.source "Queue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final allowRemove:Z

.field private iterator1:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

.field private final queue:Lcom/badlogic/gdx/utils/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Queue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Queue<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/Queue$QueueIterable;-><init>(Lcom/badlogic/gdx/utils/Queue;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Queue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Queue<",
            "TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->queue:Lcom/badlogic/gdx/utils/Queue;

    iput-boolean p2, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->allowRemove:Z

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->queue:Lcom/badlogic/gdx/utils/Queue;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->allowRemove:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Queue$QueueIterator;-><init>(Lcom/badlogic/gdx/utils/Queue;Z)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator1:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->queue:Lcom/badlogic/gdx/utils/Queue;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->allowRemove:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Queue$QueueIterator;-><init>(Lcom/badlogic/gdx/utils/Queue;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator1:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    new-instance v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->queue:Lcom/badlogic/gdx/utils/Queue;

    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->allowRemove:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Queue$QueueIterator;-><init>(Lcom/badlogic/gdx/utils/Queue;Z)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator2:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator1:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->valid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator1:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    iput v2, v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->index:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator1:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator2:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator1:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator2:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    iput v2, v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->index:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator2:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator1:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator2:Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    return-object v0
.end method
