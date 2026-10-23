.class Laoc/kingdoms/lukasz/jakowski/AA_Game$1;
.super Lcom/badlogic/gdx/InputAdapter;
.source "AA_Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/AA_Game;->initInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/AA_Game;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .locals 0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyDown(I)Z

    move-result p1

    return p1
.end method

.method public keyTyped(C)Z
    .locals 3

    const-string v0, ""

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v1, :cond_2

    if-lez p1, :cond_2

    const/16 v1, 0x12

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;->actionType(Ljava/lang/String;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    invoke-interface {p1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;->delete()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public keyUp(I)Z
    .locals 0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyUp(I)Z

    move-result p1

    return p1
.end method

.method public mouseMoved(II)Z
    .locals 1

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->setMousePosXY(II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapEdgeMove:Laoc/kingdoms/lukasz/map/map/MapEdgeMove;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapEdgeMove;->MouseMoved_EdgeMove(II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionMove_Hover(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public scrolled(FF)Z
    .locals 1

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-nez v0, :cond_0

    add-float/2addr p1, p2

    float-to-int p1, p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->scrolled(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public touchDown(IIII)Z
    .locals 1

    sput p4, Laoc/kingdoms/lukasz/jakowski/Touch;->buttonTouch:I

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->setMousePosXY(II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionDown(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public touchDragged(III)Z
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapScroll:Laoc/kingdoms/lukasz/map/map/MapScroll;

    invoke-virtual {v1, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapScroll;->setScrollPos(II)V

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->setMousePosXY(II)V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Input;->isTouched(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    iget-object p3, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object p3

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v1

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3, v2}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Input;->getX(I)I

    move-result v3

    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Input;->getY(I)I

    move-result v4

    invoke-virtual {p3, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionMove(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionMove(III)V

    :goto_0
    sget-boolean p3, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionMove_Hover(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return v0
.end method

.method public touchUp(IIII)Z
    .locals 1

    invoke-static {p1, p2}, Laoc/kingdoms/lukasz/jakowski/Touch;->setMousePosXY(II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/AA_Game$1;->this$0:Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;->access$000(Laoc/kingdoms/lukasz/jakowski/AA_Game;)Laoc/kingdoms/lukasz/jakowski/Touch;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/Touch;->actionUp(IIII)V

    const/4 p1, 0x1

    return p1
.end method
