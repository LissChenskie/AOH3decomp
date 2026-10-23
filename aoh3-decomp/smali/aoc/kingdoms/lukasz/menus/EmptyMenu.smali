.class public Laoc/kingdoms/lukasz/menus/EmptyMenu;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EmptyMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    const/4 v1, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v8, v8, v1, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menus/EmptyMenu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menus/EmptyMenu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V

    return-void
.end method
