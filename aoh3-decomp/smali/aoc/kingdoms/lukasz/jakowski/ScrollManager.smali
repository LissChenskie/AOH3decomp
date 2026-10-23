.class public Laoc/kingdoms/lukasz/jakowski/ScrollManager;
.super Ljava/lang/Object;
.source "ScrollManager.java"


# static fields
.field private static final DEFAULT_SCROLL:I = 0xf

.field private static iScroll:I = 0xf

.field private static lScrollTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final getIsScrollableX_MenuHovered(I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getScrollableX()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method protected static final getIsScrollableY_MenuHovered(I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getScrollableY()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method protected static final getIsScrollable_Hovered_MenuElement()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v2, v2, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v2, v2, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getScrollable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method protected static final scrollHoveredMenuElement(I)V
    .locals 2

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v1, v1, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v1, v1, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->scrollByWheel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected static final scrollHoveredMenu_X(II)V
    .locals 2

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->stopScrolling()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getNewMenuPosX()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosX(I)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result p1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/menu/HoverManager;->actionMove_Hover(IIZ)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected static final scrollHoveredMenu_Y(II)V
    .locals 2

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->stopScrolling()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getNewMenuPosY()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosY(I)V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result p1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/menu/HoverManager;->actionMove_Hover(IIZ)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final scrolled(I)Z
    .locals 3

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Touch;->getMousePosY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/HoverManager;->getHoveredMenuID_Scroll(II)I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->getIsScrollable_Hovered_MenuElement()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->updateScroll()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    neg-int v0, v0

    mul-int/2addr v0, p0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->scrollHoveredMenuElement(I)V

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->getIsScrollableY_MenuHovered(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->updateScroll()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    neg-int v1, v1

    mul-int/2addr v1, p0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->scrollHoveredMenu_Y(II)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->getIsScrollableX_MenuHovered(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->updateScroll()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    neg-int v1, v1

    mul-int/2addr v1, p0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->scrollHoveredMenu_X(II)V

    goto :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-gez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-gez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    invoke-virtual {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->Scroll(I)V

    :cond_3
    :goto_0
    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playHover()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method protected static final updateHoveredMenuElement_Hover(II)V
    .locals 4

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v0, v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v1, v1, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v1, v1, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v2, v2, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->hoverManager:Laoc/kingdoms/lukasz/menu/HoverManager;

    iget v3, v3, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, p0, p1, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->updateHover(IIII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected static final updateScroll()V
    .locals 4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->lScrollTime:J

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->lScrollTime:J

    sget v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    int-to-float v1, v0

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    const/16 v1, 0x4b

    if-le v0, v1, :cond_1

    sput v1, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    goto :goto_0

    :cond_0
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->lScrollTime:J

    const/16 v0, 0xf

    sput v0, Laoc/kingdoms/lukasz/jakowski/ScrollManager;->iScroll:I

    :cond_1
    :goto_0
    return-void
.end method
