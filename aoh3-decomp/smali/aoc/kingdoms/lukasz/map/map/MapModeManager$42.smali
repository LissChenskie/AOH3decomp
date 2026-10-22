.class Laoc/kingdoms/lukasz/map/map/MapModeManager$42;
.super Laoc/kingdoms/lukasz/map/map/MapMode;
.source "MapModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapModeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$42;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->clearBiggestCities()V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_War()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    :cond_1
    return-void
.end method

.method public enableViewAction()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces_Standard()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$42;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateWarView(Ljava/lang/String;)V

    return-void
.end method
