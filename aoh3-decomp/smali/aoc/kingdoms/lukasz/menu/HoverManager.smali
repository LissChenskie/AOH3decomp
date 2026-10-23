.class public Laoc/kingdoms/lukasz/menu/HoverManager;
.super Ljava/lang/Object;
.source "HoverManager.java"


# static fields
.field public static HOVER_MOBILE_TIME_VISIBLE:I = 0x61a8

.field protected static hoverMobileTime:J

.field public static hoverTime:J


# instance fields
.field public hoverActiveMenuElementID:I

.field public hoverActiveMenuTitleCloseHovered:Z

.field public hoverActiveMenuTitleID:I

.field public hoverActiveSliderMenuID:I

.field public lHoverLoadedTemporaryImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleCloseHovered:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final actionMove_Hover(IIZ)Z
    .locals 6

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    sget-boolean p3, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    if-eqz p3, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object p3, p3, Laoc/kingdoms/lukasz/menu/MenuManager;->dialogMenu:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    return v1

    :cond_1
    const/4 p3, -0x1

    iput p3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleCloseHovered:Z

    iget p3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz p3, :cond_3

    iget p3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    if-ltz p3, :cond_3

    :try_start_1
    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p3

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p3

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {p3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTypeOfElement()Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move-result-object p3

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    if-eq p3, v2, :cond_2

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p3

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {p3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getClickable()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p3

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {p3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result p3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v2

    add-int/2addr p3, v2

    if-lt p1, p3, :cond_3

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p3

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {p3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result p3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v2

    add-int/2addr p3, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr p3, v2

    if-gt p1, p3, :cond_3

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p3

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {p3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result p3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v2

    add-int/2addr p3, v2

    if-lt p2, p3, :cond_3

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p3

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {p3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result p3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr p3, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v2

    add-int/2addr p3, v2

    if-gt p2, p3, :cond_3

    return v1

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V
    :try_end_2
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_0
    move p3, v0

    :goto_1
    :try_start_3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_c

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    if-lt p1, v2, :cond_9

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_9

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    if-lt p2, v2, :cond_9

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_9

    move v2, v0

    :goto_2
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v3

    if-ge v2, v3, :cond_8

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->canBeHovered()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v4

    add-int/2addr v3, v4

    if-lt p1, v3, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    if-lt p2, v3, :cond_7

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v4

    add-int/2addr v3, v4

    if-gt p2, v3, :cond_7

    iget p1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result p2

    if-ne p1, p2, :cond_4

    iget p1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-eq p1, v2, :cond_6

    :cond_4
    iget p1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz p1, :cond_5

    iget p1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz p1, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    goto :goto_3

    :cond_5
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->resetAnimation()V

    :goto_3
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide p1, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverTime:J

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu/Menu;

    iget p2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p1

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsHovered(Z)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu/Menu;

    iget p2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->buildElementHover()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->updateHoveredFlag()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu/Menu;

    iget p2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->playSFX_Hovered()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playHover()V

    :cond_6
    return v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_8
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getLockHoverOverMenuBackground()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    return v1

    :cond_9
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    if-eqz v2, :cond_b

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    if-lt p1, v2, :cond_b

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_b

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt p2, v2, :cond_b

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    if-gt p2, v2, :cond_b

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getCloseable()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {v2}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosX()I

    move-result v2

    if-lt p1, v2, :cond_a

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {v2}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object v3, v3, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_Width()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_a

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object p1, p1, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {p1}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosY()I

    move-result p1

    if-lt p2, p1, :cond_a

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object p1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object p1, p1, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {p1}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosY()I

    move-result p1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {v2}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_Height()I

    move-result v2

    add-int/2addr p1, v2

    if-gt p2, p1, :cond_a

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleCloseHovered:Z

    :cond_a
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    return v1

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_c
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V
    :try_end_4
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_4
    return v0
.end method

.method public final getHoveredMenuID_Scroll(II)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    :try_start_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    if-lt p1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    if-lt p2, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getScrollableX()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getScrollableY()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result p1

    return p1

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    if-lt p1, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt p2, v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveOrder(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p2, v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    return v1
.end method

.method protected final getMenuElementHover_IsInView()Z
    .locals 2

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

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getMenuElement_Hover_IsNull()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final isSomethingHovered()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final loadHoverLoadedTemporaryImage(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p1

    invoke-direct {v2, p1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    const-string v2, "gfx/imageNotFound.png"

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final rebuildHoverAfterRebuildMenu()V
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsHovered(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->buildElementHover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final resetHoverActive_Menu()V
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v1, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsHovered(Z)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->resetElementHover()V

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->updateHoveredFlag()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    :cond_1
    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    return-void
.end method

.method public final resetHoverActive_Menu_Force()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuTitleID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->updateHoveredFlag()V

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->lHoverLoadedTemporaryImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final udpateMobile()V
    .locals 6

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isAndroid:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->getMenuElementHover_IsInView()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverMobileTime:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget v4, Laoc/kingdoms/lukasz/menu/HoverManager;->HOVER_MOBILE_TIME_VISIBLE:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/HoverManager;->resetHoverActive_Menu()V

    :cond_0
    return-void
.end method

.method protected final updateElementHover_Animation()V
    .locals 6

    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_TIME:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_INTERVAL:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    const v4, 0x3fd33333    # 1.65f

    mul-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    sput v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_PADDING:F

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sput v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->ANIMATION_ALPHA:F

    :cond_1
    return-void
.end method

.method public final updateHoveredElement()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v0, :cond_0

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTypeOfElement()Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    if-eq v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->updateHovered()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final updateHoveredFlag()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTypeOfElement()Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON_FLAG:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    if-eq v1, v2, :cond_1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    goto :goto_0

    :cond_0
    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateHoveredMenuElement_Hover(II)V
    .locals 4

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    if-ltz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    if-ltz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/Menu;

    iget v1, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveMenuElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenu()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverActiveSliderMenuID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->updateHover(IIII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
