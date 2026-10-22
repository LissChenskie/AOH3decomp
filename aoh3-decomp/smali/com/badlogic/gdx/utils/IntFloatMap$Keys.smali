.class public Lcom/badlogic/gdx/utils/IntFloatMap$Keys;
.super Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;
.source "IntFloatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/IntFloatMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keys"
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->hasNext:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->nextIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->nextIndex:I

    aget v0, v0, v1

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->currentIndex:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->findNextIndex()V

    return v0

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

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/IntArray;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->map:Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/IntArray;)Lcom/badlogic/gdx/utils/IntArray;
    .locals 1

    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->hasNext:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->next()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    return-object p1
.end method
