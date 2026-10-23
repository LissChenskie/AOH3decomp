.class public Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_HideUI.java"


# static fields
.field public static addDate:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;->addDate:Z

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$1;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsHeight:I

    invoke-direct {v0, p0, v1, v2, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;Ljava/lang/String;II)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$2;

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v11, v1, 0x4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v12, v1, 0x4

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method
