.class public abstract Lcom/badlogic/gdx/AbstractInput;
.super Ljava/lang/Object;
.source "AbstractInput.java"

# interfaces
.implements Lcom/badlogic/gdx/Input;


# instance fields
.field protected final justPressedKeys:[Z

.field protected keyJustPressed:Z

.field private final keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

.field protected pressedKeyCount:I

.field protected final pressedKeys:[Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    const/16 v0, 0x100

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeys:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->justPressedKeys:[Z

    return-void
.end method


# virtual methods
.method public isCatchBackKey()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isCatchKey(I)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public isCatchMenuKey()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method public isKeyJustPressed(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/badlogic/gdx/AbstractInput;->keyJustPressed:Z

    return p1

    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->justPressedKeys:[Z

    aget-boolean p1, v0, p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isKeyPressed(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeyCount:I

    if-lez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    if-ltz p1, :cond_3

    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/AbstractInput;->pressedKeys:[Z

    aget-boolean p1, v0, p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public setCatchBackKey(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/AbstractInput;->setCatchKey(IZ)V

    return-void
.end method

.method public setCatchKey(IZ)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntSet;->remove(I)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/AbstractInput;->keysToCatch:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    :goto_0
    return-void
.end method

.method public setCatchMenuKey(Z)V
    .locals 1

    const/16 v0, 0x52

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/AbstractInput;->setCatchKey(IZ)V

    return-void
.end method
