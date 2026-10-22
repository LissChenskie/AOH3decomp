.class public Lcom/badlogic/gdx/utils/IntFloatMap;
.super Ljava/lang/Object;
.source "IntFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntFloatMap$Keys;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Values;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Entries;,
        Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private transient entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

.field private transient entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

.field hasZeroValue:Z

.field keyTable:[I

.field private transient keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

.field private transient keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

.field private final loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field private threshold:I

.field valueTable:[F

.field private transient values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

.field private transient values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

.field zeroValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->shift:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menu/FQy/TGqtTWl;->JVJkrm:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 4

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iget-boolean p1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    return-void
.end method

.method private locateKey(I)I
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->place(I)I

    move-result v1

    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    :cond_0
    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private putResize(IF)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->place(I)I

    move-result v1

    :goto_0
    aget v2, v0, v1

    if-nez v2, :cond_0

    aput p1, v0, v1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private resize(I)V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->shift:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    new-array v3, p1, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    aget v3, v1, p1

    if-eqz v3, :cond_0

    aget v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntFloatMap;->putResize(IF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    return-void
.end method

.method public clear(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    return-void
.end method

.method public containsKey(I)Z
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(F)Z
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v3, v2

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_2

    aget v4, v0, v3

    if-eqz v4, :cond_1

    aget v4, v2, v3

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(FF)Z
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v3, v2

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_2

    aget v4, v0, v3

    if-eqz v4, :cond_1

    aget v4, v2, v3

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;
    .locals 3

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/badlogic/gdx/utils/IntFloatMap;

    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    if-eqz v3, :cond_4

    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_7

    aget v6, v1, v5

    if-eqz v6, :cond_6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v8

    cmpl-float v7, v8, v7

    if-nez v7, :cond_5

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/utils/IntFloatMap;->containsKey(I)Z

    move-result v6

    if-nez v6, :cond_5

    return v2

    :cond_5
    aget v6, v3, v5

    cmpl-float v6, v8, v6

    if-eqz v6, :cond_6

    return v2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public findKey(FFI)I
    .locals 4

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    aget v3, v0, v2

    if-eqz v3, :cond_1

    aget v3, v1, v2

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_1

    aget p1, v0, v2

    return p1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method public findKey(FI)I
    .locals 5

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    aget v3, v0, v2

    if-eqz v3, :cond_1

    aget v4, v1, v2

    cmpl-float v4, v4, p1

    if-nez v4, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public get(IF)F
    .locals 0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    :cond_0
    return p2

    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget p2, p2, p1

    :cond_2
    return p2
.end method

.method public getAndIncrement(IFF)F
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    add-float/2addr p3, p2

    iput p3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    return p2

    :cond_0
    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    add-float/2addr p3, p1

    iput p3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget p2, p1, v1

    add-float/2addr p3, p2

    aput p3, p1, v1

    return p2

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v2, v1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    add-float/2addr p3, p2

    aput p3, p1, v1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget p3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt p1, p3, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    :cond_3
    return p2
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v1, v4

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v5, 0x1f

    aget v6, v2, v4

    invoke-static {v6}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap;->entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntFloatMap$Keys;
    .locals 3

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected place(I)I
    .locals 4

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public put(IFF)F
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iget-boolean p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez p2, :cond_0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    return p3

    :cond_0
    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget p3, p1, v1

    aput p2, p1, v1

    return p3

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v2, v1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, p1, v1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt p1, p2, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    :cond_3
    return p3
.end method

.method public put(IF)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, p1, v1

    return-void

    :cond_2
    add-int/2addr v1, v0

    neg-int v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v2, v1

    iget-object p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, p1, v1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt p1, p2, :cond_3

    array-length p1, v2

    shl-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    :cond_3
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 5

    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->ensureCapacity(I)V

    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-virtual {p0, v1, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object p1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    if-eqz v3, :cond_1

    aget v4, p1, v1

    invoke-virtual {p0, v3, v4}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public remove(IF)F
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez p1, :cond_0

    return p2

    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->locateKey(I)I

    move-result p1

    if-gez p1, :cond_2

    return p2

    :cond_2
    iget-object p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v2, v1, p1

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    add-int/lit8 v4, p1, 0x1

    :goto_0
    and-int/2addr v4, v3

    aget v5, p2, v4

    if-eqz v5, :cond_4

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/IntFloatMap;->place(I)I

    move-result v6

    sub-int v7, v4, v6

    and-int/2addr v7, v3

    sub-int v6, p1, v6

    and-int/2addr v6, v3

    if-le v7, v6, :cond_3

    aput v5, p2, p1

    aget v5, v1, v4

    aput v5, v1, p1

    move p1, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    aput v0, p2, p1

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    return v2
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->tableSize(IF)I

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v3, v1

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    const-string v4, "0="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    aget v3, v1, v4

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_5

    aget v3, v1, v4

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/badlogic/gdx/utils/IntFloatMap$Values;
    .locals 3

    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->reset()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    return-object v0
.end method
