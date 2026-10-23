.class Laoc/kingdoms/lukasz/map/map/MapModeManager$45;
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$45;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawArmyInProvince:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Peace()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Peace(Z)V

    :cond_0
    return-void
.end method

.method public enableViewAction()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces_Standard()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$45;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updatePeaceView(Ljava/lang/String;)V

    return-void
.end method
