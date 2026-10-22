.class public Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;,
        Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;
    }
.end annotation


# instance fields
.field public iTurnID:I

.field public id:I

.field public imageID:I

.field public key:Ljava/lang/String;

.field public lTime:J

.field public notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

.field public notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

.field public sText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->init(Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->init(Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    iput p6, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->init(Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    iput-object p6, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->init(Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    iput-object p6, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->key:Ljava/lang/String;

    iput p7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    return-void
.end method


# virtual methods
.method public buildMenuElementHover()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_IMPROVING:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_0

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ImprovingRelations"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->relationsUp:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_DAMAGING:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_1

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "DamagingRelations"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->relationsDown:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->HIGH_UNREST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverUnrest(IZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->PRICE_CHANGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_3

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    const-string v6, ""

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Price"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v5

    const/16 v6, 0x64

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NO_LONGER_LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    const-string v6, ""

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_5
    :goto_0
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    const-string v5, ""

    iget v6, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_COMPLETED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_6

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ARMY_DESTROYED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_7

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_ARMY_DESTROYED_ROUND_ID:I

    const-string v5, "DestructionOrSurvival0"

    invoke-virtual {v3, v5, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_7
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->time:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public init(Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    iput-object p4, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-wide p1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    return-void
.end method

.method public onAction()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$1;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type:[I

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    if-ltz v0, :cond_0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iRebuildToCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eqz v2, :cond_0

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eq v2, v3, :cond_0

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    goto :goto_0

    :pswitch_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionSetActiveProvinceID()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_BattleReport(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
