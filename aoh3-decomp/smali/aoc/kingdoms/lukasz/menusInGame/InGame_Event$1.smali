.class Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Value;
.source "InGame_Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Event;-><init>(Laoc/kingdoms/lukasz/events/Event;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Event;Ljava/lang/String;IIIIIZI)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Value;-><init>(Ljava/lang/String;IIIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->removeActiveEvent(II)V

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v2

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->takeMissionDecision(III)V

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v2

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->takeMissionDecision_Civ(III)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation()V

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/events/EventsManager;->takeEventDecision(IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation()V

    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Event(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->EVENT_RES:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    return-void
.end method

.method public buildElementHover()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getText()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringLeft()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringLeft()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringRight()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringRight()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getImage()I

    move-result v4

    if-ltz v4, :cond_2

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getImage()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget-object v7, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    iget-object v8, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/EventOption;

    iget v8, v8, Laoc/kingdoms/lukasz/events/EventOption;->bonus_duration:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringRight2(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->bonus_duration:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringRight2(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    iget-object v6, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->getCurrent()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/EventOption;

    iget v6, v6, Laoc/kingdoms/lukasz/events/EventOption;->bonus_duration:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getStringRight2(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    move v2, v4

    :cond_6
    invoke-direct {v1, v0, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;Z)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method
