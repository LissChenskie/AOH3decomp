.class public Laoc/kingdoms/lukasz/menu/Menu;
.super Ljava/lang/Object;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu/Menu$MenuClose;
    }
.end annotation


# instance fields
.field private final COLOR_SCROLL_POSITION:Lcom/badlogic/gdx/graphics/Color;

.field private final COLOR_SCROLL_POSITION_INVIEW:Lcom/badlogic/gdx/graphics/Color;

.field private final COLOR_SCROLL_POSITION_INVIEW_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

.field public final SCROLL_MENU_UPDATE:F

.field private closeable:Z

.field public drawScrollPositionAlways:Z

.field public drawScrollPositionAlways2:Z

.field private fScrollNewMenuPosX:F

.field private fScrollNewMenuPosY:F

.field private iHeight:I

.field private iMaxSliderPositionX:I

.field protected iMaxSliderPositionY:I

.field private iMenuElementsSize:I

.field private iMenuPosX:I

.field private iMenuPosY:I

.field private iNewMenuPositionX:I

.field private iNewMenuPositionY:I

.field private iPosX:I

.field private iPosY:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iScrollPosY:I

.field private iScrollPosY2:I

.field private iWidth:I

.field private lockHoverOverMenuBackground:Z

.field public menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

.field private menuElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;"
        }
    .end annotation
.end field

.field private menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

.field public scrollExtraPosX:I

.field private scrollModeX:Z

.field private scrollModeY:Z

.field private scrollableX:Z

.field private scrollableY:Z

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->visible:Z

    const/4 v1, 0x0

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v1, 0x0

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->lockHoverOverMenuBackground:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->closeable:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    const/4 v2, -0x1

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    const/4 v3, 0x0

    iput v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeX:Z

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    iput v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    const v2, 0x3f7851ec    # 0.97f

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->SCROLL_MENU_UPDATE:F

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionAlways:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionAlways2:Z

    iput v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollExtraPosX:I

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3da0a0a1

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3d20a0a1

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e70f0f1

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3f028283

    const v4, 0x3ed8d8d9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e8c8c8d

    const v2, 0x3f19999a    # 0.6f

    const v4, 0x3ef0f0f1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menu/Menu;)Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .locals 0

    iget-object p0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    return-object p0
.end method

