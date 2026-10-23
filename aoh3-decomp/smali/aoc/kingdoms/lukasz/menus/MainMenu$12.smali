.class Laoc/kingdoms/lukasz/menus/MainMenu$12;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu;Ljava/lang/String;IIIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menus/MainMenu$12;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menus/MainMenu$12$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$12;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$12;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu$12;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menus/MainMenu;->getMenuPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$12;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$12;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/MainMenu$12;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menus/MainMenu;->getMenuPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$12;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/MainMenu$12;->getHeight()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menus/MainMenu$12$1;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu$12;IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    new-instance v0, Laoc/kingdoms/lukasz/menus/MainMenu$12$2;

    const-string v1, "loadBackground"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/menus/MainMenu$12$2;-><init>(Laoc/kingdoms/lukasz/menus/MainMenu$12;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    return-void
.end method
