.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfoBuildings$4;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBuildingProvince;
.source "InGame_ProvinceInfoBuildings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfoBuildings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfoBuildings;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfoBuildings;IIIIZ)V
    .locals 6

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfoBuildings$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfoBuildings;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuildingProvince;-><init>(IIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Buildings()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Buildings(ZZ)V

    goto :goto_1

    :cond_1
    :goto_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->iProvinceID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;->iProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Buildings(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public buildElementHover()V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfoBuildings$4;->building:I

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfoBuildings$4;->buildingID:I

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfoBuildings$4;->underConstruction:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuildingProvince;->getHoverBuilding(IIZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfoBuildings$4;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method