.method private drawView(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method private final getMenuElementIsInView_X(I)Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result p1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final getMenuElementIsInView_Y(I)Z
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v1

    add-int/2addr p1, v1

    if-lt v0, p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final resetScrollINFO()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu_Sound()V

    return-void
.end method

.method public actionCloseMenu_Sound()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    return-void
.end method

.method public actionElement(I)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->actionElement()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public actionElementPPM(I)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->actionElementPPM()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 1

    invoke-virtual {p0, p1, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawBackgroundMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Z)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v0

    neg-int v0, v0

    invoke-static {p1, p4, p2, p3, v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    return-void
.end method

.method public closeMenu()V
    .locals 0

    return-void
.end method

.method public disableButtons()V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->drawView(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public final drawBackgroundMode(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Z)V
    .locals 6

    if-eqz p2, :cond_1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMenuResizeMode()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMoveMenu_ByTitleMode()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3d4ccccd    # 0.05f

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {p2, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->patt:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    const/4 v2, 0x0

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->patt:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p2

    neg-int v3, p2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method

.method public drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getCloseMenuMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->btnh_close:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {p5}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosX()I

    move-result p5

    add-int/2addr p5, p2

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {p2}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, p5, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 p5, 0x3f800000    # 1.0f

    const v0, 0x3ed9999a    # 0.425f

    const/4 v1, 0x0

    invoke-direct {p4, p5, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->btnh_close:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {p5}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosX()I

    move-result p5

    add-int/2addr p5, p2

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {p2}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, p5, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    sget p4, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {p5}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosX()I

    move-result p5

    add-int/2addr p5, p2

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    invoke-interface {p2}, Laoc/kingdoms/lukasz/menu/Menu$MenuClose;->getCloseMenu_PosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, p5, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :goto_0
    return-void
.end method

.method public drawHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result p2

    add-int/2addr p2, p3

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenuElementID()I

    move-result p3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p3}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementIsActive(ZI)Z

    move-result p3

    invoke-virtual {p4, p1, v0, p2, p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->drawMenuElementHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public drawMenu(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenu_Scroll(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method public final drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 14

    const v0, 0x3e48b439

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v13

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    const/4 v5, -0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v6, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v10

    const/4 v11, -0x1

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final drawMenuElements(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsInView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v1

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v1

    add-int v5, v1, p3

    invoke-virtual {p0, p4, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementIsActive(ZI)Z

    move-result v6

    iget-boolean v7, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final drawMenuResizeRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 8

    const v0, 0x3e48b439

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMenuResizeLEFT()Z

    move-result v0

    const v6, 0x3eb33333    # 0.35f

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v3, v4

    sub-int v3, v1, v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v7, v7, v7, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v3

    sub-int v2, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v3, v4

    sub-int v3, v1, v3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v7, v7, v7, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawMenu_Scroll(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionX(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionY(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method public drawScrollPositionX(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionAlways:Z

    if-nez v0, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    iget-boolean p4, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result p4

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    if-ge p4, v0, :cond_2

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMenu_MoveInnerElements()Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object p4, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget p4, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    div-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    div-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result p4

    mul-int/lit8 p4, p4, 0x64

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    div-int/2addr p4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    mul-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x64

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int v5, p4, v1

    const/high16 v6, -0x3d4c0000    # -90.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIFZZ)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    div-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/2addr p4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    div-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    add-int/2addr p4, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    add-int/lit8 p2, p2, 0x1

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/high16 v6, -0x3d4c0000    # -90.0f

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public drawScrollPositionY(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    :try_start_0
    iget-boolean p4, p0, Laoc/kingdoms/lukasz/menu/Menu;->drawScrollPositionAlways2:Z

    if-eqz p4, :cond_1

    iget-boolean p4, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result p4

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    if-ge p4, v0, :cond_1

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMenu_MoveInnerElements()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Laoc/kingdoms/lukasz/menu/Menu;->COLOR_SCROLL_POSITION_INVIEW:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget p4, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result p4

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollExtraPosX:I

    add-int/2addr p4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr p4, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr p4, v1

    add-int/lit8 p4, p4, -0x1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/2addr v1, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v1, v3

    add-int/2addr p4, v1

    add-int v3, p4, p3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result p4

    mul-int/lit8 p4, p4, 0x64

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr p4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v1

    mul-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x64

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int v5, p4, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result p4

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollExtraPosX:I

    add-int/2addr p4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr p4, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr p4, v1

    add-int/lit8 p4, p4, -0x1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v4

    sub-int/2addr v3, v4

    mul-int/2addr v1, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v1, v3

    add-int/2addr p4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    add-int/2addr p4, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    add-int v3, p4, p3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->scroll_position_active:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result p4

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollExtraPosX:I

    add-int/2addr p4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr p4, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr p4, v1

    add-int/lit8 p4, p4, -0x1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr p4, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v3

    sub-int/2addr v1, v3

    mul-int/2addr p4, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr p4, v1

    add-int/2addr p2, p4

    add-int v3, p2, p3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x64

    iget p3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    div-int/2addr p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result p3

    mul-int/2addr p2, p3

    div-int/lit8 v5, p2, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 6

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result p2

    add-int v3, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    :cond_0
    if-eqz p4, :cond_2

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMenuResizeMode()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenuResizeRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    goto :goto_0

    :cond_1
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getMoveMenu_ByTitleMode()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->drawMenuBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 6

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->drawTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getCloseable()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/Status;->CLOSE_HOVERED:Laoc/kingdoms/lukasz/menu_element/Status;

    if-ne p5, v0, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->drawCloseButton(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    :cond_1
    return-void
.end method

.method public extraAction()V
    .locals 0

    return-void
.end method

.method public final getCloseable()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->closeable:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    return v0
.end method

.method public final getLockHoverOverMenuBackground()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->lockHoverOverMenuBackground:Z

    return v0
.end method

.method public final getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    return-object p1
.end method

.method public getMenuElementIsActive(ZI)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getActiveMenuElementID()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final getMenuElementsSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    return v0
.end method

.method public getMenuPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    return v0
.end method

.method public getMenuPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    return v0
.end method

.method public final getMinHeight()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getMinWidth()I
    .locals 1

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    return v0
.end method

.method public final getMoveable()Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getMoveable()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final getNewMenuPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    return v0
.end method

.method public final getNewMenuPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    return v0
.end method

.method public getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosY:I

    return v0
.end method

.method public final getResizable()Z
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getResizable()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final getScrollModeY()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    return v0
.end method

.method public final getScrollPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    return v0
.end method

.method public final getScrollableX()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    return v0
.end method

.method public final getScrollableY()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    return v0
.end method

.method public final getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->visible:Z

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    return v0
.end method

.method public initCloseMenu()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/menu/Menu$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/Menu$1;-><init>(Laoc/kingdoms/lukasz/menu/Menu;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuClose:Laoc/kingdoms/lukasz/menu/Menu$MenuClose;

    return-void
.end method

.method protected final initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    return-void
.end method

.method protected final initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;Z)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    return-void
.end method

.method protected final initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    return-void
.end method

.method protected final initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;ZZZZ)V"
        }
    .end annotation

    iput p2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    iput p3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosY:I

    iput p4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    iput p5, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    iput-boolean p9, p0, Laoc/kingdoms/lukasz/menu/Menu;->closeable:Z

    iput-boolean p7, p0, Laoc/kingdoms/lukasz/menu/Menu;->visible:Z

    iput-boolean p10, p0, Laoc/kingdoms/lukasz/menu/Menu;->lockHoverOverMenuBackground:Z

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    if-eqz p8, :cond_3

    const/4 p1, 0x0

    move p2, p1

    move p3, p2

    :goto_0
    iget p4, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    if-ge p2, p4, :cond_1

    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result p4

    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {p7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result p7

    add-int/2addr p4, p7

    if-le p4, p3, :cond_0

    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result p3

    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result p4

    add-int/2addr p3, p4

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p4, p3

    invoke-virtual {p2, p4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int p2, p5, p2

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result p4

    sub-int/2addr p2, p4

    if-le p3, p2, :cond_2

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    goto :goto_1

    :cond_2
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result p1

    sub-int/2addr p5, p1

    invoke-virtual {p2, p5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    :cond_3
    :goto_1
    iput-object p6, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    if-eqz p9, :cond_4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->initCloseMenu()V

    :cond_4
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuElements_IsInView()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    return-void
.end method

.method protected final initMenuWithBackButton(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    return-void
.end method

.method protected final initMenuWithBackButton(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;Z)V"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    return-void
.end method

.method protected final initMenuWithBackButton(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    return-void
.end method

.method protected final initMenuWithBackButton(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;",
            "IIII",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;ZZZ)V"
        }
    .end annotation

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu/Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZZZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onHovered()V
    .locals 0

    return-void
.end method

.method public onMenuPressed()V
    .locals 0

    return-void
.end method

.method public final scrollTheMenu()V
    .locals 5

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    const/4 v1, 0x1

    const v2, 0x3fb9999a    # 1.45f

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    if-lez v0, :cond_0

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    if-lez v3, :cond_0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float/2addr v4, v3

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    :cond_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    if-eqz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    if-lez v0, :cond_1

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    if-lez v3, :cond_1

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x3

    if-le v0, v3, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeX:Z

    :cond_1
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;->resetScrollINFO()V

    return-void
.end method

.method public setHeight(I)V
    .locals 3

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinHeight()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinHeight()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    add-int/2addr p1, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-lt p1, v0, :cond_3

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    :cond_3
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    return-void
.end method

.method public final setMenuElement(ILaoc/kingdoms/lukasz/menu_element/MenuElement;)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setMenuPosX(I)V
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosX(I)V

    return-void
.end method

.method public final setMenuPosY(I)V
    .locals 0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosY(I)V

    return-void
.end method

.method public setPosX(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosX(I)V

    return-void
.end method

.method public final setPosX_Force(I)V
    .locals 1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V

    return-void
.end method

.method public setPosX_Just(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    return-void
.end method

.method public setPosY(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosY:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosY(I)V

    return-void
.end method

.method public setPosY_Just(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosY:I

    return-void
.end method

.method public final setScrollPosX(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX2:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosX:I

    return-void
.end method

.method public final setScrollPosY(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY2:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iScrollPosY:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->visible:Z

    return-void
.end method

.method public setWidth(I)Z
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinWidth()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    const/4 p1, 0x0

    return p1

    :cond_0
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    return v1

    :cond_1
    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    return v1
.end method

.method public setWidth_Resize(I)Z
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMinWidth()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    sub-int/2addr v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->setPosX(I)V

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    sub-int/2addr v2, p1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->setPosX(I)V

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    return v1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    sub-int/2addr v2, p1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->setPosX(I)V

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iWidth:I

    return v1
.end method

.method public final stopScrolling()V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;->resetScrollINFO()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeX:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    return-void
.end method

.method public update()V
    .locals 5

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    const v1, 0x3f7851ec    # 0.97f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    float-to-int v4, v4

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosY(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosY:F

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeX:Z

    if-eqz v0, :cond_3

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosX(I)V

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    mul-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->fScrollNewMenuPosX:F

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeX:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    if-eq v0, v2, :cond_4

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosX:I

    move v3, v1

    :cond_4
    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    if-eq v0, v2, :cond_5

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuPosY:I

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuElements_IsInView()V

    :cond_6
    return-void
.end method

.method public final updateButtonWidth(III)I
    .locals 2

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    if-le v0, p3, :cond_0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p3

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {p3, v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setWidth(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setWidth(I)V

    :goto_0
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p3

    invoke-virtual {p3, p2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result p1

    return p1
.end method

.method public updateLanguage()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->updateLanguage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public updateMenuElements_IsInView()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementIsInView_Y(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementIsInView_X(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsInView(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateMenuElements_IsInView_X()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementIsInView_X(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setIsInView(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateMenuPosX(I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    sub-int/2addr v0, v2

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    sub-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V

    goto :goto_0

    :cond_1
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionX:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final updateMenuPosY(I)V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    const/4 v2, 0x1

    if-le p1, v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v3

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    sub-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollModeY:Z

    goto :goto_0

    :cond_2
    iput p1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iNewMenuPositionY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public final updateScrollable()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    move v1, v0

    :goto_0
    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMenuElementsSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    if-le v2, v3, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/Menu;->menuElements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    iget v1, p0, Laoc/kingdoms/lukasz/menu/Menu;->iMaxSliderPositionY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/Menu;->iHeight:I

    if-le v1, v2, :cond_4

    move v0, v3

    :cond_4
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableY:Z

    if-eqz v0, :cond_5

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosY:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosY(I)V

    :cond_5
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->scrollableX:Z

    if-eqz v0, :cond_6

    iget v0, p0, Laoc/kingdoms/lukasz/menu/Menu;->iPosX:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/Menu;->updateMenuPosX(I)V

    :cond_6
    return-void
.end method

.method public final updatedButtonsWidth(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Laoc/kingdoms/lukasz/menu/Menu;->updateButtonWidth(III)I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    return-void
.end method

.method public final updatedButtonsWidthFromToID(IIII)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Laoc/kingdoms/lukasz/menu/Menu;->updateButtonWidth(III)I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr p3, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    return-void
.end method

.method public final updatedButtonsWidth_Padding(III)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Laoc/kingdoms/lukasz/menu/Menu;->updateButtonWidth(III)I

    move-result v1

    add-int/2addr v1, p3

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateScrollable()V

    return-void
.end method
