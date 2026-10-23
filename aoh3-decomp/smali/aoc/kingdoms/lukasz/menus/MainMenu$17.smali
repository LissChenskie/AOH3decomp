.class Laoc/kingdoms/lukasz/menus/MainMenu$17;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;
.source "MainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;III)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu$17;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menus/MainMenu$17$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$17;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$17;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu$17;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menus/MainMenu;->getMenuPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$17;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$17;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu$17;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menus/MainMenu;->getMenuPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$17;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$17;->getHeight()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/MainMenu$17$1;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu$17;IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    return-void
.end method

.method public buildElementHover()V
    .locals 1

    invoke-static {}, Laoc/kingdoms/lukasz/menus/MainMenu;->getHoverAbout()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu$17;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$17;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method
