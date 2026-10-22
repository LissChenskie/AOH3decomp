.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$8;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;
.source "InGame_ProvinceArmyTopBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;III)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;-><init>(III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 6

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-ge v3, v4, :cond_1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ne v4, v5, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I

    if-ne v4, v5, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->mergeUnits(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v3, v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveArmy(ILjava/lang/String;)V

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy()V

    goto :goto_1

    :cond_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    :goto_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Generals()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->lTime:J

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Armies(ZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Armies(Z)V

    sput-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->lTime:J

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ReorganizeUnits()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ReorganizeUnits(Z)V

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_DisbandArmy()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_DisbandUnits(Z)V

    :cond_6
    return-void
.end method

.method public buildElementHover()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "MergeUnits"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_MERGE:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;Z)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmyTopBar$8;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public getClickable()Z
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyIcon;->getClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getImageID()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_MERGE:I

    return v0
.end method
