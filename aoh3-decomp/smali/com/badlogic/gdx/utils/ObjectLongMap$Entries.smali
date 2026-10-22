.class public Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
.super Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;
.source "ObjectLongMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/ObjectLongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator<",
        "TK;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
        "TK;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectLongMap<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectLongMap;)V

    new-instance p1, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->hasNext:Z

    return v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entries<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectLongMap$Entry<",
            "TK;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->hasNext:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectLongMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->nextIndex:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->key:Ljava/lang/Object;

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectLongMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectLongMap;->valueTable:[J

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->nextIndex:I

    aget-wide v2, v1, v2

    iput-wide v2, v0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;->value:J

    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->nextIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->currentIndex:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->findNextIndex()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectLongMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectLongMap$MapIterator;->reset()V

    return-void
.end method
