.class public Lcom/badlogic/gdx/utils/IntFloatMap$Entries;
.super Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;
.source "IntFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntFloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
        ">;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    new-instance p1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->hasNext:Z

    return v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->hasNext:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->key:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iput v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->value:F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->nextIndex:I

    aget v0, v0, v2

    iput v0, v1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->key:I

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->nextIndex:I

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->value:F

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->nextIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->currentIndex:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->findNextIndex()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->entry:Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    return-object v0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->next()Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->reset()V

    return-void
.end method
