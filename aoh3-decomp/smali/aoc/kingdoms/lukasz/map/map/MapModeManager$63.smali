.class Laoc/kingdoms/lukasz/map/map/MapModeManager$63;
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$63;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .locals 0

    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateRightMenu()V

    return-void
.end method

.method public enableViewAction()V
    .locals 4

    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$63;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateMaxTax()V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getTaxEfficiencyWithBonuses()F

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$63;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->TAX_MAX:F

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/menu/Colors;->getProvinceTaxColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_RightTaxEfficiency()V

    return-void
.end method
