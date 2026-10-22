.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$16;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Religion;
.source "InGame_ProvinceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;Ljava/lang/String;IIIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$16;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Religion;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$16;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$16;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$16;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->religionConversion:Laoc/kingdoms/lukasz/map/province/ProvinceInvest;

    if-nez v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->iProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    if-nez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->iProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$16;->iProvinceID:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ConvertReligion()V

    :cond_1
    :goto_0
    return-void
.end method

.method public actionElementPPM()V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame_MapModes;->actionReligion()V

    return-void
.end method

.method public buildElementHover()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$16;->iProvinceID:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverReligion(IZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$16;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public setIsHovered(Z)V
    .locals 1

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Religion;->setIsHovered(Z)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->PROVINCE_INFO_HOVER_RELIGION:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p1, p1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_RELIGION_HOVER:I

    if-ne p1, v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_0
    return-void
.end method

.method public updateHovered()V
    .locals 4

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Religion;->updateHovered()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->PROVINCE_INFO_HOVER_RELIGION:Z

    if-eqz v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/menu/HoverManager;->hoverTime:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->mapModes:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;

    iget-wide v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MapModes;->HOVER_TIME:J

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$16;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_PROVINCE_RELIGION_HOVER:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_0
    return-void
.end method
