.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;
.source "TextArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextAreaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V

    return-void
.end method


# virtual methods
.method protected checkFocusTraversal(C)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->focusTraversal:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected goEnd(Z)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    :cond_2
    :goto_1
    return-void
.end method

.method protected goHome(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->linesBreak:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    :cond_1
    :goto_0
    return-void
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    move-result p1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasKeyboardFocus()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v0, 0x3b

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v2, 0x3c

    invoke-interface {p1, v2}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    const/16 v2, 0x14

    if-ne p2, v2, :cond_4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iput-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->clearSelection()V

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveCursorLine(I)V

    :goto_3
    move v0, v1

    goto :goto_5

    :cond_4
    const/16 v2, 0x13

    if-ne p2, v2, :cond_7

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursor:I

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->selectionStart:I

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iput-boolean v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->hasSelection:Z

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->clearSelection()V

    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveCursorLine(I)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    :goto_5
    if-eqz v0, :cond_8

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->scheduleKeyRepeatTask(I)V

    :cond_8
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    return v1

    :cond_9
    return p1
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z

    move-result p1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->showCursor()V

    return p1
.end method

.method protected setCursorPosition(FF)V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->moveOffset:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getHeight()F

    move-result v2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    sub-float/2addr p1, v3

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v0

    sub-float/2addr p2, v0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    sub-float/2addr v2, p2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getLineHeight()F

    move-result v1

    div-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->firstLineShowing:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->getLines()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->cursorLine:I

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->setCursorPosition(FF)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea$TextAreaListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextArea;->updateCurrentLine()V

    return-void
.end method
