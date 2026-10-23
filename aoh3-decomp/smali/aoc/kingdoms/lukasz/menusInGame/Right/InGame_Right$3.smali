.class Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;
.source "InGame_Right.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;IIIIIIIII)V
    .locals 12

    move-object v11, p0

    move-object v0, p1

    iput-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;-><init>(Ljava/lang/String;IIIIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Event()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;->getCurrent()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Event(Z)V

    return-void

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;->getCurrent()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;->getValue1()I

    move-result v2

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;->getValue1()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;->getCurrent()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Event(Laoc/kingdoms/lukasz/events/Event;II)V

    return-void
.end method

.method public getSFX()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Event()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$3;->getCurrent()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getSFX()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->EVENT:I

    :goto_0
    return v0
.end method
