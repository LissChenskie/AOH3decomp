.class Lcom/badlogic/gdx/utils/LongMap$MapIterator;
.super Ljava/lang/Object;
.source "LongMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final INDEX_ILLEGAL:I = -0x2

.field static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I

.field valid:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->valid:Z

    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->reset()V

    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v1, v0

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    aget-wide v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    return-void
.end method

.method public remove()V
    .locals 11

    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-boolean v1, v1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iput-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v4, v4, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    add-int/lit8 v5, v0, 0x1

    :goto_0
    and-int/2addr v5, v4

    aget-wide v6, v1, v5

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_2

    iget-object v8, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v8, v6, v7}, Lcom/badlogic/gdx/utils/LongMap;->place(J)I

    move-result v8

    sub-int v9, v5, v8

    and-int/2addr v9, v4

    sub-int v8, v0, v8

    and-int/2addr v8, v4

    if-le v9, v8, :cond_1

    aput-wide v6, v1, v0

    aget-object v6, v3, v5

    aput-object v6, v3, v0

    move v0, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    aput-wide v8, v1, v0

    aput-object v2, v3, v0

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    :cond_3
    :goto_1
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->findNextIndex()V

    :goto_0
    return-void
.end method
