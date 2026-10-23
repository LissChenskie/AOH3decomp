.class Laoc/kingdoms/lukasz/map/map/MapModeManager$126;
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$126;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->lTime:J

    return-void
.end method

.method public enableViewAction()V
    .locals 5

    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$126;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$126;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$126;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    iput v4, v3, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$126;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v3, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    const v4, 0x3f733333    # 0.95f

    mul-float/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    :goto_2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceValue:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$126;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->PROVINCE_MANPOWER_MAX:F

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/menu/Colors;->getProvinceProvinceValueColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/map/province/Province;->provinceColor:Lcom/badlogic/gdx/graphics/Color;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
