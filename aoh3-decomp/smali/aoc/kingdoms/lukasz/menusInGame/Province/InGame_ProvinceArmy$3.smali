.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;
.source "InGame_ProvinceArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_ProvinceArmy(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_GeneralRecruit()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_GeneralRecruit(Z)V

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$3;->iProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->iProvinceID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Siege()V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V

    return-void
.end method

.method public buildElementHover()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$3;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceSiege;->getHoverSiege(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$3;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateInAnimation()V

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Siege;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method public getSFX()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SIEGE:I

    return v0
.end method

.method public getVisible()Z
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->besiegesProvince:Z

    return v0
.end method
