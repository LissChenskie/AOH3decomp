.class public Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;
.super Ljava/lang/Object;
.source "ProvinceBorderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;,
        Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;
    }
.end annotation


# static fields
.field public static WAR_COLOR_STEP:I

.field public static WAR_COLOR_TIME:J

.field public static action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

.field public static drawBorder:Z

.field public static drawInnerBorder:Z

.field public static iLineOffset:I

.field public static iLineOffsetInterval:I

.field public static lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesLandBySea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;",
            ">;"
        }
    .end annotation
.end field

.field public static lProvincesSeaBySea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;",
            ">;"
        }
    .end annotation
.end field

.field public static lTimeLine:J

.field public static warColorMovingBack:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesSeaBySea:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->iLineOffset:I

    const/16 v1, 0x4b

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->iLineOffsetInterval:I

    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->drawInnerBorder:Z

    sput-boolean v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->drawBorder:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_TIME:J

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->warColorMovingBack:Z

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearProvinceBorder()V
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iWithProvinceID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iWithProvinceID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iWithProvinceID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iWithProvinceID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesLandBySea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesSeaBySea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesSeaBySea:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesSeaBySea:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iWithProvinceID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    iput-boolean v1, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->isLocked:Z

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesSeaBySea:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesSeaBySea:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iWithProvinceID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesSeaBySea:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;->iProvinceID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvincesSeaBySea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static final update()V
    .locals 4

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateWarColor()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->drawInnerBorder:Z

    if-nez v0, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateProvinceBorder()V

    sput-boolean v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->drawInnerBorder:Z

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x0

    if-gez v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->drawInnerBorder:Z

    if-eqz v0, :cond_1

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateProvinceBorder()V

    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->drawInnerBorder:Z

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->DRAW_BORDERS:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->drawBorder:Z

    if-nez v0, :cond_2

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateProvinceBorder()V

    sput-boolean v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->drawBorder:Z

    goto :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->value:Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince$ValuesProvinceBorder;->DRAW_BORDERS:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->drawBorder:Z

    if-eqz v0, :cond_3

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateProvinceBorder()V

    sput-boolean v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->drawBorder:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static final updateAction()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    goto :goto_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInNewGame()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    goto :goto_1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGameLost()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$4;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    goto :goto_1

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGameMenu()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInInitGame_Menus()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInLoadScenario()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$6;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$6;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$5;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$5;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->action:Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$Action;

    :goto_1
    return-void
.end method

.method public static final updateDrawProvinceBorder_ImprovingRelations()V
    .locals 9

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->clearProvinceBorder()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v0, v0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iImprovingRelationsSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->improvingRelations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    if-lez v2, :cond_3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_3

    move v3, v1

    :goto_1
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_3

    move v4, v1

    :goto_2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    if-eq v5, v6, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_RelationUp()V

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_RelationUp()V

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-lez v0, :cond_8

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_8

    move v2, v1

    :goto_4
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_8

    move v3, v1

    :goto_5
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-eq v4, v5, :cond_6

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveCivilizationBorder()V

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveCivilizationBorder()V

    sget-object v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_8
    return-void
.end method

.method public static final updateDrawProvinceBorder_SelectCiv_ByCivID(I)V
    .locals 7

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->clearProvinceBorder()V

    if-lez p0, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveCivilizationBorder()V

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveCivilizationBorder()V

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static final updateDrawProvinceBorder_SelectCiv_ByProvinceID(I)V
    .locals 7

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->clearProvinceBorder()V

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveCivilizationBorder()V

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveCivilizationBorder()V

    sget-object v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->lProvinces:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager$PBData;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public static final updateProvinceBorder()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_8

    move v2, v0

    :goto_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto/16 :goto_4

    :cond_0
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto/16 :goto_4

    :cond_2
    :goto_2
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto/16 :goto_4

    :cond_3
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto :goto_4

    :cond_4
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto :goto_4

    :cond_6
    :goto_3
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static final updateProvinceBorder(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    if-ge p0, v1, :cond_3

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto/16 :goto_3

    :cond_0
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto/16 :goto_3

    :cond_2
    :goto_1
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-virtual {v1, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersSeaBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto :goto_3

    :cond_4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandByLand(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceBordersLandBySea(I)Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static final updateWarColor()V
    .locals 10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->ENABLE_WAR_BORDER:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->warColorMovingBack:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x64

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    int-to-long v4, v0

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v8, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_TIME:J

    sub-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v4, v2

    long-to-int v0, v4

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    if-gez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_TIME:J

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR2:Lcom/badlogic/gdx/graphics/Color;

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->WAR_COLOR_TIME_ANIMATION:I

    invoke-static {v0, v2, v3, v4, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_TIME:J

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->WAR_COLOR_TIME_ANIMATION:I

    if-lt v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->WAR_COLOR_TIME_PAUSE2:I

    neg-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->warColorMovingBack:Z

    goto :goto_0

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    int-to-long v4, v0

    sget-wide v6, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v8, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_TIME:J

    sub-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-long/2addr v4, v2

    long-to-int v0, v4

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    if-gez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR2:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_TIME:J

    goto :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR2:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR:Lcom/badlogic/gdx/graphics/Color;

    sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->WAR_COLOR_TIME_ANIMATION:I

    invoke-static {v0, v2, v3, v4, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getColorStep(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;IIF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_STRAIGHT_WAR_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_TIME:J

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->WAR_COLOR_TIME_ANIMATION:I

    if-lt v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->provinceBorderWar:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_ProvinceBorderWar;->WAR_COLOR_TIME_PAUSE:I

    neg-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->WAR_COLOR_STEP:I

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->warColorMovingBack:Z

    :cond_3
    :goto_0
    return-void
.end method
