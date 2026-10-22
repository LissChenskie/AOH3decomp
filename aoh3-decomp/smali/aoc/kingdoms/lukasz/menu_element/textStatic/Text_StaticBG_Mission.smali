.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;
.source "Text_StaticBG_Mission.java"


# instance fields
.field public eventType:I

.field public missionImage:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 11

    move-object v9, p0

    move/from16 v10, p9

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

    move/from16 v0, p7

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    iput v10, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->missionImage:I

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .locals 20

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    const-string v6, ""

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getText()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v9, 0x0

    sget-object v9, Lcom/google/android/gms/common/internal/constants/oyIG/kfGnwGN;->blrtZfK:Ljava/lang/String;

    invoke-virtual {v4, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v5, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->mission_desc:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->mission_desc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    :try_start_0
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "and"

    const-string v10, "orNot"

    const-string v11, "or"

    const/4 v12, 0x0

    sget-object v12, Lcom/badlogic/gdx/assets/loaders/Wkvw/nEtnPpUF;->NYtVW:Ljava/lang/String;

    const-string v13, ")"

    const-string v14, " ("

    const-string v15, ""

    const-string v5, "- "

    if-ge v6, v8, :cond_11

    const/4 v8, 0x0

    :goto_1
    :try_start_1
    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move-object/from16 v17, v10

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v4, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v8, v4, :cond_4

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v4, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :cond_1
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v18, v7

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move-object/from16 v19, v12

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v7, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v7, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v7, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v4, v7, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v7, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v7, v18

    goto :goto_2

    :cond_3
    move-object/from16 v19, v12

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, v17

    move-object/from16 v12, v19

    goto/16 :goto_1

    :cond_4
    move-object/from16 v19, v12

    const/4 v4, 0x0

    :goto_3
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :cond_5
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v12, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v12}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    if-lez v8, :cond_6

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v8, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_4
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_c

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    :cond_9
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    if-lez v8, :cond_a

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v12, v19

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v8, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_5

    :cond_b
    move-object/from16 v12, v19

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v19, v12

    goto/16 :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_6
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_10

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_f

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    :cond_d
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    if-lez v8, :cond_e

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v17

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v8, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_7

    :cond_f
    move-object/from16 v11, v17

    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v11

    goto/16 :goto_6

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_11
    move-object v4, v10

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_8
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_22

    move v8, v7

    const/4 v7, 0x0

    :goto_9
    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move-object/from16 v17, v4

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v4}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_15

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v4, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_14

    if-eqz v8, :cond_12

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v11

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v8, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    goto :goto_a

    :cond_12
    move-object/from16 v18, v11

    :goto_a
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move/from16 v19, v8

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v4, v8, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v8, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v8, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v4, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v4

    if-lez v4, :cond_13

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x0

    invoke-direct {v4, v8, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v8, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v8, v19

    goto :goto_b

    :cond_14
    move-object/from16 v18, v11

    :goto_b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v17

    move-object/from16 v11, v18

    goto/16 :goto_9

    :cond_15
    move-object/from16 v18, v11

    const/4 v4, 0x0

    :goto_c
    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_19

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_18

    if-eqz v8, :cond_16

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    :cond_16
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move/from16 v19, v8

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v11, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v7, v8, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v11, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v10, v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    if-lez v7, :cond_17

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v11, 0x0

    invoke-direct {v7, v8, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v11, v18

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v9

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v10, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v8, v19

    goto :goto_d

    :cond_18
    move-object/from16 v11, v18

    move-object/from16 v18, v9

    :goto_d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, v18

    move-object/from16 v18, v11

    goto/16 :goto_c

    :cond_19
    move-object/from16 v11, v18

    move-object/from16 v18, v9

    const/4 v4, 0x0

    :goto_e
    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_1d

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1c

    if-eqz v8, :cond_1a

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    :cond_1a
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move/from16 v19, v8

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    if-lez v7, :cond_1b

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v8, v19

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :cond_1d
    move v7, v8

    const/4 v4, 0x0

    :goto_f
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_21

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_20

    if-eqz v7, :cond_1e

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v7, 0x0

    :cond_1e
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move/from16 v19, v7

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v7, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    if-lez v7, :cond_1f

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v17

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v17, v10

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v7, v19

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    :cond_21
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v17

    move-object/from16 v9, v18

    goto/16 :goto_8

    :cond_22
    move-object/from16 v17, v4

    move-object/from16 v18, v9

    const/4 v4, 0x0

    const/4 v6, 0x1

    :goto_10
    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_33

    move v7, v6

    const/4 v6, 0x0

    :goto_11
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_26

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_25

    if-eqz v7, :cond_23

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v7, 0x0

    :cond_23
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move/from16 v19, v7

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v7, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    if-lez v7, :cond_24

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v18

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v10

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v7, v19

    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_11

    :cond_26
    const/4 v6, 0x0

    :goto_12
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2a

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_29

    if-eqz v7, :cond_27

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v7, 0x0

    :cond_27
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move/from16 v19, v7

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v7, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    if-lez v7, :cond_28

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v7, v19

    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_12

    :cond_2a
    const/4 v6, 0x0

    :goto_13
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2e

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2d

    if-eqz v7, :cond_2b

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v7, 0x0

    :cond_2b
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move/from16 v19, v7

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v7, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    if-lez v7, :cond_2c

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v7, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v7, v19

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_13

    :cond_2e
    move v6, v7

    const/4 v7, 0x0

    :goto_14
    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_32

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_31

    if-eqz v6, :cond_2f

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v9, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v6, 0x0

    :cond_2f
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    move/from16 v19, v6

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v10, v6}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v8, v6, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v10, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v9, v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v6

    if-lez v6, :cond_30

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x0

    invoke-direct {v6, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v10, v17

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v17, v12

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v8, v9, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move/from16 v6, v19

    goto :goto_15

    :cond_31
    move-object/from16 v10, v17

    move-object/from16 v17, v12

    :goto_15
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v12, v17

    move-object/from16 v17, v10

    goto/16 :goto_14

    :cond_32
    move-object/from16 v10, v17

    move-object/from16 v17, v12

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v10

    goto/16 :goto_10

    :cond_33
    move-object/from16 v10, v17

    move-object/from16 v17, v12

    const/4 v12, 0x0

    const/16 v16, 0x1

    :goto_16
    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v4, v6}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_44

    const/4 v4, 0x0

    :goto_17
    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_37

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_36

    if-eqz v16, :cond_34

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/16 v16, 0x0

    :cond_34
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v6, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v6

    if-lez v6, :cond_35

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAnd:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v9, v18

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v18, v9

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_17

    :cond_37
    const/4 v4, 0x0

    :goto_18
    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3b

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3a

    if-eqz v16, :cond_38

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/16 v16, 0x0

    :cond_38
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v6, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v6

    if-lez v6, :cond_39

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOr:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_18

    :cond_3b
    const/4 v4, 0x0

    :goto_19
    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3f

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3e

    if-eqz v16, :cond_3c

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/16 v16, 0x0

    :cond_3c
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v6, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v6

    if-lez v6, :cond_3d

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersAndNot:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v9, v17

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    move-object/from16 v19, v9

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1a

    :cond_3e
    move-object/from16 v19, v17

    :goto_1a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v19

    goto/16 :goto_19

    :cond_3f
    move-object/from16 v19, v17

    const/4 v4, 0x0

    :goto_1b
    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_43

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_42

    if-eqz v16, :cond_40

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/16 v16, 0x0

    :cond_40
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v6, v7, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText2()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v9, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v8, v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getText3()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v6, v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v6

    if-lez v6, :cond_41

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    iget v7, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->id:I

    iget v8, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/events/EventsManager;->getActiveEvent(II)Laoc/kingdoms/lukasz/events/Event;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/Event;->triggersOrNot:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;

    iget-object v7, v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger;->triggersOrNot:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;->getImage()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_41
    const/4 v9, 0x0

    :goto_1c
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v7, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    :cond_43
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v17, v19

    goto/16 :goto_16

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_44
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 14

    move-object v1, p0

    move-object v10, p1

    move/from16 v11, p4

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getIsHovered()Z

    move-result v5

    const v9, 0x3eb33333    # 0.35f

    if-nez v5, :cond_1

    if-eqz v11, :cond_0

    goto :goto_0

    :cond_0
    move v5, v9

    goto :goto_1

    :cond_1
    :goto_0
    const v5, 0x3f266666    # 0.65f

    :goto_1
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v8, 0x3e99999a    # 0.3f

    invoke-direct {v0, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v12, 0x0

    const/high16 v13, 0x3e800000    # 0.25f

    invoke-direct {v0, v12, v12, v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v0, 0x2

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :try_start_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    iget v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->missionImage:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->missionImages:Ljava/util/List;

    iget v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->missionImage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v3

    add-int v3, v3, p3

    invoke-virtual {v0, p1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v12, v12, v12, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f59999a    # 0.85f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x2

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v6

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v3, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->fontID:I

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->sText:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result v0

    iget-object v2, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;

    invoke-interface {v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;->getTextPosition()I

    move-result v2

    add-int/2addr v0, v2

    add-int v5, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v6, v0, p3

    invoke-virtual {p0, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 10

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    sget-object p5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {p4, p5, v0, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosX()I

    move-result p4

    add-int v5, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getPosY()I

    move-result p2

    add-int v6, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getHeight()I

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats4(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getValue1()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission;->eventType:I

    return v0
.end method
