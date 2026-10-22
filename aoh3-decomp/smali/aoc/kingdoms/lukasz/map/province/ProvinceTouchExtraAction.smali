.class public Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;
.super Ljava/lang/Object;
.source "ProvinceTouchExtraAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;
    }
.end annotation


# static fields
.field public static actionDown_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

.field public static actionMove_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

.field public static actionUp_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

.field public static actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final actionBuilding(I)V
    .locals 9

    :try_start_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPuppetOfCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_9

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1770

    const/4 v3, 0x0

    const-string v4, ": "

    if-lt v0, v1, :cond_1

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "BuildingSlots"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getUsedBuildingsSlots()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    iget p0, p0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsLimit:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, p0, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->build:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {p0, v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "IncreaseEconomyInAProvinceToUnlockMoreBuildingSlots"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {p0, v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Toast;

    invoke-direct {v1, v0, v3, v2}, Laoc/kingdoms/lukasz/menu_element/Toast;-><init>(Ljava/util/List;II)V

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Laoc/kingdoms/lukasz/menu_element/Toast;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "OccupiedProvince"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->war:I

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "BuildingConstructed"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->build:I

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Laoc/kingdoms/lukasz/map/province/Province;->isUnderConstruction(II)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "UnderConstruction"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->build:I

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->SeaAccessRequired:Z

    if-eqz v0, :cond_5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v0

    if-gez v0, :cond_5

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "NoAccessToTheSea"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->ship:I

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v1

    if-eq v0, v1, :cond_6

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Government"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->government:I

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz v0, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    if-eq v0, v1, :cond_7

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Religion"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v1

    if-eq v0, v1, :cond_8

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "RequiredResource"

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v1, v4, v5, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Toast;

    invoke-direct {v1, p0, v3, v2}, Laoc/kingdoms/lukasz/menu_element/Toast;-><init>(Ljava/util/List;II)V

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Laoc/kingdoms/lukasz/menu_element/Toast;)V

    goto :goto_0

    :cond_8
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->addBuildingConstruction(II)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "InsufficientGold"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    invoke-static {v2, p0, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result p0

    int-to-float p0, p0

    const/16 v2, 0x64

    invoke-static {p0, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object p0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public static actionPeaceView(IZ)V
    .locals 1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsToTake:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->isProvinceTaken(I)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->takeProvince(I)V

    goto :goto_0

    :cond_0
    sget-boolean p1, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    if-eqz p1, :cond_2

    sget-boolean p1, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->brushModeDemand:Z

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->isProvinceTaken(I)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->takeProvince(I)V

    goto :goto_0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->isProvinceTaken(I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->takeProvince(I)V

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {p1, p0}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->takeProvince(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static actionReleaseVassal(IZ)V
    .locals 2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-object p1, p1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->removeProvince(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    const/4 p1, 0x0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->addProvince(I)V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p0

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/map/province/Province;->peaceTreatyIsTaken:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static actionSetActiveProvinceID()V
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->hideCourtCiv()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Buildings(ZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyChoose()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyChoose(Z)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleDeclareWar()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisible_SpecialAlliance()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleFormCiv()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleSellProvince()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleRevolutions()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    :cond_5
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CurrentSituation()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CurrentSituation(Z)V

    :cond_6
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Nukes()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Nukes(Z)V

    :cond_7
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_GoodsMarket()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_GoodsMarket(Z)V

    :cond_8
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-interface {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;->setProvinceID(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceInfo(Z)V

    return-void
.end method

.method public static final actionUp_SetActiveArmy()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iCivFlagID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iProvinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->sActiveKEY:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSelectedArmy()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceArmy_HideMenus()V

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final updateActionDown_ExtraAction()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionDown_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void
.end method

.method private static final updateActionMove_ExtraAction()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionMove_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void
.end method

.method private static final updateActionUp_ExtraAction()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void
.end method

.method private static final updateActionUp_SetActiveProvinceID_ExtraAction()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-ne v0, v1, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_2

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$6;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$6;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_3

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$7;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$7;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WARS:I

    if-ne v0, v1, :cond_4

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$8;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$8;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MERCENARIES_CHOOSE_PROVINCE:I

    if-ne v0, v1, :cond_5

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$9;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$9;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PEACE_VIEW:I

    if-ne v0, v1, :cond_6

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$10;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$10;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELEASE_VASSAL:I

    if-ne v0, v1, :cond_7

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$11;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$11;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v0, v1, :cond_8

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$12;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$12;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-ne v0, v1, :cond_9

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$13;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$13;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-ne v0, v1, :cond_a

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$14;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$14;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    if-ne v0, v1, :cond_b

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$15;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$15;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto/16 :goto_0

    :cond_b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-ne v0, v1, :cond_c

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$16;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$16;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto :goto_0

    :cond_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-ne v0, v1, :cond_d

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$17;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$17;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto :goto_0

    :cond_d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    if-ne v0, v1, :cond_e

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$18;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$18;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto :goto_0

    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-ne v0, v1, :cond_f

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$19;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$19;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto :goto_0

    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-ne v0, v1, :cond_10

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$20;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$20;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto :goto_0

    :cond_10
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_WONDERS:I

    if-ne v0, v1, :cond_11

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$21;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$21;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    goto :goto_0

    :cond_11
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$22;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$22;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    :goto_0
    return-void

    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$23;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$23;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_13
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorGrowthRate()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$24;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$24;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_14
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorEconomy()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$25;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$25;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorTerrain()Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$26;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$26;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_16
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorTechnologiesCivs()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$27;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$27;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorArmies()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$28;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$28;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_18
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorGovernment()Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$29;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$29;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorRelations()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$30;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$30;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_1a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorResource()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$31;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$31;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_1b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorContinents()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$32;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$32;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_1c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInEditorSelectProvinces()Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$33;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$33;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_1d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioCores()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$34;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$34;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_1e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioReligion()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$35;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$35;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_1f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioEditorBuildings()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$36;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$36;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_20
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInEditorFormableCiv()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$37;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$37;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_21
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorGeoRegions()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$38;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$38;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_22
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInMapEditorOptimizationRegions()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$39;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$39;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_23
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioWasteland()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$40;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$40;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_24
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioAssign()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$41;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$41;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_25
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioAssignInGame()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$42;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$42;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_26
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInScenarioCivilizations()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$43;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$43;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void

    :cond_27
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$44;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$44;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveProvinceID_ExtraAction:Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction$ExtraAction;

    return-void
.end method

.method public static final updateExtraAction()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->updateActionDown_ExtraAction()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->updateActionMove_ExtraAction()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->updateActionUp_ExtraAction()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->updateActionUp_SetActiveProvinceID_ExtraAction()V

    return-void
.end method
